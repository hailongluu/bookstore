package group.faf.bookstore.staff;

import group.faf.bookstore.book.Book;
import group.faf.bookstore.order.Order;
import group.faf.bookstore.staff.person.Account;
import group.faf.bookstore.staff.person.Address;
import group.faf.bookstore.staff.person.FullName;

public class Seller extends Staff {
	private int id;

	public Seller(Account account, FullName fullName, Address address, Double salary, int id) {
		super(account, fullName, address, salary);
		this.id = id;
	}

	public void search(Book b) {
		throw new UnsupportedOperationException();
	}

	public void confirmOder(Order order) {
		throw new UnsupportedOperationException();
	}

	public void cancelOrder(Order order) {
		throw new UnsupportedOperationException();
	}

	public void viewOrder(Order order) {
		throw new UnsupportedOperationException();
	}

	public void printOrder(Order order) {
		throw new UnsupportedOperationException();
	}
}