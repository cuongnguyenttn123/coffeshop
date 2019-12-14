package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Billinfo;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface BillinfoRepository extends JpaRepository<Billinfo, Integer>, JpaSpecificationExecutor<Billinfo> {
    @Query("from Billinfo f where f.id = ?1")
    Optional<Billinfo> findById(Integer id);
}