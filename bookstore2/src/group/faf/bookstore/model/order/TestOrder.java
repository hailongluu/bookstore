package group.faf.bookstore.model.order;

import group.faf.bookstore.model.book.Book;
import group.faf.bookstore.model.book.BookDAOImpl;
import group.faf.bookstore.model.customer.Customer;

import java.util.Date;
import java.util.List;

public class TestOrder {
    public static OrderDAOImpl orderDAO = new OrderDAOImpl();
    public static void main(String[] args) {
        addOrder();
    }
    public static void addOrder(){
        Customer customer = new Customer(null,null,null,1);
        List<Book> list = new BookDAOImpl().getListBook();
        Cart cart = new Cart(1,list,new Float(1000), new Date(System.currentTimeMillis()));
        PaymentMethod paymentMethod = new CoDPayment(1,1,1,new Float(111));
        Order order = new Order(1,new Date(System.currentTimeMillis()),cart,customer,"hn",paymentMethod,OrderStatus.Pending);
        orderDAO.addOrder(order);
    }
}
