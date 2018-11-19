package group.faf.bookstore.model.book;

import java.util.Date;
import java.util.List;

public class BuyingStatistic extends Book {
	private int id;
	private Category category;
	private int buycount;
	private float revenue;
	private Date date;
	public Category unnamed_Category_;

	public BuyingStatistic(int id, String title, Publisher publisher, Date publishDate, Float price, int numberOfPages, Boolean status, Category category, String author, List<Review> listReview, String img) {
		super(id, title, publisher, publishDate, price, numberOfPages, status, category, author, listReview, img);
	}
}