package cdw_project.service.user;

import java.util.List;

import org.springframework.stereotype.Service;

import cdw_project.dto.ProductDTO;
@Service
public interface ICategoryService {

	
	public List<ProductDTO> GetAllProductsByID(int id);
//	public List<ProductDTO> GetDataProductsPaginate(int start, int end);
	public List<ProductDTO> GetDataProductsPaginate(int id, int start, int totalPage) ;
}
