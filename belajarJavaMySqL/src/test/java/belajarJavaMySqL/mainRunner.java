package belajarJavaMySqL;

public class mainRunner {

	public static void main(String[] args) {

		// Create or insert a new mahasiswa
		CreateMethod mhs = new CreateMethod();
		mhs.insertMahasiswa(0, "PaijoRoyoLoyoo", "L", "uji coba", 2);

		// Read or Select
		ReadMethod read =new ReadMethod();
		read.Read();
		
		
		// Update
		UpdateMethod mhsUpdate =new UpdateMethod();
		mhsUpdate.updateTargetID(12);// input id_mahasiswa
		mhsUpdate.updateName("otongSurotong");// input new mahasiswa_nama

		// Delete
		DeleteMethod mhsDel = new DeleteMethod();
		mhsDel.delete(29); // input id_mahasiswa

	}

	


}
