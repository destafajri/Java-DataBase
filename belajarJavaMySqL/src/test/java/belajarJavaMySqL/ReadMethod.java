package belajarJavaMySqL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ReadMethod {
	Connection conn = null;

	public void Read() {
		String sqlSelect = "SELECT * FROM mahasiswa";
		try {
			conn = MySQLJDBCUtil.getConnection();
			// code here
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sqlSelect);

			// loop through the result set
			while (rs.next()) {
				System.out.println(rs.getString("nama_mahasiswa") + " dari==>" + rs.getString("alamat"));
			}

		} catch (SQLException e) {
		}
	}

}
