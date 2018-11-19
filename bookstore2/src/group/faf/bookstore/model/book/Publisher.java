package group.faf.bookstore.model.book;

public class Publisher {
	private int id;
	private String name;
	private String address;
	private License license;
	private String email;
	private String phone;

	public Publisher(int id, String name, String address, License license, String email, String phone) {
		this.id = id;
		this.name = name;
		this.address = address;
		this.license = license;
		this.email = email;
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public License getLicense() {
		return license;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	@Override
	public String toString() {
		return "Publisher{" +
				"id=" + id +
				", name='" + name + '\'' +
				", address='" + address + '\'' +
				", license=" + license +
				", email='" + email + '\'' +
				", phone='" + phone + '\'' +
				'}';
	}
}