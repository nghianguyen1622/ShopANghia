package cdw_project.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.admin.AdminProductDAO;
import cdw_project.dto.ProductDTO;
import cdw_project.service.admin.IAdminProductService;
@Service
public class AdminProductServiceImpl implements IAdminProductService{
	@Autowired
	private AdminProductDAO productDAO;

	public List<ProductDTO> GetDataProduct() {
		
		return productDAO.GetDataProduct();
	}

	public List<ProductDTO> GetDataProductsPaginate(int start, int totalPage) {
		
		return productDAO.GetDataProductsPaginate(start, totalPage);
	}

	public ProductDTO DetailProduct(int id) {
		
		return productDAO.DetailProduct(id);
	}

	public int DeleteProduct(int id) {
		return productDAO.DeleteProduct(id);
	}

	public int AddProduct(ProductDTO productsDto) {
		
		return productDAO.AddProduct(productsDto);
	}

	public void EditProduct(ProductDTO productsDto) {
		productDAO.EditProduct(productsDto);
		
	}

}
