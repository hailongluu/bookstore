package group.faf.bookstore.model.order;

import group.faf.bookstore.model.customer.Customer;

import java.util.Date;

public class Order {
	private int id;
	private Date createTime;
	public Cart cart;
	public Customer customer;
	public String shippingAddress;
	public PaymentMethod paymentMethod;
	public int orderStatus;

	public Order(int id, Date createTime, Cart cart, Customer customer, String shippingAddress, PaymentMethod paymentMethod, int orderStatus) {
		this.id = id;
		this.createTime = createTime;
		this.cart = cart;
		this.customer = customer;
		this.shippingAddress = shippingAddress;
		this.paymentMethod = paymentMethod;
		this.orderStatus = orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}

	public int getId() {
		return id;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public Cart getCart() {
		return cart;
	}

	public Customer getCustomer() {
		return customer;
	}

	public String getShippingAddress() {
		return shippingAddress;
	}

	public PaymentMethod getPaymentMethod() {
		return paymentMethod;
	}

	public int getOrderStatus() {
		return orderStatus;
	}
}