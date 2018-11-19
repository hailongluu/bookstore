package group.faf.bookstore.model.book;

import java.util.Date;

public class TestBookDAO {
    static BookDAOImpl bookDAO = new BookDAOImpl();

    public static void main(String[] args) {
//        testAdd();
        testGetAllBook();
    }

    public static void testAdd() {

        Book book = new Book(1, "Dac nhan tam ", new Publisher(1, "Kimdong", "a", null, "", "")
                , new Date(System.currentTimeMillis()), new Float(100000), 120, true, null, "Kim Lan",
                null, "https://www.google.com.vn/search?q=dacnhantam&source=lnms&tbm=isch&sa=X&ved=0ahUKEwiqu7Wwm93eAhWEiLwKHeHJAKMQ_AUIDygC&biw=1366&bih=701#imgrc=RllbiTYsgOiqFM:");
        bookDAO.addBook(book);
    }
    public static void testGetAllBook(){
        System.out.println(bookDAO.getListBook());
    }
}
