package cdw_project.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import cdw_project.entity.BillDetail;
import cdw_project.entity.Bills;

@Service
public interface IAdminOderService {
	public List<Bills> GetDataBills();
	public List<BillDetail> DetailOder(int id) ;
	public int Confirm(int id);
	public int Delivery(int id);
	public int Success(int id);
	public List<Bills> GetQuantyConfirm();
}
