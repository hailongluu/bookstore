package group.faf.bookstore.model.book;


import java.util.List;

public interface BookDAO {


	void addBook( Book book);


	List<Book> getListBook();

	List<Book> getAllBook();


	void updateBook(Book book, Book newBook);


	void deleteBook(Book book);

}