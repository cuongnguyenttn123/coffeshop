package coffeshop.com.service.impl;

import coffeshop.com.entity.Bill;
import coffeshop.com.reponsitory.BillRepository;
import coffeshop.com.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BillServiceImpl implements BillService {
    @Autowired
    BillRepository billRepository;

    @Override
    public Bill findById(Integer id) {
        return billRepository.findById(id).get();
    }

    @Override
    public List<Bill> findALL() {
        return billRepository.findAll();
    }

    @Override
    public boolean editBill(Bill bill) {
        Boolean aBoolean;
        try {
            billRepository.save(bill);
            aBoolean = true;
        }catch (Exception e){
            aBoolean = false;
        }
        return aBoolean;
    }

    @Override
    public boolean deleteBill(Integer id) {
        Boolean aBoolean;
        try {
            billRepository.deleteById(id);
            aBoolean = true;
        }catch (Exception e){
            aBoolean = false;
        }
        return aBoolean;
    }

    @Override
    public boolean addBill(Bill bill) {
        Boolean aBoolean;
        try {
            billRepository.save(bill);
            aBoolean = true;
        }catch (Exception e){
            aBoolean = false;
        }
        return aBoolean;
    }
}
