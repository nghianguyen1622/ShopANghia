package cdw_project.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.admin.AdminCategoryDAO;
import cdw_project.dao.admin.AdminOderDAO;
import cdw_project.entity.Bills;
import cdw_project.entity.Categorys;
import cdw_project.service.admin.IHomeAdminService;
@Service
public class AdminHomeServiceImpl implements IHomeAdminService{

	@Autowired
	private AdminCategoryDAO categoryDAO = new AdminCategoryDAO();
	


	public List<Categorys> GetDataCategorys() {
		
		return categoryDAO.GetDataCategorys();
	}




}
