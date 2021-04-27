package okawari_action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import okawari_model.ActionForward;
import okawari_model.OrderDTO;
import okawari_model.UserDTO;
import okawari_svc.CustomerOrderService;

public class OrderCustomerListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		//세션값 받아오고
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("session");
		
		// 해당 아이디에 대해서 주문list 조회
		CustomerOrderService cos = new CustomerOrderService();
		ArrayList<OrderDTO> list = cos.getOrderList(String.valueOf(dto.getUser_id()+"c"));

		// 출력
		response.setContentType("text/html; charset=utf-8");
		request.setAttribute("list", list);
		
		return new ActionForward("customerOrderList.jsp", false);
	}

}
