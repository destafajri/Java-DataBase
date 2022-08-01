package belajarJavaMySqL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteMethod {
	/**
	 * Delete or remove mahasiswa method
	 */
	public void delete(int id) {

		String sqlDelete = "DELETE FROM mahasiswa " + "WHERE id_mahasiswa = ?";

		try (Connection conn = MySQLJDBCUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sqlDelete)) {

			// prepare data for delete
			int id_mahasiswa = id;
			pstmt.setInt(1, id_mahasiswa);

			int row = pstmt.executeUpdate();
			System.out.println(String.format("delete %d", row));

		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	}

}
