package group.faf.bookstore.model.book;

import java.util.Date;
import java.util.List;

public class SellingStatistic extends Book {
	private int id;
	private int soldcount;
	private float revenue;
	private Date date;


	public SellingStatistic(int id, String title, Publisher publisher, Date publishDate, Float price, int numberOfPages, Boolean status, Category category, String author, List<Review> listReview, String img) {
		super(id, title, publisher, publishDate, price, numberOfPages, status, category, author, listReview, img);
	}
}