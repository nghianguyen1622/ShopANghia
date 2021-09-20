package cdw_project.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.admin.AdminAccountDAO;
import cdw_project.entity.Users;
import cdw_project.service.admin.IAmindAccountService;
@Service
public class AdminAccountServiceImpl implements IAmindAccountService{
	
	@Autowired
	private AdminAccountDAO accountDAO;

	public List<Users> GetDataUser() {
		
		return accountDAO.GetDataUser();
	}

	public int Admin(int id) {
		
		return accountDAO.Admin(id);
	}

}
