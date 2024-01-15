package test;
import java.sql.*;
import java.util.*;
public class ViewBookDetailsDAO {
	public ArrayList<BookBean> al =new ArrayList<BookBean>();
	public ArrayList<BookBean> retrive(){
		try {
			Connection con =DBConnection.getCon();
			PreparedStatement ps =con.prepareStatement("Select * From BookDetails");
			ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				BookBean bb =new BookBean();
				bb.setCode(rs.getString(1));
				bb.setName(rs.getString(2));
				bb.setAuthor(rs.getString(3));
				bb.setPrice(rs.getFloat(4));
				bb.setQty(rs.getInt(5));
				al.add(bb);
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return al;
	}

}
