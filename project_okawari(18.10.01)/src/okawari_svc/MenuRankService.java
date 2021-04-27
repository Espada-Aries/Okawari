package okawari_svc;

import java.util.ArrayList;

import okawari_dao.OkawariDAO;
import okawari_model.MenuRankDTO;
import okawari_model.UserDTO;

public class MenuRankService {

	public ArrayList<MenuRankDTO> selectPopularMenu() {
		OkawariDAO dao = new OkawariDAO();
		return dao.selectPopularMenu();
		
	}
	
	public void menuRankDelete() {
		OkawariDAO dao = new OkawariDAO();
		dao.menuRankDelete();
		
	}

	public void menuRankInsert(ArrayList<MenuRankDTO> list) {
		OkawariDAO dao = new OkawariDAO();
		for(int i=0; i<list.size(); i++) {
			dao.menuRankInsert(list.get(i).getMenu_num());
			if(i==2) {
				break;
			}
		}		
		
	}

	public ArrayList<MenuRankDTO> selectMenuRank() {
		OkawariDAO dao = new OkawariDAO();
		return dao.menuRankSelect();
	}
	
	public int checkMenuRank() {
		OkawariDAO dao = new OkawariDAO();
		return dao.menuRankCheck();
	}

	
}
