package test;
import java.sql.*;

public class CustomerLoginDAO {
	public CustomerBean cb;
	public CustomerBean login(String uname, String pword) {
		try {
			Connection con =DBConnection.getCon();
			PreparedStatement ps =con.prepareStatement("Select * from UserRegister where uname=? and pword=?");
			ps.setString(1, uname);
			ps.setString(2, pword);
			ResultSet rs =ps.executeQuery();
			if(rs.next()) {
				cb=new CustomerBean();
				cb.setUname(rs.getString(1));
				cb.setPword(rs.getString(2));
				cb.setFname(rs.getString(3));
				cb.setLname(rs.getString(4));
				cb.setAddr(rs.getString(5));
				cb.setMido(rs.getString(6));
				cb.setPhno(rs.getLong(7));
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cb;
	}
}
