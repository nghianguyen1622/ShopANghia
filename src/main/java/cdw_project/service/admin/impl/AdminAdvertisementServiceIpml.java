package cdw_project.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cdw_project.dao.admin.AdminAdvertisementDAO;
import cdw_project.entity.Slides;
import cdw_project.service.admin.IAdminAdvertisementService;
@Service
public class AdminAdvertisementServiceIpml implements IAdminAdvertisementService{
	
	@Autowired
	private AdminAdvertisementDAO advertisementDAO;

	public List<Slides> GetDataSlide() {
		
		return advertisementDAO.GetDataSlide();
	}

	public void ChangeAdvertisement(Slides slides) {
		advertisementDAO.ChangeAdvertisement(slides);
		
	}

	public Slides DetailAdvertisement(int id) {
		
		return advertisementDAO.DetailAdvertisement(id);
	}

}
