package group.faf.bookstore.model.staff;

import group.faf.bookstore.model.staff.person.Account;
import group.faf.bookstore.model.staff.person.Address;
import group.faf.bookstore.model.staff.person.FullName;

public class Manager extends Staff {
	private int id;

	public Manager(Account account, FullName fullName, Address address, Double salary, int id) {
		super(account, fullName, address, salary);
		this.id = id;
	}

	public void viewStatistic() {
		throw new UnsupportedOperationException();
	}

	public void addStaff() {
		throw new UnsupportedOperationException();
	}

	public void addBook() {
		throw new UnsupportedOperationException();
	}
}