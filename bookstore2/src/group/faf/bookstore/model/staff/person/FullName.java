package group.faf.bookstore.model.staff.person;

public class FullName {
	private String firstName;
	private String middleName;
	private String lastName;

	public FullName(String firstName, String middleName, String lastName) {
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
	}
}