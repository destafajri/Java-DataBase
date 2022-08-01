package belajarJavaMySqL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateMethod {
	
	public CreateMethod() {
		
	}
	/**
	 * Created or Insert mahasiswa method
	 * @return 
	 * @return 
	 * @return 
	 */
	public int insertMahasiswa(int id_mahasiswa, String nama_mahasiswa, String jenis_kelamin, String alamat,
			int id_dosen) {
		// for insert a new candidate
		ResultSet rs = null;
		int mahasiswaId = 0;

		String sqlCreated = "INSERT INTO mahasiswa(id_mahasiswa,nama_mahasiswa,jenis_kelamin,alamat,id_dosen)"
				+ "VALUES (?,?,?,?,?)"; // Create or Insert;

		try (Connection conn = MySQLJDBCUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sqlCreated, Statement.RETURN_GENERATED_KEYS);) {

			// set parameters for statement
			pstmt.setInt(1, id_mahasiswa);
			pstmt.setString(2, nama_mahasiswa);
			pstmt.setString(3, jenis_kelamin);
			pstmt.setString(4, alamat);
			pstmt.setInt(5, id_dosen);

			int rowAffected = pstmt.executeUpdate();
			if (rowAffected == 1) {

				// get candidate id
				rs = pstmt.getGeneratedKeys();
				if (rs.next())
					mahasiswaId = rs.getInt(1);

			}
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		System.out.println(String.format("A new mahasiswa with id %d has been inserted.", mahasiswaId));
		return mahasiswaId;
		
	}

}
