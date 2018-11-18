package group.faf.bookstore.customer;

import group.faf.bookstore.customer.person.Account;
import group.faf.bookstore.customer.person.Address;
import group.faf.bookstore.customer.person.FullName;
import group.faf.bookstore.customer.person.Person;

public class Customer extends Person {
	private int id;


	public Customer(Account account, FullName fullName, Address address, int id) {
		super(account, fullName, address);
		this.id = id;
	}

	public int getId() {
		return id;
	}



    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", fullName=" + fullName +
                ", address=" + address +
                '}';
    }
}