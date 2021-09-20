package cdw_project.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.admin.AdminOderDAO;
import cdw_project.entity.BillDetail;
import cdw_project.entity.Bills;
import cdw_project.service.admin.IAdminOderService;

@Service
public class AdminOderServiceImpl implements IAdminOderService{

	@Autowired
	private AdminOderDAO oderDAO;
	
	public List<Bills> GetDataBills() {		
		return oderDAO.GetDataBills();
	}

	public List<BillDetail> DetailOder(int id) {
		
		return oderDAO.DetailOder(id);
	}

	public int Confirm(int id) {
		// TODO Auto-generated method stub
		return oderDAO.Confirm(id);
	}

	public int Delivery(int id) {
		// TODO Auto-generated method stub
		return oderDAO.Delivery(id);
	}

	public int Success(int id) {
		// TODO Auto-generated method stub
		return oderDAO.Success(id);
	}

	public List<Bills> GetQuantyConfirm() {
		// TODO Auto-generated method stub
		return oderDAO.GetQuantyConfirm();
	}

}
