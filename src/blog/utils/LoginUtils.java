package blog.utils;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blog.dao.UserDao;
import blog.daoImpl.UserDaoImpl;
import blog.model.User;

public class LoginUtils {

	public static boolean login(HttpServletRequest request) {
		HttpSession session = request.getSession();
		// 获取session中所有的键值
		Enumeration<String> attrs = session.getAttributeNames();

		while (attrs.hasMoreElements()) {
			// 获取session键值
			String name = attrs.nextElement().toString();
			// 根据键值取session中的值
			Object value = session.getAttribute(name);

			// 已经登录
			if (name == "user" && value != null) {
				return true;
			}
		}

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
		session.setAttribute("user", user);

		return true;
	}

}
