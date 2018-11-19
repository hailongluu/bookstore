package group.faf.bookstore.model.order;
public class CoDPayment extends PaymentMethod {
	private int id;
	private float fee;

	public CoDPayment(int id, int discriminator) {
		super(id, discriminator);
	}

	public CoDPayment(int id, int discriminator, int id1, float fee) {
		super(id, discriminator);
		this.id = id1;
		this.fee = fee;
	}
}