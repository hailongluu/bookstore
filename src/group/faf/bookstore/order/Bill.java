package group.faf.bookstore.order;

import group.faf.bookstore.staff.Seller;

import java.util.Date;

public class Bill {
	private int id;
	private Order order;
	private double totalPrice;
	private Date dateCreated;
	private boolean status;
	public Seller seller;

}