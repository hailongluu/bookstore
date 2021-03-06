package group.faf.bookstore.customer.person;

import java.util.List;
import java.util.Vector;

public class Country {
	private int id;
	private String name;
	private String GMT;
	private int zipcode;
	private List<City> cities;

	public Country(int id, String name, String GMT, int zipcode, List<City> cities) {
		this.id = id;
		this.name = name;
		this.GMT = GMT;
		this.zipcode = zipcode;
		this.cities = cities;
	}
}