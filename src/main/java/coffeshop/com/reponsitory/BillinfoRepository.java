package coffeshop.com.reponsitory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Billinfo;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Repository
@Transactional
public interface BillinfoRepository extends JpaRepository<Billinfo, Integer>, JpaSpecificationExecutor<Billinfo> {
    @Query("from Billinfo f where f.id = ?1")
    Optional<Billinfo> findById(Integer id);

    @Query("SELECT b FROM Billinfo b")
    Page<Billinfo> getAllBy(Pageable pageable);

    @Query("SELECT b FROM Billinfo b where b.status = ?1")
    Page<Billinfo> getBillinfos(Pageable pageable, Integer status);

    @Query(value = "select id, id_bill, id_food, count(id_food) as count, price,id_table, status from billinfo group by billinfo.id_food order by count DESC limit 10 ",
            nativeQuery = true)
    List<Billinfo> getProductStatistic();
}