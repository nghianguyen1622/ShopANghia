package cdw_project.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.user.CategorysDAO;
import cdw_project.dao.user.ProductDAO;
import cdw_project.dao.user.SlidesDAO;
import cdw_project.dto.ProductDTO;
import cdw_project.entity.Categorys;
import cdw_project.entity.Slides;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDAO slidesDAO;
	@Autowired
	private CategorysDAO categorysDAO;
	@Autowired
	private ProductDAO productDAO;

	public List<Slides> GetDataSlide() {

		return slidesDAO.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {

		return categorysDAO.GetDataCategorys();
	}

	public List<ProductDTO> GetDataProducts() {
		List<ProductDTO> list = productDAO.GetDataProducts();
		return list;
	}

	public List<Categorys> GetDataCategorys1() {
		return categorysDAO.GetDataCategorys1();
	}

	public List<Categorys> GetDataCategorys2() {
		return categorysDAO.GetDataCategorys2();
	}

	public ProductDTO GetNewProduct() {

		return productDAO.GetNewProduct();
	}

	public List<ProductDTO> GetNewAllProduct() {
		
		return productDAO.GetNewAllProduct();
	}

	public List<ProductDTO> GetBestsellerProduct() {
		// TODO Auto-generated method stub
		return productDAO.GetBestsellerProduct();
	}

}
