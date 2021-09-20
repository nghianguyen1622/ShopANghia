package cdw_project.dao.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import cdw_project.dao.BaseDAO;
import cdw_project.entity.BillDetail;
import cdw_project.entity.Bills;
import cdw_project.entity.MapperBillDetail;
import cdw_project.entity.MapperBills;

@Repository
public class BillsDao extends BaseDAO {

	public int AddBills(Bills bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO bills ");
		sql.append("( ");
		sql.append("	id_user, name, phone, email,play_name, address, date, quanty, total, active  ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + bill.getId_user() + "', ");
		sql.append("	'" + bill.getName() + "', ");
		sql.append("    '" + bill.getPhone() + "', ");
		sql.append("    '" + bill.getEmail() + "', ");
		sql.append("    '" + bill.getPlay_name() + "', ");
		sql.append("    '" + bill.getAddress() + "', ");
		sql.append("    '" + bill.getDate() + "', ");
		sql.append("    " + bill.getQuanty() + ", ");
		sql.append("    " + bill.getTotal() + ", ");
		sql.append("    'Chờ xác nhận' ");
		sql.append(");");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public long GetIDlastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	}

	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ");
		sql.append("( ");
		sql.append("	id_product, ");
		sql.append("    id_bills, ");
		sql.append("    quanty, ");
		sql.append("    total, ");
		sql.append("    img, ");
		sql.append("    name_product ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	" + billDetail.getId_product() + ", ");
		sql.append("	" + billDetail.getId_bills() + ", ");
		sql.append("    " + billDetail.getQuanty() + ", ");
		sql.append("    " + billDetail.getTotal() + ", ");
		sql.append("    '" + billDetail.getImg() + "', ");
		sql.append("    '" + billDetail.getName_product() + "' ");
		sql.append(")");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;

	}

	public List<Bills> MyOrder(long userId) {
		String sql = "SELECT * FROM bills WHERE id_user = " + userId + " ORDER BY date DESC";
		List<Bills> listProducts = _jdbcTemplate.query(sql, new MapperBills());
		return listProducts;
	}

	public List<BillDetail> DetailMyOrder(int id) {
		List<BillDetail> list = new ArrayList<BillDetail>();
		String sql = "SELECT * FROM billdetail where id_bills =  " + id + "";
		list = _jdbcTemplate.query(sql, new MapperBillDetail());
		return list;
	}

}
