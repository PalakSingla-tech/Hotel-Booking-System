package in.sp.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/processBooking")
public class RoomBooking extends HttpServlet{

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
			
			PreparedStatement ps = con.prepareStatement("SELECT * FROM rooms WHERE roomType = ?");
			ps.setString(1, roomType);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				int availableRooms = rs.getInt("available_rooms");
				double roomPrice = rs.getFloat("price");
				if(Integer.valueOf(roomCount) <= availableRooms)
				{
					int result = availableRooms - Integer.valueOf(roomCount);
					PreparedStatement ps1 = con.prepareStatement("UPDATE rooms SET available_rooms = ? where roomType = ?");
					ps1.setInt(1, result);
					ps1.setString(2, roomType);
					ps1.executeUpdate();
					
					// Calculate total price
                    double totalPrice = roomPrice * Integer.valueOf(roomCount);
                    
                    // Pass data to payment.jsp
                    request.setAttribute("roomType", roomType);
                    request.setAttribute("roomCount", roomCount);
                    request.setAttribute("checkInDate", checkInDate);
                    request.setAttribute("checkOutDate", checkOutDate);
                    request.setAttribute("guests", guests);
                    request.setAttribute("totalPrice", totalPrice);
                    request.setAttribute("firstName", firstName);
                    request.setAttribute("lastName", lastName);
                    request.setAttribute("email", email);
                    request.setAttribute("phone", phone);
                    request.setAttribute("requests", requests);

                    RequestDispatcher rd = request.getRequestDispatcher("/payment.jsp");
                    rd.forward(request, response);
				}
				else
				{
					// Not enough rooms
                    request.setAttribute("errorMessage", "Only " + availableRooms + " rooms available for " + roomType);
                    RequestDispatcher rd = request.getRequestDispatcher("/booking.jsp");
                    rd.forward(request, response);
				}
			}
			
		}
		catch(Exception e)
		{
			request.setAttribute("errorMessage", "Something went wrong, please try again.");
            RequestDispatcher rd = request.getRequestDispatcher("/booking.jsp");
            rd.forward(request, response);
		}
	}
}
