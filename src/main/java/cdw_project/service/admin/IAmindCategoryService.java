package cdw_project.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import cdw_project.entity.Categorys;
import cdw_project.entity.RoleCategory;
@Service
public interface IAmindCategoryService {
	public List<Categorys> GetDataCategorys();
	public List<RoleCategory> GetAllDataRoleCategorys();
	
	public int DeleteCategorys(int id);
	public Categorys detailCategorys(int id);
	public void EditCategorys(Categorys categorys);
	public int AddCategorys(Categorys categorys); 

}
