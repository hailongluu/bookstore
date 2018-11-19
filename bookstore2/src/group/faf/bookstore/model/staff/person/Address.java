package group.faf.bookstore.model.staff.person;

public class Address {
	private int id;
	private String street;
	private String number;
	public Country country;
	public City city;
	public District district;
	public Ward ward;

	public Address(int id, String street, String number, Country country, City city, District district, Ward ward) {
		this.id = id;
		this.street = street;
		this.number = number;
		this.country = country;
		this.city = city;
		this.district = district;
		this.ward = ward;
	}
}