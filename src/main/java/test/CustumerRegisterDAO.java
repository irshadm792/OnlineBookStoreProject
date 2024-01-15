package test;
import java.sql.*;
public class CustumerRegisterDAO {
		public int k =0;
		public int insert(CustomerBean cb){
			try {
				Connection con =DBConnection.getCon();
				PreparedStatement ps=con.prepareStatement("insert into userRegister values(?,?,?,?,?,?,?)");
				ps.setString(1, cb.getUname());
				ps.setString(2, cb.getPword());
				ps.setString(3, cb.getFname());
				ps.setNString(4, cb.getLname());
				ps.setString(5, cb.getAddr());
				ps.setString(6, cb.getMido());
				ps.setLong(7, cb.getPhno());
				k=ps.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}
			return k;
		}
}
