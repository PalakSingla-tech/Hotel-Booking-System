<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Booking - LuxeStay</title>
    <script src="https://cdn.tailwindcss.com"> </script>
</head>
<body class="min-h-screen bg-gray-50"> 
    <!-- Include Header -->
    <jsp:include page="include-header.jsp" />

    <div class="max-w-4xl mx-auto px-4 py-8"> 
        <div class="bg-white rounded-lg shadow-lg overflow-hidden"> 
            <!-- Booking Header -->
            <div class="bg-blue-600 text-white p-6"> 
                <h2 class="text-2xl font-bold"> Complete Your Booking</h2>
                <p class="mt-2 opacity-90"> Fill in your details to confirm your reservation</p>
            </div>

            <form action="processBooking" method="post" class="p-6 space-y-6"> 
                <!-- Room Details -->
                <div class="bg-gray-50 p-4 rounded-lg"> 
                    <h3 class="text-lg font-semibold text-gray-900 mb-4"> Room Details</h3>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4"> 
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2"> Room Type</label>
                            <select name="roomType" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"> 
                                <option value="deluxe" ${param.roomType == 'deluxe' ? 'selected' : ''}>Deluxe King Room - $199/night</option>
                                <option value="suite" ${param.roomType == 'suite' ? 'selected' : ''}>Executive Suite - $349/night</option>
                                <option value="standard" ${param.roomType == 'standard' ? 'selected' : ''}>Standard Twin - $129/night</option>
                            </select>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2"> Number of Rooms</label>
                            <select name="roomCount" id="roomCount" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"> 
                                <option value="1"> 1 Room</option>
                                <option value="2"> 2 Rooms</option>
                                <option value="3"> 3 Rooms</option>
                                <option value="4"> 4 Rooms</option>
                                <option value="5"> 5+ Rooms</option>
                            </select>
                            
                        </div>
                    </div>
                    
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mt-4"> 
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2"> Check-in Date</label>
                            <input type="date" name="checkInDate" value="${param.checkIn}" required
                                   min="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>"
                                   class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent" />
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2"> Check-out Date</label>
                            <input type="date" name="checkOutDate" value="${param.checkOut}" required
                                   class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent" />
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2"> Guests</label>
                            <select name="guests" id="guestCount" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"> 
                                <option value="1" ${param.guests == '1' ? 'selected' : ''}>1 Guest</option>
                                <option value="2" ${param.guests == '2' ? 'selected' : ''}>2 Guests</option>
                                <option value="3" ${param.guests == '3' ? 'selected' : ''}>3 Guests</option>
                                <option value="4" ${param.guests == '4' ? 'selected' : ''}>4 Guests</option>
                                <option value="5" ${param.guests == '5' ? 'selected' : ''}>5 Guests</option>
                                <option value="6" ${param.guests == '6' ? 'selected' : ''}>6 Guests</option>
                                <option value="8" ${param.guests == '8' ? 'selected' : ''}>8+ Guests</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!-- Guest Information -->
                <div>
                    <h3 class="text-lg font-semibold text-gray-900 mb-4"> Guest Information</h3>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2"> First Name *</label>
                            <input type="text" name="firstName" required
                                   class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                   placeholder="Enter first name" />
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2"> Last Name *</label>
                            <input type="text" name="lastName" required
                                   class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                   placeholder="Enter last name" />
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2"> Email Address *</label>
                            <input type="email" name="email" required
                                   class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                   placeholder="Enter email address" />
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2"> Phone Number *</label>
                            <input type="tel" name="phone" required
                                   class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                   placeholder="Enter phone number" />
                        </div>
                    </div>
                    
                    <div class="mt-4"> 
                        <label class="block text-sm font-medium text-gray-700 mb-2"> Special Requests</label>
                        <textarea name="specialRequests" rows="3"
                                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                  placeholder="Any special requests or requirements..."> </textarea>
                    </div>
                </div>

                <!-- Terms and Submit -->
                <div>
                    <div class="flex items-start space-x-3 mb-6"> 
                        <input type="checkbox" name="terms" required
                               class="mt-1 h-4 w-4 text-blue-600 focus:ring-blue-500 border-gray-300 rounded" />
                        <label class="text-sm text-gray-700"> 
                            I agree to the <a href="#" class="text-blue-600 hover:underline"> Terms and Conditions</a> and 
                            <a href="#" class="text-blue-600 hover:underline ml-1"> Privacy Policy</a>
                        </label>
                    </div>
                    
                    <button type="submit"
                            class="w-full bg-blue-600 text-white py-4 px-6 rounded-lg hover:bg-blue-700 transition-colors font-medium text-lg"> 
                        Show Payment Details
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- Include Footer -->
    <jsp:include page="include-footer.jsp" />

    <script>
        // JavaScript for guest-based room recommendation
        document.addEventListener('DOMContentLoaded', function() {
            const guestSelect = document.getElementById('guestCount');
            const roomSelect = document.getElementById('roomCount');
            const recommendation = document.getElementById('roomRecommendation');
            
            function updateRoomRecommendation() {
                const guests = parseInt(guestSelect.value);
                const recommendedRooms = Math.ceil(guests / 2);
                
                if (guests >= 2) {
                    recommendation.style.display = 'block';
                    recommendation.textContent = `💡 Recommended: ${recommendedRooms} room${recommendedRooms > 1 ? 's' : ''} for ${guests} guests`;
                    roomSelect.value = recommendedRooms;
                } else {
                    recommendation.style.display = 'none';
                }
            }
            
            guestSelect.addEventListener('change', updateRoomRecommendation);
            
            // Initialize on page load
            updateRoomRecommendation();
            
            // Card number formatting
            document.querySelector('input[name="cardNumber"]').addEventListener('input', function(e) {
                let value = e.target.value.replace(/\s+/g, '').replace(/[^0-9]/gi, '');
                let formattedValue = value.match(/.{1,4}/g)?.join(' ') || value;
                this.value = formattedValue;
            });
            
            // Expiry date formatting
            document.querySelector('input[name="expiryDate"]').addEventListener('input', function(e) {
                let value = e.target.value.replace(/\D/g, '');
                if (value.length >= 2) {
                    value = value.substring(0, 2) + '/' + value.substring(2, 4);
                }
                this.value = value;
            });
            
            // Date validation
            const checkInInput = document.querySelector('input[name="checkInDate"]');
            const checkOutInput = document.querySelector('input[name="checkOutDate"]');
            
            checkInInput.addEventListener('change', function() {
                checkOutInput.min = this.value;
                if (checkOutInput.value && checkOutInput.value <= this.value) {
                    checkOutInput.value = '';
                }
            });
        });
    </script>
</body>
</html>