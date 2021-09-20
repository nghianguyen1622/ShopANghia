package cdw_project.service.user;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import cdw_project.dto.CartDTO;
import cdw_project.entity.BillDetail;
import cdw_project.entity.Bills;

@Service
public interface IBillsService {
	public long AddBills(Bills bill);
	public void AddBillsDetail(HashMap<Long, CartDTO> carts);
	
	public List<Bills> MyOrder(long userId) ;
	public List<BillDetail> DetailMyOrder(int id) ;

}
