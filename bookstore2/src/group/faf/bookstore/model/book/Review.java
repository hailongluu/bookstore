package group.faf.bookstore.model.book;

import java.util.List;

public class Review {
	private int id;
	private int rating;
	private Book book;
	private String comment;

	public void addReview(Review r) {
		throw new UnsupportedOperationException();
	}

	public void editReview(Review r) {
		throw new UnsupportedOperationException();
	}

	public void deleteReview(Review r) {
		throw new UnsupportedOperationException();
	}

	public List<Review> getAllReviews(Book b) {
		throw new UnsupportedOperationException();
	}
}