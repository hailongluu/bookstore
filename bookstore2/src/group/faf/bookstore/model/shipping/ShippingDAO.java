package group.faf.bookstore.model.shipping;


import java.util.List;

public interface ShippingDAO {

	List<ShippingInvoice> getAllShippingInvoice();

	/**
	 * 
	 * @param ShippingStatus
	 */
	List<ShippingInvoice> getListShippingInvoice(int ShippingStatus);

	/**
	 * 
	 * @param ShippingInvoice
	 */
	void addShippingInvoice(int ShippingInvoice);

	/**
	 * 
	 * @param ShippingInvoice
	 * @param parameter
	 */
	void updateShippingInvoice(int ShippingInvoice, int parameter);

}