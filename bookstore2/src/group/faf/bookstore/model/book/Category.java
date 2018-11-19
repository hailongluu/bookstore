package group.faf.bookstore.model.book;


public class Category {
	private int id;
	private String name;
	private String desc;

	public Category(int id, String name, String desc) {
		this.id = id;
		this.name = name;
		this.desc = desc;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDesc() {
		return desc;
	}

	@Override
	public String toString() {
		return "Category{" +
				"id=" + id +
				", name='" + name + '\'' +
				", desc='" + desc + '\'' +
				'}';
	}
}