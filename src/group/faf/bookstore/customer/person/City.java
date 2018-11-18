package group.faf.bookstore.customer.person;

import java.util.List;
import java.util.Vector;

public class City {
	private int id;
	private String zipcode;
	private String name;
	private List<District> districts;

	public City(int id, String zipcode, String name, List<District> districts) {
		this.id = id;
		this.zipcode = zipcode;
		this.name = name;
		this.districts = districts;
	}
}