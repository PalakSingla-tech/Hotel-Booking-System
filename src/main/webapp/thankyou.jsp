<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation - LuxeStay</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gray-50">
    <!-- Include Header -->
    <jsp:include page="include-header.jsp" />

    <div class="max-w-3xl mx-auto px-4 py-12 text-center">
        <div class="bg-white shadow-lg rounded-xl p-8">
            
            <!-- Success Icon -->
            <div class="flex justify-center mb-6">
                <svg class="w-16 h-16 text-green-600" fill="none" stroke="currentColor" stroke-width="2"
                     viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round"
                          d="M9 12l2 2l4-4m6 2a9 9 0 11-18 0a9 9 0 0118 0z"/>
                </svg>
            </div>

            <!-- Message -->
            <h2 class="text-3xl font-bold text-gray-900">Booking Confirmed!</h2>
            <p class="mt-3 text-gray-600">Thank you, <span class="font-semibold">${param.firstName} ${param.lastName}</span>.  
               Your reservation has been successfully completed.</p>

            <!-- Reference -->
            <p class="mt-2 text-sm text-gray-500">Booking Reference: 
                <span class="font-mono font-medium text-gray-800">
                    <%= request.getAttribute("bookingRef") != null ? request.getAttribute("bookingRef") : "LX-" + System.currentTimeMillis() %>
                </span>
            </p>


            <!-- Actions -->
            <div class="mt-10 flex justify-center space-x-4">
                <a href="home.jsp"
                   class="bg-blue-600 text-white px-6 py-3 rounded-lg shadow hover:bg-blue-700 transition font-medium">
                    Back to Home
                </a>
                <a href="my-bookings.jsp"
                   class="bg-gray-100 text-gray-700 px-6 py-3 rounded-lg shadow hover:bg-gray-200 transition font-medium">
                    View My Bookings
                </a>
            </div>
        </div>
    </div>

    <!-- Include Footer -->
    <jsp:include page="include-footer.jsp" />
</body>
</html>
