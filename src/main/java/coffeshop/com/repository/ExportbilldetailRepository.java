package coffeshop.com.repository;

import coffeshop.com.entity.Exportbilldetail;
import coffeshop.com.entity.ExportbilldetailId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExportbilldetailRepository extends JpaRepository<Exportbilldetail, ExportbilldetailId>, JpaSpecificationExecutor<Exportbilldetail> {
    @Query(
            value = "select * from exportbilldetail e where e.exportbillid = ?1 and e.isdelete = ?2",
            nativeQuery = true
    )
    List<Exportbilldetail> getInfoByExportbillId(int exportbillId, Boolean aBoolean);

    @Query(
            value = "select * from exportbilldetail e where e.materialdetailid = ?1 and e.isdelete = ?2",
            nativeQuery = true
    )
    Exportbilldetail checkExistMaterialDetail(int materialdetailid, Boolean aBoolean);
}