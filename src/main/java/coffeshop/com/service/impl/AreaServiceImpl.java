package coffeshop.com.service.impl;

import coffeshop.com.DTO.reponse.AreaReponseDto;
import coffeshop.com.converter.AreaConverter;
import coffeshop.com.entity.Area;
import coffeshop.com.reponsitory.AreaRepository;
import coffeshop.com.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AreaServiceImpl implements AreaService {

    @Autowired
    AreaRepository areaRepository;

    @Autowired
    AreaConverter areaConverter;
    @Override
    public List<AreaReponseDto> findByAll() {
        return areaConverter.converterListEntity(areaRepository.findAll());
    }

    @Override
    public Page<Area> getHome(Integer page) {
        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 10, sort);
        Page<Area> page1 = areaRepository.getAllBy(pageable);
        return page1;
    }

    @Override
    public void addArea(Area area) {
        try {
            areaRepository.save(area);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
