package group.faf.bookstore.model.staff;

import group.faf.bookstore.model.staff.person.Account;
import group.faf.bookstore.model.staff.person.Address;
import group.faf.bookstore.model.staff.person.FullName;
import group.faf.bookstore.model.staff.person.Person;

public class Staff extends Person {
	private Double salary;

	public Staff(Account account, FullName fullName, Address address, Double salary) {
		super(account, fullName, address);
		this.salary = salary;
	}

	public Double getSalary() {
		return this.salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}
}