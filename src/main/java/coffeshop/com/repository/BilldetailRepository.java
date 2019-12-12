package coffeshop.com.repository;

import coffeshop.com.entity.Bill;
import coffeshop.com.entity.Billdetail;
import coffeshop.com.entity.BilldetailId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;
@Repository
public interface BilldetailRepository extends JpaRepository<Billdetail, BilldetailId>, JpaSpecificationExecutor<Billdetail> {

    @Query(value = "select * from billdetail b where b.billid = ?1 and b.isdelete = ?2",
            nativeQuery = true
    )
    List<Billdetail> findAllBilldetailByBillid(Integer billid, Boolean isDelete);

    Billdetail findByIdAndIsdelete(BilldetailId billdetailId, Boolean aBoolean);


    @Query(value = "select PRODUCTID, BILLID, count(PRODUCTID) as QUANTITY, UPDATEAT, ISDELETE from billdetail b group by productid",
            nativeQuery = true
    )
    List<Billdetail> getProductStatistic();
}
