<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment - LuxeStay</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gray-50">
    <!-- Include Header -->
    <jsp:include page="include-header.jsp" />

    <div class="max-w-4xl mx-auto px-4 py-8">
        <div class="bg-white rounded-lg shadow-lg overflow-hidden">
            
            <!-- Page Header -->
            <div class="bg-green-600 text-white p-6">
                <h2 class="text-2xl font-bold"> Confirm & Pay</h2>
                <p class="mt-2 opacity-90">Review your booking details and complete your payment</p>
            </div>

            <!-- Booking Summary -->
            <div class="p-6 border-b">
                <h3 class="text-lg font-semibold text-gray-900 mb-4">Booking Summary</h3>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4 text-sm text-gray-700">
                    <p><span class="font-medium">Room Type: <%= request.getAttribute("roomType") %></span></p>
                    <p><span class="font-medium">No. of Rooms: <%= request.getAttribute("roomCount") %></span></p>
                    <p><span class="font-medium">Check-in: <%= request.getAttribute("checkInDate") %></span></p>
                    <p><span class="font-medium">Check-out: <%= request.getAttribute("checkOutDate") %></span></p>
                    <p><span class="font-medium">Guests: <%= request.getAttribute("guests") %></span></p>
                </div>
            </div>

            <!-- Payment Form -->
            <form action="confirmPayment" method="post" class="p-6 space-y-6">
				<input type="hidden" name="roomType" value="${roomType}">
			    <input type="hidden" name="roomCount" value="${roomCount}">
			    <input type="hidden" name="checkInDate" value="${checkInDate}">
			    <input type="hidden" name="checkOutDate" value="${checkOutDate}">
			    <input type="hidden" name="guests" value="${guests}">
			    <input type="hidden" name="totalPrice" value="${totalPrice}">
			    <input type="hidden" name="firstName" value="${firstName}">
			    <input type="hidden" name="lastName" value="${lastName}">
			    <input type="hidden" name="email" value="${email}">
			    <input type="hidden" name="phone" value="${phone}">
			    <input type="hidden" name="requests" value="${requests}">
                <!-- Total Price -->
                <div class="mt-6 flex justify-between items-center border-t pt-4">
                    <span class="text-lg font-semibold text-gray-900">Total:</span>
                    <span class="text-2xl font-bold text-green-600">$<%= request.getAttribute("totalPrice") != null ? request.getAttribute("totalPrice") : "—" %></span>
                </div>

                <!-- Submit Button -->
                <button type="submit"
                        class="w-full bg-green-600 text-white py-4 px-6 rounded-lg hover:bg-green-700 transition-colors font-medium text-lg">
                    Confirm Payment
                </button>
            </form>
        </div>
    </div>

    <!-- Include Footer -->
    <jsp:include page="include-footer.jsp" />

    <script>
        // Card formatting
        document.addEventListener('DOMContentLoaded', function () {
            const cardInput = document.querySelector('input[name="cardNumber"]');
            const expiryInput = document.querySelector('input[name="expiryDate"]');
            
            cardInput.addEventListener('input', function(e) {
                let value = e.target.value.replace(/\s+/g, '').replace(/[^0-9]/gi, '');
                let formattedValue = value.match(/.{1,4}/g)?.join(' ') || value;
                this.value = formattedValue;
            });

            expiryInput.addEventListener('input', function(e) {
                let value = e.target.value.replace(/\D/g, '');
                if (value.length >= 2) {
                    value = value.substring(0, 2) + '/' + value.substring(2, 4);
                }
                this.value = value;
            });
        });
    </script>
</body>
</html>