package group.faf.bookstore.model.order;

public class PaymentMethod {
	public static final int COD = 1;
	public static final int CreditCard = 2;
	public static final int Bank = 3;
	private int id;
	private int discriminator;

	public PaymentMethod(int id, int discriminator) {
		this.id = id;
		this.discriminator = discriminator;
	}

	public int getId() {
		return id;
	}
}