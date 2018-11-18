package group.faf.bookstore.customer.person;

import java.util.List;
import java.util.Vector;

public class District {
	private int id;
	private Integer name;
	private List<Ward> wards;

	public District(int id, Integer name, List<Ward> wards) {
		this.id = id;
		this.name = name;
		this.wards = wards;
	}
}