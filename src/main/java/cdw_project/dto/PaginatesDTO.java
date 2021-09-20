package cdw_project.dto;

/*
 * Định nghĩa phân tran theo
 * Số trang, giới hạn sản phẩm trong 1 trang, bắt đầu tại số trang, vị trí kết thúc, tổng số trang
 */
public class PaginatesDTO {
	private int currentPage, limit, start, end, totalPage;

	public PaginatesDTO() {
		super();
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	
}
