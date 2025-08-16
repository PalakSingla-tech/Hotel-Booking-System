<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Bookings - LuxeStay</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gray-50">
    <!-- Include Header -->
    <jsp:include page="include-header.jsp" />

    <div class="max-w-6xl mx-auto px-4 py-10">
        <h2 class="text-3xl font-bold text-gray-900 mb-6">My Bookings</h2>

        <!-- Booking Table -->
        <div class="bg-white shadow-lg rounded-lg overflow-hidden">
            <table class="w-full table-auto text-left">
                <thead class="bg-gray-100 text-gray-700">
                    <tr>
                        <th class="px-6 py-4 text-sm font-semibold">Reference</th>
                        <th class="px-6 py-4 text-sm font-semibold">Room Type</th>
                        <th class="px-6 py-4 text-sm font-semibold">Guests</th>
                        <th class="px-6 py-4 text-sm font-semibold">Check-in</th>
                        <th class="px-6 py-4 text-sm font-semibold">Check-out</th>
                        <th class="px-6 py-4 text-sm font-semibold">Total</th>
                        <th class="px-6 py-4 text-sm font-semibold">Status</th>
                        <th class="px-6 py-4 text-sm font-semibold">Actions</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-gray-200">
                    <!-- Example Booking Row -->
                    <tr class="hover:bg-gray-50">
                        <td class="px-6 py-4 font-mono">LX-1723801234</td>
                        <td class="px-6 py-4">Deluxe King</td>
                        <td class="px-6 py-4">2</td>
                        <td class="px-6 py-4">2025-08-20</td>
                        <td class="px-6 py-4">2025-08-23</td>
                        <td class="px-6 py-4 text-green-600 font-semibold">$597</td>
                        <td class="px-6 py-4">
                            <span class="px-3 py-1 rounded-full text-sm bg-green-100 text-green-700">Confirmed</span>
                        </td>
                        <td class="px-6 py-4 space-x-2">
                            <a href="booking-details.jsp?ref=LX-1723801234" 
                               class="text-blue-600 hover:underline text-sm">View</a>
                            <a href="cancelBooking?ref=LX-1723801234"
                               class="text-red-600 hover:underline text-sm">Cancel</a>
                        </td>
                    </tr>

                    <!-- Example Upcoming Booking -->
                    <tr class="hover:bg-gray-50">
                        <td class="px-6 py-4 font-mono">LX-1723894567</td>
                        <td class="px-6 py-4">Executive Suite</td>
                        <td class="px-6 py-4">4</td>
                        <td class="px-6 py-4">2025-09-05</td>
                        <td class="px-6 py-4">2025-09-10</td>
                        <td class="px-6 py-4 text-green-600 font-semibold">$1745</td>
                        <td class="px-6 py-4">
                            <span class="px-3 py-1 rounded-full text-sm bg-yellow-100 text-yellow-700">Upcoming</span>
                        </td>
                        <td class="px-6 py-4 space-x-2">
                            <a href="booking-details.jsp?ref=LX-1723894567" 
                               class="text-blue-600 hover:underline text-sm">View</a>
                            <a href="cancelBooking?ref=LX-1723894567"
                               class="text-red-600 hover:underline text-sm">Cancel</a>
                        </td>
                    </tr>

                    <!-- Example Past Booking -->
                    <tr class="hover:bg-gray-50">
                        <td class="px-6 py-4 font-mono">LX-1723567890</td>
                        <td class="px-6 py-4">Standard Twin</td>
                        <td class="px-6 py-4">1</td>
                        <td class="px-6 py-4">2025-07-10</td>
                        <td class="px-6 py-4">2025-07-12</td>
                        <td class="px-6 py-4 text-green-600 font-semibold">$258</td>
                        <td class="px-6 py-4">
                            <span class="px-3 py-1 rounded-full text-sm bg-gray-200 text-gray-700">Completed</span>
                        </td>
                        <td class="px-6 py-4">
                            <a href="booking-details.jsp?ref=LX-1723567890" 
                               class="text-blue-600 hover:underline text-sm">View</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- No Bookings Message -->
        <div class="text-center mt-8 text-gray-600" style="display:none;" id="noBookingsMsg">
            <p>You don’t have any bookings yet.</p>
            <a href="booking.jsp" 
               class="inline-block mt-4 bg-blue-600 text-white px-6 py-3 rounded-lg shadow hover:bg-blue-700 transition">
               Make a Booking
            </a>
        </div>
    </div>

    <!-- Include Footer -->
    <jsp:include page="include-footer.jsp" />

    <script>
        // If no bookings (dynamic check from backend), show empty state
        document.addEventListener('DOMContentLoaded', function() {
            const hasBookings = document.querySelectorAll('tbody tr').length > 0;
            if (!hasBookings) {
                document.querySelector('table').style.display = 'none';
                document.getElementById('noBookingsMsg').style.display = 'block';
            }
        });
    </script>
</body>
</html>
