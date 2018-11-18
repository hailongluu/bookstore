package group.faf.bookstore.staff;

import group.faf.bookstore.staff.person.Account;
import group.faf.bookstore.staff.person.Address;
import group.faf.bookstore.staff.person.FullName;

public class Shipper extends Staff {
	private int id;
	private String vehicle;

	public Shipper(Account account, FullName fullName, Address address, Double salary, int id, String vehicle) {
		super(account, fullName, address, salary);
		this.id = id;
		this.vehicle = vehicle;
	}
}