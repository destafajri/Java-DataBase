package belajarmysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestConnection {

	public static void main(String[] args) {

		Connection conn = null;

		String sql = "SELECT * FROM produk";
		try {
			conn = MySQLJDBCUtil.getConnection();
			// code here
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			// loop through the result set
			while (rs.next()) {
				System.out.println(rs.getString("name") + " " + rs.getInt("price") + "\t" + rs.getString("slug"));
			}

		} catch (SQLException e) {
		}
	}

}
