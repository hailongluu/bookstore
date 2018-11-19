package group.faf.bookstore.model.book;


import java.util.Date;
import java.util.List;

public class Book {
	private int id;
	private String title;
	private Publisher publisher;
	private Date publishDate;
	private Float price;
	private int numberOfPages;
	private Boolean status;
	private Category category;
	private String author;
	private String imageLink;
	public List<Review> listReview;

	public Book(int id, String title, Publisher publisher, Date publishDate, Float price, int numberOfPages, Boolean status, Category category, String author, List<Review> listReview, String img) {
		this.id = id;
		this.title = title;
		this.publisher = publisher;
		this.publishDate = publishDate;
		this.price = price;
		this.numberOfPages = numberOfPages;
		this.status = status;
		this.category = category;
		this.author = author;
		this.listReview = listReview;
		this.imageLink = img;
	}

	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public Publisher getPublisher() {
		return publisher;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public Float getPrice() {
		return price;
	}

	public int getNumberOfPages() {
		return numberOfPages;
	}

	public Boolean getStatus() {
		return status;
	}

	public Category getCategory() {
		return category;
	}

	public String getAuthor() {
		return author;
	}

	public List<Review> getListReview() {
		return listReview;
	}

	public String getImageLink() {
		return imageLink;
	}

	@Override
	public String toString() {
		return "Book{" +
				"id=" + id +
				", title='" + title + '\'' +
				", publisher=" + publisher +
				", publishDate=" + publishDate +
				", price=" + price +
				", numberOfPages=" + numberOfPages +
				", status=" + status +
				", category=" + category +
				", author='" + author + '\'' +
				", imageLink='" + imageLink + '\'' +
				", listReview=" + listReview +
				'}';
	}
}