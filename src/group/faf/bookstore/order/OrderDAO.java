package group.faf.bookstore.order;


import group.faf.bookstore.customer.Customer;

import java.util.List;

public interface OrderDAO {

	Order getOrder();

	Order getAllOrder();

	/**
	 *
	 * @param OrderStatus
	 */
	List<Order> getListOrder(int OrderStatus);

	/**
	 * 
	 */
	int addOrder(Order order );

	/**
	 * 
	 *
	 */
	int updateOrder(int id, int status);

	/**
	 * 
	 */
	List<Order> getListOrderOfCustomer(Customer customer);

}