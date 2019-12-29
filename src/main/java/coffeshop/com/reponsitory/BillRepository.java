package coffeshop.com.reponsitory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Bill;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Repository
@Transactional
public interface BillRepository extends JpaRepository<Bill, Integer>, JpaSpecificationExecutor<Bill> {
    @Query("from Bill b where b.id = ?1")
    Optional<Bill> findById(Integer id);

    @Query("SELECT b FROM Bill b")
    Page<Bill> getAllBy(Pageable pageable);

    @Transactional
    @Modifying
    @Query("delete from Bill b where b.id = ?1")
    void deleteById(Integer id);


    @Query(value = "select * from bill b where date (b.date_check_out) = ?1", nativeQuery = true)
    List<Bill> thongKeTheoNgay(java.sql.Date date);

    @Query(value = "select * from bill b where month (b.date_check_out) = ?1", nativeQuery = true)
    List<Bill> thongKeTheoThang(int moth);

    @Query(value = "select * from bill b where year(b.date_check_out) = ?1", nativeQuery = true)
    List<Bill> thongKeTheoNam(int year);

    @Query(value = "select * from bill b where b.date_check_out >= ?1 and b.date_check_out <= ?2", nativeQuery = true)
    List<Bill> thongKeTuyChon(Date from, Date to);

    @Query("FROM Bill b WHERE b.status = ?1")
    List<Bill> billNotPay(Integer status);

}