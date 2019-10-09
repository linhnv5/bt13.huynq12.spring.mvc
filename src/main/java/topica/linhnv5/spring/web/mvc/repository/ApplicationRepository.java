package topica.linhnv5.spring.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import topica.linhnv5.spring.web.mvc.model.Application;

public interface ApplicationRepository extends PagingAndSortingRepository<Application, String>{

	public Page<Application> findByTitleStartsWithIgnoreCase(String name, Pageable pageable);

	@Query("SELECT app FROM Application app WHERE app.title LIKE :prefix% AND app.title LIKE %:q%")
	public Page<Application> findByTitleContainsIgnoreCase(@Param("prefix") String prefix, @Param("q") String q, Pageable pageable);

}
