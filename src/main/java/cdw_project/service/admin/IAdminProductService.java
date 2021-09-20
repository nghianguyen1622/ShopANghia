package cdw_project.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import cdw_project.dto.ProductDTO;

@Service
public interface IAdminProductService {

	public List<ProductDTO> GetDataProduct();
	public List<ProductDTO> GetDataProductsPaginate(int start, int totalPage);
	public ProductDTO DetailProduct(int id);
	public int DeleteProduct(int id);
	public int AddProduct(ProductDTO productsDto);
	public void EditProduct(ProductDTO productsDto);
}
