package group.faf.bookstore.staff;

import group.faf.bookstore.staff.person.Account;
import group.faf.bookstore.staff.person.Address;
import group.faf.bookstore.staff.person.FullName;

public class Stocker extends Staff {
	private int id;

	public Stocker(Account account, FullName fullName, Address address, Double salary, int id) {
		super(account, fullName, address, salary);
		this.id = id;
	}
}