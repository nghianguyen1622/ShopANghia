package cdw_project.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import cdw_project.dto.ProductDTO;
import cdw_project.entity.Categorys;
import cdw_project.entity.Slides;
@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categorys> GetDataCategorys();
	public List<Categorys> GetDataCategorys1();
	public List<Categorys> GetDataCategorys2();
	public List<ProductDTO> GetDataProducts();
	public ProductDTO GetNewProduct();
	public List<ProductDTO> GetNewAllProduct();
	public List<ProductDTO> GetBestsellerProduct();
	
}
