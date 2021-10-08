package magic.board;

public class PageOption {
	int pageSize;
	int pageLimit;
	
	public PageOption(int pageSize, int pageLimit) {
		this.pageSize = pageSize;
		this.pageLimit = pageLimit;
	}
	
	public int getPageSize() {
		return pageSize;
	}
	
	public int getPageLimit() {
		return pageLimit;
	}
}
