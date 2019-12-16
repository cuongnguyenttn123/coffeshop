package coffeshop.com.reponsitory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Tablefood;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TablefoodRepository extends JpaRepository<Tablefood, Integer>, JpaSpecificationExecutor<Tablefood> {
    @Query("from Tablefood f where f.id = ?1")
    Optional<Tablefood> findById(Integer id);

    @Query("SELECT b FROM Tablefood b")
    Page<Tablefood> getAllBy(Pageable pageable);
}