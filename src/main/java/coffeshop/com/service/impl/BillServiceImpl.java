package coffeshop.com.service.impl;

import coffeshop.com.DTO.reponse.BillReponse;
import coffeshop.com.DTO.reponse.StatusFunction;
import coffeshop.com.DTO.request.BilldetailRequest;
import coffeshop.com.entity.*;
import coffeshop.com.reponsitory.*;
import coffeshop.com.service.BillService;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.io.FileUtils;
import org.apache.poi.xwpf.usermodel.*;
import org.omg.CORBA.DATA_CONVERSION;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTJc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STJc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.ResourceUtils;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.math.BigInteger;
import java.security.Principal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

@Service
public class BillServiceImpl implements BillService {
    @Autowired
    BillRepository billRepository;

    @Autowired
    EmployeeRepository employeeRepository;

    @Autowired
    TablefoodRepository tablefoodRepository;

    @Autowired
    FoodRepository foodRepository;

    @Autowired
    BillinfoRepository billinfoRepository;

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

    @Override
    public BillReponse createBill(String billin, Integer id_table, Principal principal) {
        ObjectMapper objectMapper = new ObjectMapper();
        Employee employee = employeeRepository.findByUserName(principal.getName());
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
                bill.setAccount(employee);
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
                    billdetail.setStatus(0);
                    billdetail.setPrice(billdetailRequest.getPrice());
                    billdetail.setBill(bill);
                    billdetail.setTablefood(bill.getTablefood());
                    billinfoRepository.save(billdetail);
                }else {
                    int i = isCheckIdBillinfo(billdetailRequest, billdetailList);
                    if (i != -1){
                        Billinfo billinfo = billdetailList.get(i);
                        billinfo.setCount(billinfo.getCount()+1);
                        billinfo.setStatus(0);
                        billinfoRepository.save(billinfo);
                    }else {
                        Billinfo billdetail1 = new Billinfo();
                        billdetail1.setCount(billdetailRequest.getCount());
                        Food food = foodRepository.findById(billdetailRequest.getIdFood()).get();
                        billdetail1.setFood(food);
                        billdetail1.setStatus(0);
                        billdetail1.setPrice(billdetailRequest.getPrice());
                        billdetail1.setBill(bill);
                        billinfoRepository.save(billdetail1);
                    }
                }
                tablefood.setIdBill(bill.getId());
                tablefoodRepository.save(tablefood);
            }
            BillReponse billReponse = new BillReponse();
            billReponse.setId_table(id_table);
            billReponse.setIdBill(billdetailRequest.getIdBill());
            return billReponse;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public StatusFunction deleteBill(Integer idbill, Integer idtable) {
        StatusFunction statusFunction = new StatusFunction();
        try{
            Bill bill = billRepository.findById(idbill).get();
            bill.setStatus(2);
            billRepository.save(bill);
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

    @Override
    public StatusFunction editBill(String model) {
        ObjectMapper objectMapper = new ObjectMapper();
        StatusFunction statusFunction = new StatusFunction();
        try{
            JsonNode jsonNode = objectMapper.readTree(model);
            Integer a = jsonNode.get("BillInfo_id").asInt();
            Billinfo billdetail = billinfoRepository.findById(a).get();
            billdetail.setCount(jsonNode.get("count").asInt());
            billinfoRepository.save(billdetail);
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(false);
        }
        return statusFunction;
    }

    @Override
    public StatusFunction deleteBillinfo(String model) {
        ObjectMapper objectMapper = new ObjectMapper();
        StatusFunction statusFunction = new StatusFunction();
        try{
            JsonNode jsonNode = objectMapper.readTree(model);
            Integer integer = jsonNode.get("BillInfo_id").asInt();
            billinfoRepository.deleteById(integer);
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(true);
        }
        return statusFunction;
    }

    @Override
    public StatusFunction thanhToan(Integer id_bill, Principal principal) {
        StatusFunction statusFunction = new StatusFunction();
        try{
            Employee employee = employeeRepository.findByUserName(principal.getName());
            Bill bill = billRepository.findById(id_bill).get();
            bill.setStatus(1);
            Date date = new Date();
            bill.setAccount(employee);
            bill.setDateCheckOut(date);
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

    @Override
    public StatusFunction changTableFood(String dinnertableid, Integer dinnertableidOLD) {
        StatusFunction statusFunction = new StatusFunction();

        Tablefood tablefoodNew = tablefoodRepository.findByName(dinnertableid);
        Tablefood tablefoodOLD = tablefoodRepository.findById(dinnertableidOLD).get();

        try {
            tablefoodNew.setIdBill(tablefoodOLD.getIdBill());
            Bill bill = billRepository.findById(tablefoodNew.getIdBill()).get();
            bill.setTablefood(tablefoodNew);
            tablefoodOLD.setIdBill(0);
            tablefoodRepository.save(tablefoodNew);
            tablefoodRepository.save(tablefoodOLD);
            statusFunction.setBillId(tablefoodNew.getIdBill());
            statusFunction.setTableidNew(tablefoodNew.getId());
            statusFunction.setTableidOld(tablefoodOLD.getId());
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(false);
        }

        return statusFunction;
    }

    @Override
    public void exPortBill(HttpServletResponse response, Integer idbill) {
        Bill bill = billRepository.findById(idbill).get();
        XWPFDocument document = new XWPFDocument();

        XWPFParagraph titleGraph = document.createParagraph();

        titleGraph.setAlignment(ParagraphAlignment.CENTER);

        String title = "Cafe High5";

        XWPFRun titleRun = titleGraph.createRun();

        titleRun.setBold(true);

        titleRun.setText(title);

        XWPFParagraph titleGraph1 = document.createParagraph();
        titleGraph1.setAlignment(ParagraphAlignment.CENTER);
        String title1 = "Địa chỉ: 104 Ngô Thì Nhậm, Liên Chiểu, TP Đà Nẵng";
        XWPFRun titleRun1 = titleGraph1.createRun();
        titleRun1.setText(title1);

        XWPFParagraph titleGraph2 = document.createParagraph();
        titleGraph2.setAlignment(ParagraphAlignment.CENTER);
        String title2 = "Hóa Đơn Thanh Toán";
        XWPFRun titleRun2 = titleGraph2.createRun();
        titleRun2.setText(title2);

        XWPFParagraph titleGraph3 = document.createParagraph();
        titleGraph3.setAlignment(ParagraphAlignment.CENTER);
        String title3 = "Thu ngân: "+ bill.getAccount().getName();
        XWPFRun titleRun3 = titleGraph3.createRun();
        titleRun3.setText(title3);
        XWPFTable table = document.createTable();
        setTableAlign(table, ParagraphAlignment.CENTER);
        XWPFTableRow tableRowOne = table.getRow(0);
        tableRowOne.getCell(0).setText("Món");
        tableRowOne.addNewTableCell().setText("Số lượng");
        tableRowOne.addNewTableCell().setText("Thành tiền");
        table.getCTTbl().addNewTblPr().addNewTblW().setW(BigInteger.valueOf(4000));
        Double tong = 0d;
        for (Billinfo billinfo: bill.getBillinfos()
        ) {
            //create first row
            XWPFTableRow tableRowTwo = table.createRow();
            tableRowTwo.getCell(0).setText(billinfo.getFood().getName());
            tableRowTwo.getCell(1).setText(billinfo.getCount().toString());
            tableRowTwo.getCell(2).setText(""+(billinfo.getCount()*billinfo.getPrice()));

            tong = tong + billinfo.getCount()*billinfo.getPrice();
        }
        XWPFParagraph paragraph2 = document.createParagraph();
        paragraph2.setAlignment(ParagraphAlignment.CENTER);
        XWPFRun run = paragraph2.createRun();
        run.setText("Tổng tiền:    "+ tong+" VND");

        XWPFParagraph titleGraph4 = document.createParagraph();
        titleGraph4.setAlignment(ParagraphAlignment.CENTER);
        String title4 = "Cảm ơn quý khách. Hẹn gặp lại";
        XWPFRun titleRun4 = titleGraph4.createRun();
        titleRun4.setText(title4);
        FileOutputStream out;
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

    private int isCheckIdBillinfo(BilldetailRequest billdetail, List<Billinfo> billdetailList) {
        boolean bb = false;
        for (int i = 0 ;  i< billdetailList.size(); i++){

            Integer a = billdetailList.get(i).getFood().getId();
            Integer b = billdetail.getIdFood();
            if (b.equals(a)){
                bb =  true;
                return i;
            }

        }
        return -1;
    }

    public void setTableAlign(XWPFTable table,ParagraphAlignment align) {
        CTTblPr tblPr = table.getCTTbl().getTblPr();
        CTJc jc = (tblPr.isSetJc() ? tblPr.getJc() : tblPr.addNewJc());
        STJc.Enum en = STJc.Enum.forInt(align.getValue());
        jc.setVal(en);
    }
}
