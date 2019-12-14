package coffeshop.com.service;

import coffeshop.com.entity.Bill;

import java.util.List;

public interface BillService {
    Bill findById(Integer id);
    List<Bill> findALL();
    boolean editBill(Bill bill);
    boolean deleteBill(Integer id);
    boolean addBill(Bill bill);
}
