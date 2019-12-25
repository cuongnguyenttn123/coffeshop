package coffeshop.com.service.impl;

import coffeshop.com.DTO.reponse.Bill2Reponse;
import coffeshop.com.entity.Bill;
import coffeshop.com.reponsitory.BillRepository;
import coffeshop.com.service.BillinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;

@Service
public class BillinfoServiceImpl implements BillinfoService {
    @Autowired
    BillRepository billRepository;

    @Override
    public Bill2Reponse getInfoBill(Integer id) {
        SimpleDateFormat localTimeFormat = new SimpleDateFormat("HH:mm");
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Bill bill = billRepository.findById(id).get();
        Bill2Reponse bill2Reponse = new Bill2Reponse();
        String timein = localTimeFormat.format(bill.getDateCheckIn());
        bill2Reponse.setCheckIn(timein);
        String timeout = localTimeFormat.format(bill.getDateCheckOut());
        bill2Reponse.setCheckOut(timeout);
        String date = formatter.format(bill.getDateCheckIn());
        bill2Reponse.setId(bill.getId());
        bill2Reponse.setDate(date);
        bill2Reponse.setTablefood(bill.getTablefood().getName());
        bill2Reponse.setEmployee(bill.getAccount().getName());
        bill2Reponse.setBillinfos(bill.getBillinfos());
        return bill2Reponse;
    }
}
