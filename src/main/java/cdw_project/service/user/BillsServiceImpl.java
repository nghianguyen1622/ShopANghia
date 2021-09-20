package cdw_project.service.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.user.BillsDao;
import cdw_project.dto.CartDTO;
import cdw_project.entity.BillDetail;
import cdw_project.entity.Bills;

@Service
public class BillsServiceImpl implements IBillsService {

	@Autowired
	private BillsDao billsDao = new BillsDao();

	public long AddBills(Bills bill) {

		return billsDao.AddBills(bill);
	}

	public void AddBillsDetail(HashMap<Long, CartDTO> carts) {
		long idBills = billsDao.GetIDlastBills();
		for (Map.Entry<Long, CartDTO> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billDetail.setImg(itemCart.getValue().getProduct().getImg());
			billDetail.setName_product(itemCart.getValue().getProduct().getName());
			billsDao.AddBillsDetail(billDetail);
		}

	}

	public List<Bills> MyOrder(long userId) {
		return billsDao.MyOrder(userId);
	}

	public List<BillDetail> DetailMyOrder(int id) {
		
		return billsDao.DetailMyOrder(id);
	}

}
