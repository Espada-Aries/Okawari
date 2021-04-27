package okawari_svc;

import okawari_dao.OkawariDAO;
import okawari_model.UserDTO;

public class LoginService {

	public UserDTO loginUser(String user_id, String user_pass) {

		OkawariDAO dao = new OkawariDAO();
		UserDTO dto = dao.login(user_id, user_pass);
		return dto;
	}

	public String findUserIDService(String user_name, String user_manager, String user_businum) {
		OkawariDAO dao = new OkawariDAO();
		return dao.findUserId(user_name, user_manager, user_businum);
	}

	public String findUserPassService(String user_id, String user_manager, String user_businum) {
		OkawariDAO dao = new OkawariDAO();
		return dao.findUserPasswd(user_id, user_manager, user_businum);
	}

}
