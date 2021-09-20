package cdw_project.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import cdw_project.entity.Categorys;

@Service
public interface IHomeAdminService {
	public List<Categorys> GetDataCategorys();
	
}
