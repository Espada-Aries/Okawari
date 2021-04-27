package okawari_action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import okawari_model.ActionForward;
import okawari_model.UserDTO;
import okawari_svc.LoginService;

public class FindIdPasswdAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		ActionForward af = null;
		// 아이디와 비밀번호를 입력받아 DB에 해당 객체가 존재하는지 파악한다.
		request.setCharacterEncoding("utf-8");
		String user_id = request.getParameter("user_id");
		String user_pass = null;
		String user_name = request.getParameter("user_name");
		String user_manager = request.getParameter("user_manager");
		String user_businum = request.getParameter("user_businum");
		
		// 서버 있는지 확인
		LoginService ls = new LoginService();
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		// 아이디를 찾는다..
		if(user_id==null) {
			user_id = ls.findUserIDService(user_name, user_manager, user_businum);
			
			if(user_id==null) {
				out.print("<script>");
				out.print("alert('一致するユーザーがございません。');");
				out.print("window.close()");
				out.print("</script>");
				out.flush();
			}else {
				out.print("<script>");
				out.print("alert('ユーザーIDとは "+user_id+" でございます。');");
				out.print("window.close()");
				out.print("</script>");
				out.flush();
			}			
		}else {
			user_pass = ls.findUserPassService(user_id, user_manager, user_businum);			
			if(user_pass==null) {
				out.print("<script>");
				out.print("alert('一致するIDがございません。');");
				out.print("window.close()");
				out.print("</script>");
				out.flush();
			}else {
				out.print("<script>");
				out.print("alert('ご入力頂いたIDとのパスワードは "+user_pass+" でございます。');");
				out.print("window.close()");
				out.print("</script>");
				out.flush();
				
			}
		}
		
		return null;

	}

}
