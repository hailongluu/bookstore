package group.faf.bookstore.model.book;

import group.faf.bookstore.model.common.TimeConvert;
import group.faf.bookstore.model.connection.DBconnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BookDAOImpl implements BookDAO {
    Connection connection;

    public BookDAOImpl() {
        DBconnection dBconnection = new DBconnection();
        try {
            this.connection = dBconnection.getConnect();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }


    @Override
    public void addBook(Book book) {
        try {
            String sql = "INSERT INTO `bookstoreweb`.`book` ( `Title`, `PublishDate`, `Price`, `NumberOfPages`, `Status`, `Category`, `Author`, `PublisherId`) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?);\n";
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, book.getTitle());
            pre.setString(2, TimeConvert.convertToString(book.getPublishDate()));
            pre.setFloat(3, book.getPrice());
            pre.setInt(4, book.getNumberOfPages());
            pre.setInt(5, 1);
            pre.setInt(6, 1);
            pre.setString(7, book.getAuthor());
            pre.setInt(8, book.getPublisher().getId());
            pre.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Book> getListBook() {
        ArrayList<Book> listBook = new ArrayList<>();
        try {
        String sql = "SELECT * FROM book;";
        PreparedStatement pre = connection.prepareStatement(sql);
        ResultSet rs = pre.executeQuery();
        while (rs.next()){
            Date date = TimeConvert.converToDate(rs.getString(3));
            Publisher publisher = getPublisher(rs.getInt(9));
            Category category = getCategory(rs.getInt(7));
            Book book = new Book(rs.getInt(1),rs.getString(2),publisher,date,rs.getFloat(4)
            ,rs.getInt(5),true,category,rs.getString(8),null,rs.getString(10));
            listBook.add(book);
        }
        return listBook;
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Book> getAllBook() {
        return null;
    }


    public List<Book> getListBookByName(String name){
        ArrayList<Book> listBook = new ArrayList<>();
        try {
            String sql = "SELECT * FROM book WHERE Title like ?";
            PreparedStatement pre = connection.prepareStatement(sql);
            StringBuilder sb = new StringBuilder("%").append(name).append("%");
            pre.setString(1,sb.toString());
            ResultSet rs = pre.executeQuery();
            while (rs.next()){
                Date date = TimeConvert.converToDate(rs.getString(3));
                Publisher publisher = getPublisher(rs.getInt(9));
                Category category = getCategory(rs.getInt(7));
                Book book = new Book(rs.getInt(1),rs.getString(2),publisher,date,rs.getFloat(4)
                        ,rs.getInt(5),true,category,rs.getString(8),null,rs.getString(10));
                listBook.add(book);
            }
            return listBook;
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
    @Override
    public void updateBook(Book book, Book newBook) {

    }

    @Override
    public void deleteBook(Book book) {

    }

    private Category getCategory(int id) throws SQLException {
        String sql = "SELECT * FROM category WHERE Id = ?";
        PreparedStatement pre = connection.prepareStatement(sql);
        pre.setInt(1, id);
        ResultSet rs = pre.executeQuery();
        Category category = null;
        while (rs.next()) {
            category = new Category(rs.getInt(1), rs.getString(2), rs.getString(3));
        }
        return category;
    }

    private Publisher getPublisher(int id) throws SQLException {
        String sql = "SELECT * FROM publisher WHERE Id = ?";
        PreparedStatement pre = connection.prepareStatement(sql);
        pre.setInt(1, id);
        ResultSet rs = pre.executeQuery();
        Publisher publisher = null;
        while (rs.next()) {
            publisher = new Publisher(rs.getInt(1), rs.getString(2), rs.getString(3), null, rs.getString(5), rs.getString(6));
        }
        return publisher;
    }

}