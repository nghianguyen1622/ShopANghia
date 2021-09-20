package cdw_project.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.user.ProductDAO;
import cdw_project.dto.ProductDTO;
@Service
public class CategoryServiceImpl implements ICategoryService{
	
	@Autowired
	private ProductDAO productDAO;

//	public List<ProductDTO> GetDataProductsPaginate(int start, int end) {
//		
//		return productDAO.GetDataProductsPaginate(start, end);
//	}

	public List<ProductDTO> GetAllProductsByID(int id) {
		
		return productDAO.GetAllProductsByID(id);
	}
	public List<ProductDTO> GetDataProductsPaginate(int id, int start, int totalPage) {
		return productDAO.GetDataProductsPaginate(id, start, totalPage);
	}

}
