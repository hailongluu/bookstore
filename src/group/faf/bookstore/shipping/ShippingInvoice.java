package group.faf.bookstore.shipping;

import group.faf.bookstore.order.Bill;
import group.faf.bookstore.staff.Shipper;

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