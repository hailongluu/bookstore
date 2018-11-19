package group.faf.bookstore.model.customer;


public interface CustomerDAO {

	/**
	 * 
	 */
	Customer getCustomer(int id);

	/**
	 * 
	 */
	Customer getCustomerByAccount(int id);
	void addCustomer(Customer customer);

	/**
	 * 
	 */
	void deleteCustomer(Customer customer);

	/**
	 * 
	 * @param Customer
	 */
	void updateCustomer(int Customer);

}