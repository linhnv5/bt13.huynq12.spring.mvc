package topica.linhnv5.spring.web.mvc.repository;

import java.util.Optional;

import org.springframework.data.repository.PagingAndSortingRepository;

import topica.linhnv5.spring.web.mvc.model.User;

public interface UserRepository extends PagingAndSortingRepository<User, Long> {

	public Optional<User> findByUsername(String name);

}
