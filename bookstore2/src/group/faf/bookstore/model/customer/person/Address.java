package group.faf.bookstore.model.customer.person;

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

	public int getId() {
		return id;
	}

	public String getStreet() {
		return street;
	}

	public String getNumber() {
		return number;
	}

	public Country getCountry() {
		return country;
	}

	public City getCity() {
		return city;
	}

	public District getDistrict() {
		return district;
	}

	public Ward getWard() {
		return ward;
	}

	@Override
	public String toString() {
		return "Address{" +
				"id=" + id +
				", street='" + street + '\'' +
				", number='" + number + '\'' +
				", country=" + country +
				", city=" + city +
				", district=" + district +
				", ward=" + ward +
				'}';
	}
}