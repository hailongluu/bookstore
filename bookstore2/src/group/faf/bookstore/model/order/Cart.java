package group.faf.bookstore.model.order;

import group.faf.bookstore.model.book.Book;

import java.util.Date;
import java.util.List;

public class Cart {
	private int id;
	private List<Book> books;
	private float totalPrice;
	private Date timeCreated;

	public Cart(int id, List<Book> books, float totalPrice, Date timeCreated) {
		this.id = id;
		this.books = books;
		this.totalPrice = totalPrice;
		this.timeCreated = timeCreated;
	}

	public int getId() {
		return id;
	}

	public List<Book> getBooks() {
		return books;
	}

	public float getTotalPrice() {
		float total=0;
		for (Book book : books) {
			total+=book.getPrice();
		}
		this.totalPrice = total;
		return totalPrice;
	}
	public void add(Book book){
		this.books.add(book);
	}

	public Date getTimeCreated() {
		return timeCreated;
	}
}