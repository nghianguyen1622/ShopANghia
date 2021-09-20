package cdw_project.dao.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cdw_project.dao.BaseDAO;
import cdw_project.entity.BillDetail;
import cdw_project.entity.Bills;
import cdw_project.entity.MapperBillDetail;
import cdw_project.entity.MapperBills;

@Repository
@Transactional
public class AdminOderDAO extends BaseDAO {
	public List<Bills> GetDataBills() {
		List<Bills> list = new ArrayList<Bills>();
		String sql = "SELECT * FROM bills";
		list = _jdbcTemplate.query(sql, new MapperBills());
		return list;
	}

	public List<BillDetail> DetailOder(int id) {
		List<BillDetail> list = new ArrayList<BillDetail>();
		String sql = "SELECT * FROM billdetail where id_bills =  " + id + "";
		list = _jdbcTemplate.query(sql, new MapperBillDetail());
		return list;

	}

	public int Confirm(int id) {
		String sql = "UPDATE bills SET active = 'Đã xác nhận' WHERE id =  " + id + "";
		int list = _jdbcTemplate.update(sql);
		return list;
	}
	public int Delivery(int id) {
		String sql = "UPDATE bills SET active = 'Đang giao hàng' WHERE id =  " + id + "";
		int list = _jdbcTemplate.update(sql);
		return list;
	}
	
	public int Success(int id) {
		String sql = "UPDATE bills SET active = 'Đơn hàng đã giao' WHERE id =  " + id + "";
		int list = _jdbcTemplate.update(sql);
		return list;
	}

	public List<Bills> GetQuantyConfirm() {
		List<Bills> list = new ArrayList<Bills>();
		String sql = "SELECT * FROM bills WHERE active = 'Chờ xác nhận'";
		list = _jdbcTemplate.query(sql, new MapperBills());
		return list;
	}

	// Tổng doanh thu
	

}
