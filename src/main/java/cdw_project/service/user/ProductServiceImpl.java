package cdw_project.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.user.ProductDAO;
import cdw_project.dto.ProductDTO;
import cdw_project.entity.BillDetail;
@Service
public class ProductServiceImpl implements IProductService{

	@Autowired
	ProductDAO dao = new ProductDAO();
	
	public ProductDTO GetProductByID(int id) {
		List<ProductDTO> list = dao.GetProductByID(id);
		
		return list.get(0);
	}

	public List<ProductDTO> GetProductByIDCategory(int id) {
		
		return dao.GetAllProductsByID(id);
	}

	public List<ProductDTO> search(String text) {
		List<ProductDTO> products = dao.search( text);
		return products;
	}
	// đã bán
	public List<BillDetail> sold(long id) {
		
		return dao.sold(id);
	}



}
