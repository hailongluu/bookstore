package group.faf.bookstore.model.shipping;

import group.faf.bookstore.model.order.Bill;
import group.faf.bookstore.model.staff.Shipper;

import java.util.Date;

public class ShippingInvoice {
	private int id;
	private Date expectedDeliveryTime;
	private Date createdTime;
	public Shipper shipper;
	public ShippingStatus shippingStatus;
	public Bill bill;

	public void updateShippingStatus(Object string) {
		throw new UnsupportedOperationException();
	}
}