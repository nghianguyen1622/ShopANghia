package cdw_project.service.user;


import java.util.List;

import org.springframework.stereotype.Service;

import cdw_project.dto.ProductDTO;
import cdw_project.entity.BillDetail;

@Service
public interface IProductService {
	public ProductDTO GetProductByID(int id);	// lấy sản phẩm theo id
	public List<ProductDTO>  GetProductByIDCategory(int id); // lấy sản phẩm theo id của Category
	
	public List<ProductDTO> search(String text);
	public List<BillDetail> sold(long id);
	
}

