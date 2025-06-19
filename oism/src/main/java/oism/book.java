package oism;

public class book {
    private String book_id;
    private String book_name;
    private String publisher;
    private String author;
    private String availability;
    
	public book(String book_id, String book_name, String publisher, String author, String availability) {
		this.book_id = book_id;
		this.book_name = book_name;
		this.publisher = publisher;
		this.author = author;
		this.availability = availability;
	}

	public String getBook_id() {
		return book_id;
	}

	public String getBook_name() {
		return book_name;
	}

	public String getPublisher() {
		return publisher;
	}

	public String getAuthor() {
		return author;
	}

	public String getAvailability() {
		return availability;
	}




  
}

