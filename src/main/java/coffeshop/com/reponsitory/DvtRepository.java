package coffeshop.com.reponsitory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Dvt;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface DvtRepository extends JpaRepository<Dvt, Integer>, JpaSpecificationExecutor<Dvt> {
    @Query("from Dvt f where f.id = ?1")
    Optional<Dvt> findById(Integer id);

    @Query("SELECT b FROM Dvt b")
    Page<Dvt> getAllBy(Pageable pageable);
}