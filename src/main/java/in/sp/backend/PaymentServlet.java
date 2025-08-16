package in.sp.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/confirmPayment")
public class PaymentServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String roomType = request.getParameter("roomType");
		String roomCount = request.getParameter("roomCount");
		String checkInDate = request.getParameter("checkInDate");
		String checkOutDate = request.getParameter("checkOutDate");
		String guests = request.getParameter("guests");
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String requests = request.getParameter("specialRequests");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "2830@412Ps");
			
			PreparedStatement ps = con.prepareStatement("INSERT INTO bookings(roomType, no_of_rooms, check_in_date, "
					+ "check_out_date, guests, first_name, last_name, email, phone, special_req) "
					+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			ps.setString(1, roomType);
			ps.setString(2, roomCount);
			ps.setString(3, checkInDate);
			ps.setString(4, checkOutDate);
			ps.setString(5, guests);
			ps.setString(6, firstName);
			ps.setString(7, lastName);
			ps.setString(8, email);
			ps.setString(9, phone);
			ps.setString(10, requests);
			
			int count = ps.executeUpdate();
			if(count > 0)
			{
				RequestDispatcher rd = request.getRequestDispatcher("/thankyou.jsp");
				rd.forward(request, response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("/payment.jsp");
				rd.include(request, response);
			}
		}
		catch(Exception e)
		{
			RequestDispatcher rd = request.getRequestDispatcher("/payment.jsp");
			rd.include(request, response);
		}
	}
}
