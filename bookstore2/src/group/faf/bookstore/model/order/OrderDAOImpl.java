package group.faf.bookstore.model.order;

import java.sql.ResultSet;
import group.faf.bookstore.model.book.Book;
import group.faf.bookstore.model.common.TimeConvert;
import group.faf.bookstore.model.connection.DBconnection;
import group.faf.bookstore.model.customer.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class OrderDAOImpl implements OrderDAO {

    private List<Order> listOrders;
    Connection connection;

    public OrderDAOImpl() {
        DBconnection dBconnection = new DBconnection();
        try {
            connection = dBconnection.getConnect();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Order getOrder() {
        return null;
    }

    @Override
    public Order getAllOrder() {


        return null;
    }

    @Override
    public List<Order> getListOrder(int OrderStatus) {
        return null;
    }

    @Override
    public int addOrder(Order order) {
        try {
            String sql="INSERT INTO `bookstoreweb`.`order` (`Status`, `CreateTime`, `PaymentMethodId`, `CustomerId`, `cartId`) VALUES (?, ?, ?, ?, ?);";
            PreparedStatement pre = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pre.setInt(1,1);
            pre.setString(2, TimeConvert.convertToString(order.getCreateTime()));
            pre.setInt(3,order.getPaymentMethod().getId());
            pre.setInt(4,order.getCustomer().getId());
            pre.setInt(5,order.getCart().getId());
            pre.executeUpdate();
            ResultSet rs= pre.getGeneratedKeys();
            int orderId = 0;
            while (rs.next()){
                orderId = rs.getInt(1);
            }
            addCart(order.getCart(),orderId);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
    private void addCart(Cart cart,int orderId) throws SQLException {
        String sql2 = "INSERT INTO `bookstoreweb`.`cart` (`TimeCreated`, `OrderID`) VALUES (?,?);";
        PreparedStatement preCart = connection.prepareStatement(sql2,Statement.RETURN_GENERATED_KEYS);
        preCart.setString(1,TimeConvert.convertToString(cart.getTimeCreated()));
        preCart.setInt(2,orderId);
        preCart.executeUpdate();
        ResultSet rs = preCart.getGeneratedKeys();
        int idCard=0;
        while (rs.next()){
            idCard = rs.getInt(1);
        };
        String sql ="INSERT INTO bookcart (`BookId`, `CartId`) VALUES";
        StringBuilder sb = new StringBuilder(sql);
        for (Book book : cart.getBooks()) {
            sb.append("(").append(book.getId()).append(",").append(idCard).append("),");
        }
        sb.deleteCharAt(sb.length()-1);

        PreparedStatement pre =connection.prepareStatement(sb.toString());
        pre.executeUpdate();
    }

    @Override
    public int updateOrder(int id, int status) {
        try {
            String sql = "UPDATE `bookstoreweb`.`order` SET `Status`=? WHERE `ID`=?";
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1,status);
            pre.setInt(2,id);
            pre.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<Order> getListOrderOfCustomer(Customer customer) {
        return null;
    }

}