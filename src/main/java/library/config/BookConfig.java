package library.config;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = {"library"})
public class BookConfig {
	@Bean
	 EntityManager entityManager() {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("amit");
		EntityManager em=emf.createEntityManager();
		return em;
}
}
