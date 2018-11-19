package group.faf.bookstore.model.customer;

import group.faf.bookstore.model.customer.person.Account;
import group.faf.bookstore.model.customer.person.Address;
import group.faf.bookstore.model.customer.person.FullName;
import group.faf.bookstore.model.customer.person.Person;

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