package NewStudent;

import java.util.*;
import java.sql.*;

public class StudentDao {

	public static Connection getConnection() {
		Connection con1 = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Learning", "Omkaroc", "1234");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con1;
	}

	public static int save(Students s) {
		int status = 0;
		try {
			Connection con1 = StudentDao.getConnection();
			PreparedStatement ps = con1.prepareStatement("insert into Students (name,password,email,city) values (?,?,?,?)");
			ps.setString(1, s.getName());
			ps.setString(2, s.getPassword());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getCity());

			status = ps.executeUpdate();

			con1.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int update(Students s) {
		int status = 0;
		try {
			Connection con1 = StudentDao.getConnection();
			PreparedStatement ps = con1
					.prepareStatement("update Students  set name=?,password=?,email=?,city=? where id=?");
			ps.setString(1, s.getName());
			ps.setString(2, s.getPassword());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getCity());
			ps.setInt(5, s.getId());

			status = ps.executeUpdate();

			con1.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int delete(int id) {
		int status = 0;
		try {
			Connection con1 = StudentDao.getConnection();
			PreparedStatement ps = con1.prepareStatement("delete from Students  where id=?");
			ps.setInt(1, id);
			status = ps.executeUpdate();

			con1.close();
		} catch (Exception s) {
			s.printStackTrace();
		}

		return status;
	}

	public static Students getStudentById(int id) {
		Students s = new Students();

		try {
			Connection con1 = StudentDao.getConnection();
			PreparedStatement ps = con1.prepareStatement("select * from Students  where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setPassword(rs.getString(3));
				s.setEmail(rs.getString(4));
				s.setCity(rs.getString(5));
			}
			con1.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return s;
	}

	public static List<Students> getAllStudent() {
		List<Students> list = new ArrayList<Students>();

		try {
			Connection con1 = StudentDao.getConnection();
			PreparedStatement ps = con1.prepareStatement("select * from Students ");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Students s = new Students();
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setPassword(rs.getString(3));
				s.setEmail(rs.getString(4));
				s.setCity(rs.getString(5));
				list.add(s);
			}
			con1.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}
