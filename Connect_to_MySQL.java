import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Connect_to_MySQL {

	public static void main(String[] args) throws ClassNotFoundException {
		
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Connect MySQL to Java Successful!!!");
			
			String datasource = "jdbc:mysql://140.114.79.166:3306/openbaton?user=mnetlab&password=lab731&useSSL=true";
			conn = DriverManager.getConnection(datasource);
			System.out.println("Connect OpenBaton Database Successful!!!");
			
			Statement st = conn.createStatement();
			st.execute("SELECT * FROM ip");
			ResultSet rs = st.getResultSet();
			
			while(rs.next()) {
				System.out.println(rs.getString("id")+" "+rs.getString("hb_version")+" "+rs.getString("project_id")+" "+rs.getString("shared")+" "+rs.getString("ip")+" "+rs.getString("net_name"));
			}
		}catch(Exception e) {
			System.out.println("?");
		}

	}
	
}
