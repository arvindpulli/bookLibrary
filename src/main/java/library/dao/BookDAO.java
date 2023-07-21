package library.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;

import library.dto.Book;

@Repository
public class BookDAO {

	@Autowired
	private EntityManager em;

	
	public void saveBook(Book book) {
		em.getTransaction().begin();
		em.persist(book);
		em.getTransaction().commit();
	}
	
	public List<Book> getAllBooks(){
		Query query=em.createQuery("select b from Book b");
		List<Book> books=query.getResultList();
		return books;
	}

	public void deleteBook(int id) {
		// TODO Auto-generated method stub
		em.getTransaction().begin();
		Book existingBook=em.find(Book.class, id);
		em.remove(existingBook);
		em.getTransaction().commit();
	}

	public Book findBook(int id) {
		// TODO Auto-generated method stub
		em.getTransaction().begin();
		Book existingBook=em.find(Book.class, id);
		em.getTransaction().commit();
		return existingBook;
	}

	public void update(Book book, int id) {
		// TODO Auto-generated method stub
				
				Book existingBook=em.find(Book.class, id);
				if(existingBook!=null) {
					book.setBookId(id);
					em.getTransaction().begin();
					em.merge(book);
					em.getTransaction().commit();	
				}
	}
	
	
	
}

