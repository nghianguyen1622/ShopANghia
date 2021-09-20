package cdw_project.service.admin.impl;

import org.springframework.stereotype.Service;

import cdw_project.dto.PaginatesDTO;
import cdw_project.service.admin.IAdminPaginateService;

@Service
public class AdminPaginateServiceImpl implements IAdminPaginateService{

	public PaginatesDTO GetInfoPaginates (int totalData, int limit , int currentPage) {
		PaginatesDTO paginatesDto = new PaginatesDTO();
		paginatesDto.setLimit(limit);
		paginatesDto.setTotalPage(ISetInfoTotalPage(totalData, limit));
		paginatesDto.setCurrentPage(CheckCurrentPage(currentPage, paginatesDto.getTotalPage()));
		
		
		int start = FindStart(paginatesDto.getCurrentPage(), limit);
		paginatesDto.setStart(start);
		int end = FindEnd(paginatesDto.getStart(), limit,totalData);
		paginatesDto.setEnd(end);
		return paginatesDto;
	}

	private int FindEnd(int start, int limit, int totalData) {
		
		return start + limit > totalData ? totalData : (start + limit) -1;
	}

	private int FindStart(int currentPage, int limit) {
		
		return ((currentPage - 1) * limit) + 1;
	}

	private int ISetInfoTotalPage(int totalData, int limit) {
		int totalPage =  0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;
	}
	
	
	
	public int CheckCurrentPage(int currentPage,int totalPage) {
		if(currentPage < 1 ) {
			return 1;
			
		} if(currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}


}
