package coffeshop.com.DTO.request;

import lombok.Data;

@Data
public class BilldetailRequest {
    private Integer count;
    private Integer idAccount;
    private Integer idFood;
    private Integer Price;
    private Integer idBill;
    private Integer idTable;
}
