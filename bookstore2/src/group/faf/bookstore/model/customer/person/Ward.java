package group.faf.bookstore.model.customer.person;

public class Ward {
	private int id;
	private String name;
	private int districtId;
	public District district;

	public Ward(int id, String name, int districtId, District district) {
		this.id = id;
		this.name = name;
		this.districtId = districtId;
		this.district = district;
	}
}