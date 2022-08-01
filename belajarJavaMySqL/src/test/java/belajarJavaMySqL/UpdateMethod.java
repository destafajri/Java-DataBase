package belajarJavaMySqL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateMethod {
	static String nama_mahasiswa;
	static int id_mahasiswa;

	/**
	 * Update mahasiswa method
	 */
	public void updateTargetID(int id_mahasiswa) {
		// prepare data for update
		UpdateMethod.id_mahasiswa=id_mahasiswa;
		
	}
	public void updateName(String nama_mahasiswa) {

		String sqlUpdate = "UPDATE mahasiswa " + "SET nama_mahasiswa = ? " + "WHERE id_mahasiswa = ?";

		try (Connection conn = MySQLJDBCUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sqlUpdate)) {
			
			UpdateMethod.nama_mahasiswa=nama_mahasiswa;
			pstmt.setString(1, nama_mahasiswa);

			updateTargetID(id_mahasiswa);
			pstmt.setInt(2, id_mahasiswa);

			int rowAffected = pstmt.executeUpdate();
			System.out.println(String.format("update %d", rowAffected));

		} catch (SQLException ex) {
			System.out.println(ex);
		}
		
	}

}
