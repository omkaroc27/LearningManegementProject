
	package dbconnection;

	import java.sql.*;


	public class DbConnection {
	    private static Connection con;
	    
	    public static Connection getConnection(){
	        try{
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Learning","Omkaroc","1234");
	            DbConnection.setAutoCommit(false);
	        }catch(Exception e){
	            e.printStackTrace();
	        }
	        return con;
	    }

		private static void setAutoCommit(boolean b) {
			// TODO Auto-generated method stub
			
		}
	}


