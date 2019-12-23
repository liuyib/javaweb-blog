package blog.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blog.db.C3P0Connection;
import blog.utils.DBUtils;

/**
 * Login->index.jsp->init data
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		int repeatNum = 0;
		Statement statement = null;
		List<String> usernames = new ArrayList<String>();
		Connection connection = (Connection) C3P0Connection.getInstance().getConnection();
		ResultSet rs = null;
		try {
			statement = (Statement) connection.createStatement();
			String sql = "select user_name from t_user";
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				usernames.add(rs.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (String name : usernames) {
			if (name.equals(username))
				repeatNum = 1;
		}

		if (repeatNum != 1) {
			if (password.equals(repassword)) {
				String sql1 = "insert into t_user values(NULL,?,?)";
				try {
					PreparedStatement ps = connection.prepareStatement(sql1);
					ps.setString(1, username);
					ps.setString(2, password);
					int count = 0;
					count = ps.executeUpdate();
					DBUtils.Close(connection, statement, rs);
					if (ps != null)
						ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				response.sendRedirect("login.jsp");

			} else {
				request.setAttribute("fail", "密码不一致");
				request.getRequestDispatcher("/register.jsp").forward(request, response);
			}

		} else {
			request.setAttribute("fail", "此用户已存在");
			request.getRequestDispatcher("/register.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
