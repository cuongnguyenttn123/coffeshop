package coffeshop.com.controller;

import coffeshop.com.DTO.reponse.BillReponse;
import coffeshop.com.DTO.reponse.StatusFunction;
import coffeshop.com.DTO.request.BilldetailRequest;
import coffeshop.com.entity.Bill;
import coffeshop.com.entity.Billinfo;
import coffeshop.com.entity.Food;
import coffeshop.com.entity.Tablefood;
import coffeshop.com.reponsitory.BillRepository;
import coffeshop.com.reponsitory.BillinfoRepository;
import coffeshop.com.reponsitory.FoodRepository;
import coffeshop.com.reponsitory.TablefoodRepository;
import coffeshop.com.service.impl.BillServiceImpl;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.io.FileUtils;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

import java.util.Date;


@Controller
@RequestMapping("/HomeClient")
public class EmployeeController {
    @Autowired
    TablefoodRepository tablefoodRepository;

    @Autowired
    BillRepository billRepository;

    @Autowired
    BillServiceImpl billService;

    @Autowired
    BillinfoRepository billdetailRepository;

    @Autowired
    FoodRepository foodRepository;

    @PostMapping(value = "Create")
    @ResponseBody
    public BillReponse create(@RequestParam("billin") String billin, @RequestParam("id_table") Integer id_table,
                              @RequestParam("idAc") Integer idAc ){
        ObjectMapper objectMapper = new ObjectMapper();
        Tablefood tablefood = tablefoodRepository.findById(id_table).get();
        try{
            BilldetailRequest billdetailRequest =new BilldetailRequest();
            JsonNode jsonNode = objectMapper.readTree(billin);

            billdetailRequest.setIdBill(jsonNode.get("idBill").asInt());
            billdetailRequest.setCount(jsonNode.get("count").asInt());
            billdetailRequest.setIdFood(jsonNode.get("idFood").asInt());
            billdetailRequest.setIdAccount(jsonNode.get("idAccount").asInt());
            billdetailRequest.setIdTable(jsonNode.get("idTable").asInt());
            billdetailRequest.setPrice(jsonNode.get("Price").asInt());

            if (billdetailRequest.getIdBill()==0)
            {
                //them
                Bill bill = new Bill();
                Date date = new Date();
                bill.setDateCheckOut(date);
                bill.setDateCheckIn(date);
                bill.setIdStatus(0);


                bill.setTablefood(tablefood);
                billRepository.save(bill);
                billdetailRequest.setIdBill(bill.getId());

            }

            if (billdetailRequest.getIdBill()!=0)
            {
                Bill bill = billRepository.findById(billdetailRequest.getIdBill()).get();
                List<Billinfo> billdetailList = bill.getBillinfos();
                if(billdetailList.size()==0){
                    Billinfo billdetail = new Billinfo();
                    billdetail.setCount(billdetailRequest.getCount());
                    Food food = foodRepository.findById(billdetailRequest.getIdFood()).get();
                    billdetail.setFood(food);
                    billdetail.setPrice(billdetailRequest.getPrice());
                    billdetail.setBill(bill);
                    billdetailRepository.save(billdetail);
                }else {
                    int i = isCheckIdBillinfo(billdetailRequest, billdetailList);
                    if (i != -1){
                        Billinfo billinfo = billdetailList.get(i);
                        billinfo.setCount(billinfo.getCount()+1);
                        billdetailRepository.save(billinfo);
                    }else {
                        Billinfo billdetail1 = new Billinfo();
                        billdetail1.setCount(billdetailRequest.getCount());
                        Food food = foodRepository.findById(billdetailRequest.getIdFood()).get();
                        billdetail1.setFood(food);
                        billdetail1.setPrice(billdetailRequest.getPrice());
                        billdetail1.setBill(bill);
                        billdetailRepository.save(billdetail1);
                    }
                }
                tablefood.setIdBill(bill.getId());
                tablefoodRepository.save(tablefood);
            }


            BillReponse billReponse = new BillReponse();
            billReponse.setId_table(id_table);
            billReponse.setIdBill(billdetailRequest.getIdBill());
            System.out.println(billReponse);
            return billReponse;
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("ucong");
        return null;
    }

    private int isCheckIdBillinfo(BilldetailRequest billdetail, List<Billinfo> billdetailList) {
        int count = -1;
        boolean bb = false;
        for (Billinfo billinfo: billdetailList) {
            count +=1;

            Integer a = billinfo.getFood().getId();
            Integer b = billdetail.getIdFood();
            if (b.equals(a)){
                bb =  true;
                System.out.println(billinfo.getFood().getId());
                System.out.println(billdetail.getIdFood());
            }

        }
        if (bb){
            return count;
        }else {
            return -1;
        }

    }


    @PostMapping(value = "GetBill")
    public String getBill(@RequestParam("id_bill") Integer id_bill, ModelMap modelMap){

        Bill bill = billService.findById(id_bill);

        modelMap.addAttribute("bill", bill);
        return "client/content/bill";
    }

    @PostMapping(value = "DeleteBill")
    @ResponseBody
    public StatusFunction deleteBill(@RequestParam("idbill") Integer idbill, @RequestParam("idtable") Integer idtable ){
        StatusFunction statusFunction = new StatusFunction();
        try{
            billRepository.deleteById(idbill);
            Tablefood tablefood = tablefoodRepository.findById(idtable).get();
            tablefood.setIdBill(0);
            tablefoodRepository.save(tablefood);
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(false);
        }
        return statusFunction;
    }

    @PostMapping(value = "EditBill")
    public StatusFunction editBill(@RequestParam("model") String model){
        ObjectMapper objectMapper = new ObjectMapper();
        StatusFunction statusFunction = new StatusFunction();
        try{
            JsonNode jsonNode = objectMapper.readTree(model);
            Billinfo billdetail = billdetailRepository.findById(jsonNode.get("BillInfo_id").asInt()).get();
            billdetail.setCount(jsonNode.get("count").asInt());
            billdetailRepository.save(billdetail);
            statusFunction.setStatus(true);
        }catch (Exception e){
            statusFunction.setStatus(false);
        }
        return statusFunction;
    }

    @PostMapping(value = "/Delete")
    @ResponseBody
    public StatusFunction delete(@RequestParam("model") String model){
        ObjectMapper objectMapper = new ObjectMapper();
        StatusFunction statusFunction = new StatusFunction();
        try{
            JsonNode jsonNode = objectMapper.readTree(model);
            Integer integer = jsonNode.get("BillInfo_id").asInt();
            billdetailRepository.deleteById(integer);
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(true);
        }
        return statusFunction;
    }

    @PostMapping(value = "ThanhToan")
    @ResponseBody
    public StatusFunction thanhToan(@RequestParam("id_bill") Integer id_bill){
        StatusFunction statusFunction = new StatusFunction();
        try{
            Bill bill = billRepository.findById(id_bill).get();
            bill.setStatus(1);
            billRepository.save(bill);
            Tablefood tablefood = bill.getTablefood();
            tablefood.setIdBill(0);
            tablefoodRepository.save(tablefood);
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(false);
        }
        return statusFunction;
    }
    @Autowired
    ServletContext context;
    @GetMapping(value = "Reports", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public void  exPortBill(HttpServletResponse response, @RequestParam("ReportType") String ReportType, @RequestParam("idbill") Integer idbill) throws IOException{
        Bill bill = billRepository.findById(idbill).get();
        XWPFDocument document = new XWPFDocument();
        for (Billinfo billinfo: bill.getBillinfos()
             ) {
            XWPFParagraph paragraph1 = document.createParagraph();
            XWPFRun run = paragraph1.createRun();
            String a = "Mon: "+ billinfo.getFood().getName()+"             " + billinfo.getCount();
            run.setText(a);
        }
        XWPFParagraph paragraph2 = document.createParagraph();
        XWPFRun run = paragraph2.createRun();
        run.setText("Tong bill:           15000 VND");
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(new File("bill.docx"));
            document.write(out);
            out.close();
            document.close();
            File file = ResourceUtils.getFile("bill.docx");

            byte[] data = FileUtils.readFileToByteArray(file);
            // Thiết lập thông tin trả về
            response.setContentType("application/octet-stream");
            response.setHeader("Content-disposition", "attachment; filename=" + file.getName());
            response.setContentLength(data.length);
            InputStream inputStream = new BufferedInputStream(new ByteArrayInputStream(data));
            FileCopyUtils.copy(inputStream, response.getOutputStream());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


}
