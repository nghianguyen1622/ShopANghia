package cdw_project.service.user;

import org.springframework.stereotype.Service;

import cdw_project.dto.PaginatesDTO;

@Service
public interface IPaginatesService {
	public PaginatesDTO GetInfoPaginates(int totalData, int limit, int currentPage );

}
