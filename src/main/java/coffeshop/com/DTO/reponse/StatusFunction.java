package coffeshop.com.DTO.reponse;

import lombok.Data;

@Data
public class StatusFunction {
    Boolean status;
    Integer tableidNew;
    Integer tableidOld;
    Integer billId;
}
