package coffeshop.com.service;

import coffeshop.com.DTO.reponse.AreaReponseDto;
import coffeshop.com.entity.Area;
import org.springframework.data.domain.Page;

import java.util.List;

public interface AreaService {
    List<AreaReponseDto> findByAll();

    Page<Area> getHome(Integer page);

    void addArea(String name);

    void edit(Integer id, String name);

    void deleteArea(Integer id);
}
