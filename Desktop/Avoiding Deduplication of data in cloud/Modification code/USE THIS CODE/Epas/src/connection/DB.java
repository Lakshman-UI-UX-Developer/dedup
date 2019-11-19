package connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DB {

	public static Connection getconn() throws SQLException, ClassNotFoundException{
		
		Class.forName("com.mysql.jdbc.Driver");
		  Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/edm","root","root");
		 return con; 		
	}
}
