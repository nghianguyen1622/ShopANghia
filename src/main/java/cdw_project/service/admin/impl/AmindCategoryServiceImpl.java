package cdw_project.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.admin.AdminCategoryDAO;
import cdw_project.entity.Categorys;
import cdw_project.entity.RoleCategory;
import cdw_project.service.admin.IAmindCategoryService;

@Service
public class AmindCategoryServiceImpl implements IAmindCategoryService {
	@Autowired
	private AdminCategoryDAO categoryDAO = new AdminCategoryDAO();

	public List<Categorys> GetDataCategorys() {

		return categoryDAO.GetDataCategorys();
	}
	
	public List<RoleCategory> GetAllDataRoleCategorys() {
		
		return categoryDAO.GetAllDataRoleCategorys();
	}

	public int DeleteCategorys(int id) {

		return categoryDAO.DeleteCategorys(id);
		
	}

	public void EditCategorys(Categorys categorys) {
		categoryDAO.EditCategorys(categorys);;
		
	}

	public Categorys detailCategorys(int id) {
		
		return categoryDAO.detailCategorys(id);
	}

	public int AddCategorys(Categorys categorys) {
		return categoryDAO.AddCategorys(categorys);
	}

	

}
