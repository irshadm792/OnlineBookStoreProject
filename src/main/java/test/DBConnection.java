package test;
import java.sql.*;
import static test.DBInfo.*;
public class DBConnection {
	private static Connection con =null;
	private DBConnection() {}
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con= DriverManager.getConnection(DBurl,uId,pWord);
		}catch(Exception e) {
			e.printStackTrace();
				}
		}
	
	public static Connection getCon() {
		return con;
	}

}


