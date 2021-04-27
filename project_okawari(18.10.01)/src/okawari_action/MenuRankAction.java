package okawari_action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import okawari_model.ActionForward;
import okawari_model.MenuRankDTO;
import okawari_model.UserDTO;
import okawari_svc.MenuRankService;

public class MenuRankAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		MenuRankService mrs = new MenuRankService();
		// 인기상품 3가지 불러와야 겠지.
		ArrayList<MenuRankDTO> list = mrs.selectPopularMenu();
		
		// 기존 data 삭제
		if(mrs.checkMenuRank()<0) {
			mrs.menuRankDelete();
		}
		// DB에 추가
		if(list.size()>0) {
			mrs.menuRankInsert(list);		
		}
		return null;
		//메뉴 신품표시 new 는 일단 안될것같습니다. 우리 db에 메뉴 등록할때 날짜를 넣지 않습니다. 그래서 확인할 방법이 없습니다.
	}

}
