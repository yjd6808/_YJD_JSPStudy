package magic.board;

import java.util.ArrayList;

class Page<T> {
	private int pageNumber;			// ���� �����ִ� ������ ��ȣ
	private int pageCount;			// �� ������ ����
	private PageOption pageOption;
	private ArrayList<T> boards;
	
	public Page(int pageNumber, int pageCount, PageOption pageOption) {
		this.pageNumber = pageNumber;
		this.pageCount = pageCount;
		this.pageOption = pageOption;
		this.boards = new ArrayList<T>();
	}
	
	void addBoard(T board) {
		boards.add(board);
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public int getPageCount() {
		return pageCount;
	}

	public ArrayList<T> getBoards() {
		return boards;
	}
	
	public boolean isLastPage() {
		return true;
	}
	
	public boolean isFirstPage() {
		return true;
	}

	public PageOption getPageOption() {
		return pageOption;
	}
}

