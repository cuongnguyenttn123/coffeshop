package coffeshop.com.service;

import coffeshop.com.DTO.reponse.TableFoodReponseDto;

import java.util.List;

public interface TableFoodService {
    List<TableFoodReponseDto> getTablefoodByIdBill(Integer idbill);
}
