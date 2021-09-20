package cdw_project.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;


import cdw_project.entity.Slides;

@Service
public interface IAdminAdvertisementService {
	public List<Slides> GetDataSlide();
	public Slides DetailAdvertisement(int id);
	public void ChangeAdvertisement(Slides slides);

}
