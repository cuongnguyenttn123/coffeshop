package coffeshop.com.controller;

import coffeshop.com.entity.Area;
import coffeshop.com.entity.Bill;
import coffeshop.com.reponsitory.AreaRepository;
import coffeshop.com.reponsitory.BillRepository;
import coffeshop.com.reponsitory.BillinfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/test")
public class TestController {
    @Autowired
    BillRepository billinfoRepository;
    @Autowired
    AreaRepository areaRepository;

    @GetMapping
    public String test(){
        Bill bill = billinfoRepository.findById(17).get();
        List<Bill> billList = billinfoRepository.findAll();

        Area area = areaRepository.findById(1).get();
        return "";
    }
}
