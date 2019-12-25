package coffeshop.com.service;

import coffeshop.com.DTO.reponse.BillReponse;
import coffeshop.com.DTO.reponse.StatusFunction;
import coffeshop.com.entity.Bill;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.util.Date;
import java.util.List;

public interface BillService {
    Bill findById(Integer id);
    List<Bill> findALL();
    boolean editBill(Bill bill);
    boolean deleteBill(Integer id);
    boolean addBill(Bill bill);
    Double statisticalBill(List<Bill> bills );
    List<Bill> thongkeTheoNgay();
    List<Bill> thongkeTheoThang();
    List<Bill> thongkeTheoNam();
    List<Bill> thongkeTuyChon(Date date, Date date1);

    BillReponse createBill(String billin, Integer id_table, Principal principal);

    Page<Bill> getAllBy(Pageable pageable);

    StatusFunction deleteBill(Integer idbill, Integer idtable);
    StatusFunction editBill(String model);
    StatusFunction deleteBillinfo(String model);
    StatusFunction thanhToan(Integer id_bill, Principal principal);

    StatusFunction changTableFood(String dinnertableid, Integer dinnertableidOLD);
    void exPortBill(HttpServletResponse response, Integer idbill);

}
