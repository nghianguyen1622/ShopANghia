package cdw_project.service.admin;

import org.springframework.stereotype.Service;

import cdw_project.dto.PaginatesDTO;
@Service
public interface IAdminPaginateService {
	public PaginatesDTO GetInfoPaginates (int totalData, int limit , int currentPage);

}
