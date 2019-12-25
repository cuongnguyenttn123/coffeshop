package coffeshop.com.service.impl;

import coffeshop.com.DTO.reponse.TableFoodReponseDto;
import coffeshop.com.converter.TableFoodConverter;
import coffeshop.com.entity.Tablefood;
import coffeshop.com.reponsitory.TablefoodRepository;
import coffeshop.com.service.TableFoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TableFoodServiceImpl implements TableFoodService {
    @Autowired
    TablefoodRepository tablefoodRepository;

    @Autowired
    TableFoodConverter tableFoodConverter;

    @Override
    public List<TableFoodReponseDto> getTablefoodByIdBill(Integer idbill) {
        List<Tablefood> tablefoodList = tablefoodRepository.getTablefoodByIdBill(0);
        return tableFoodConverter.converterListEntity(tablefoodList);
    }
}
