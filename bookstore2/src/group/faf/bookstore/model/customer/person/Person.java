package group.faf.bookstore.model.customer.person;

public class Person {
	private Account account;
	public FullName fullName;
	public Address address;

	public Person(Account account, FullName fullName, Address address) {
		this.account = account;
		this.fullName = fullName;
		this.address = address;
	}

	public Account getAccount() {
		return account;
	}

	public FullName getFullName() {
		return fullName;
	}

	public Address getAddress() {
		return address;
	}

	@Override
	public String toString() {
		return "Person{" +
				"account=" + account +
				", fullName=" + fullName +
				", address=" + address +
				'}';
	}
}