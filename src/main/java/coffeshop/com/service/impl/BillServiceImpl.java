package coffeshop.com.service.impl;

import coffeshop.com.entity.Bill;
import coffeshop.com.entity.Billinfo;
import coffeshop.com.reponsitory.BillRepository;
import coffeshop.com.service.BillService;
import org.omg.CORBA.DATA_CONVERSION;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

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

    @Override
    public Double statisticalBill(List<Bill> bills) {
        Double sum = 0d;
        try {
            for (Bill bill: bills
                 ) {
                for (Billinfo billinfo: bill.getBillinfos()
                     ) {
                    sum += billinfo.getCount()*billinfo.getPrice();
                }
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return sum;
    }

    @Override
    public List<Bill> thongkeTheoNgay() {
        Date date = new Date();
        return billRepository.thongKeTheoNgay(date);
    }

    @Override
    public List<Bill> thongkeTheoThang() {
        Date date = new Date();
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int month = cal.get(Calendar.MONTH)+1;
        return billRepository.thongKeTheoThang(month);
    }

    @Override
    public List<Bill> thongkeTheoNam() {
        Date date = new Date();
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int year = cal.get(Calendar.YEAR);
        return billRepository.thongKeTheoNam(year);
    }

    @Override
    public List<Bill> thongkeTuyChon(Date date, Date date1) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date1);
        cal.add(Calendar.DATE, 1);
        date1 = cal.getTime();
        return billRepository.thongKeTuyChon(date, date1);
    }
}
