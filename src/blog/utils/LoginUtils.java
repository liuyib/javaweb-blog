package blog.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blog.dao.UserDao;
import blog.daoImpl.UserDaoImpl;
import blog.model.User;

public class LoginUtils {

	public static boolean login(HttpServletRequest request) {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
			return false;
		}

		UserDao dao = UserDaoImpl.getInstance();
		User user = dao.login(username, password);

		if (user == null) {
			return false;
		}

		// 写入session
		HttpSession session = request.getSession();
		session.setAttribute("user", user);

		return true;
	}

}
