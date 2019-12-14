package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Bill;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Repository
public interface BillRepository extends JpaRepository<Bill, Integer>, JpaSpecificationExecutor<Bill> {
    @Query("from Bill b where b.id = ?1")
    Optional<Bill> findById(Integer id);

    @Transactional
    @Modifying
    @Query("delete from Bill b where b.id = ?1")
    void deleteById(Integer id);
}