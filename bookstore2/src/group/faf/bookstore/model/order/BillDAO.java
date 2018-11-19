package group.faf.bookstore.model.order;


import java.util.List;

public interface BillDAO {

	/**
	 * 
	 */

	public int addBill(Bill bill);

	List<Bill> getAllBill();

	List<Bill> getListBill();

}