package group.faf.bookstore.book;

import java.util.Date;

public class TestBookDAO {
    static BookDAOImpl bookDAO = new BookDAOImpl();

    public static void main(String[] args) {
        testAdd();
//        testGetAllBook();
    }

    public static void testAdd() {

        Book book = new Book(1, "van hoc", new Publisher(1, "Kimdong", "a", null, "", "")
                , new Date(System.currentTimeMillis()), new Float(100000), 120, true, null, "Kim Lan",
                null);
        bookDAO.addBook(book);
    }
    public static void testGetAllBook(){
        System.out.println(bookDAO.getListBookByName("ho"));
    }
}
