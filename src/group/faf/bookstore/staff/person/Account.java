package group.faf.bookstore.staff.person;

public class Account {
	private String username;
	private String password;
	private int id;
	public void editProfile() {
		throw new UnsupportedOperationException();
	}

	public Account(String username, String password) {
		this.username = username;
		this.password = password;
	}
}