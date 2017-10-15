package conn;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class Conn {
	public Connection getCon() {

		try {
			Class.forName("com.mysql.jdbc.Driver");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String url = "jdbc:mysql://localhost/jkxystudent?useUnicode=true&characterEncoding=utf-8";
		String user = "root";
		String password = "admin";
		try {
			Connection conn = (Connection) DriverManager.getConnection(url, user, password);
			System.out.println(conn.getMetaData().getURL());
			return conn;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
}
