package belajarJavaMySqL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestConnection {

	public static void main(String[] args) {

		Connection conn = null;

		// Create or insert a new mahasiswa
		int id = insertMahasiswa(0, "Paijo", "P", "uji coba", 2);
		System.out.println(String.format("A new mahasiswa with id %d has been inserted.", id));

		// Read or Select
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
		
		//Update
		update();
		
		//Delete
		delete(27); //input id_mahasiswa

	}
	
	

	/**
	 * Created or Insert mahasiswa method
	 */
	public static int insertMahasiswa(int id_mahasiswa, String nama_mahasiswa, String jenis_kelamin, String alamat,
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

		return mahasiswaId;
	}
	
	
	
	 /**
     * Update mahasiswa method
     */
    public static void update() {

        String sqlUpdate = "UPDATE mahasiswa "
                + "SET nama_mahasiswa = ? "
                + "WHERE id_mahasiswa = ?";
        
        try (Connection conn = MySQLJDBCUtil.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(sqlUpdate)) {

            // prepare data for update
            String nama_mahasiswa = "Lily";
            int id_mahasiswa = 12;
            pstmt.setString(1, nama_mahasiswa);
            pstmt.setInt(2, id_mahasiswa);

            int rowAffected = pstmt.executeUpdate();
            
            // reuse the prepared statement
            nama_mahasiswa = "otong";
            id_mahasiswa = 12;
            pstmt.setString(1, nama_mahasiswa);
            pstmt.setInt(2, id_mahasiswa);

            rowAffected = pstmt.executeUpdate();
            System.out.println(String.format("update %d", rowAffected));

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
    
	/**
	 * Delete or remove mahasiswa method
	 */
    public static void delete(int id) {

        String sqlDelete = "DELETE FROM mahasiswa "
        				+"WHERE id_mahasiswa = ?";
        
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
