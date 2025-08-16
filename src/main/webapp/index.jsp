<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>LuxeStay - Luxury Hotel Booking</title>
    <script src="https://cdn.tailwindcss.com"> </script>
    <style>
        .hero-bg {
            background-image: url('https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        .room-card:hover { transform: translateY(-4px); }
        .amenity-tag {
            background-color: #dbeafe;
            color: #1e40af;
            font-size: 0.75rem;
            padding: 0.25rem 0.5rem;
            border-radius: 0.375rem;
            display: inline-block;
            margin: 0.125rem;
        }
    </style>
</head>
<body class="min-h-screen bg-white"> 
    <!-- Include Header -->
    <jsp:include page="include-header.jsp" />

    <!-- Hero Section -->
    <section class="relative h-96 hero-bg">
        <div class="absolute inset-0 bg-black opacity-40"> </div>
        <div class="relative max-w-7xl mx-auto px-4 h-full flex items-center"> 
            <div class="text-white"> 
                <h2 class="text-5xl font-bold mb-4"> Luxury Hotel Booking</h2>
                <p class="text-xl mb-8"> Experience comfort and elegance in our premium rooms</p>
                <div class="flex items-center space-x-4 text-blue-200"> 
                    <div class="flex items-center"> 
                        <svg class="w-5 h-5 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                            <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"> </path>
                        </svg>
                        Premium Location
                    </div>
                    <div class="flex items-center"> 
                        <svg class="w-5 h-5 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                            <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"> </path>
                        </svg>
                        5-Star Service
                    </div>
                    <div class="flex items-center">
                        <svg class="w-5 h-5 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                            <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"> </path>
                        </svg>
                        Modern Amenities
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Search Section -->
    <section class="bg-white py-8 shadow-lg -mt-8 relative z-10 mx-4 md:mx-8 lg:mx-16 rounded-lg"> 
        <div class="max-w-6xl mx-auto px-6"> 
            <form action="searchRooms" method="POST" class="grid grid-cols-1 md:grid-cols-4 gap-4"> 
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2"> Check-in Date</label>
                    <input type="date" name="checkInDate" value="${param.checkInDate}" required
                           min="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>"
                           class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"> 
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2"> Check-out Date</label>
                    <input type="date" name="checkOutDate" value="${param.checkOutDate}" required
                           class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"> 
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-2"> Guests</label>
                    <select name="guests" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"> 
                        <option value="1" ${param.guests == '1' ? 'selected' : ''}>1 Guest</option>
                        <option value="2" ${param.guests == '2' ? 'selected' : ''}>2 Guests</option>
                        <option value="3" ${param.guests == '3' ? 'selected' : ''}>3 Guests</option>
                        <option value="4" ${param.guests == '4' ? 'selected' : ''}>4+ Guests</option>
                    </select>
                </div>
                <div class="flex items-end"> 
                    <button type="submit" class="w-full bg-blue-600 text-white py-3 px-6 rounded-lg hover:bg-blue-700 transition-colors font-medium"> 
                        Search Rooms
                    </button>
                </div>
            </form>
            
        </div>
    </section>

    <!-- Search Results -->
        <section class="py-8 bg-gray-50"> 
            <div class="max-w-7xl mx-auto px-4"> 
                <h3 class="text-2xl font-bold text-gray-900 mb-6"> 
                    Available Rooms (${param.checkInDate} to ${param.checkOutDate})
                </h3>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6"> 
                        <div class="bg-white rounded-lg shadow-lg overflow-hidden room-card transition-transform"> 
                            <div class="h-48 relative"> 
                                <img src="${room.imageUrl}" alt="${room.type}" class="w-full h-full object-cover"> 
                                <div class="absolute top-4 left-4"> 
                                    <span class="bg-green-500 text-white px-2 py-1 rounded text-sm font-medium"> 
                                        ${room.available} Available
                                    </span>
                                </div>
                            </div>
                            <div class="p-6"> 
                                <h4 class="text-xl font-semibold text-gray-900 mb-2"> ${room.type}</h4>
                                <div class="mb-4"> 
                                    <h5 class="font-medium text-gray-700 mb-2"> Room Amenities:</h5>
                                    <div class="flex flex-wrap gap-1"> 
                                                <span class="amenity-tag"> ${amenity}</span>
                                    </div>
                                </div>
                                <div class="flex items-center justify-between"> 
                                    <div class="text-2xl font-bold text-blue-600"> $${room.price}/night</div>
                                    <a href="booking.jsp?roomId=${room.id}&checkIn=${param.checkInDate}&checkOut=${param.checkOutDate}&guests=${param.guests}" 
                                       class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors"> 
                                        Book Now
                                    </a>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </section>

    <!-- Featured Rooms -->
    <section class="py-16 bg-gray-50"> 
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8"> 
            <div class="text-center mb-12"> 
                <h3 class="text-3xl font-bold text-gray-900 mb-4"> Featured Rooms</h3>
                <p class="text-lg text-gray-600"> Discover our most popular accommodations</p>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8"> 
                <!-- Room Card 1 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-shadow"> 
                    <div class="h-48 relative overflow-hidden"> 
                        <img src="https://images.unsplash.com/photo-1590490360182-c33d57733427?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                             alt="Deluxe King Room" class="w-full h-full object-cover" />
                        <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"> </div>
                        <div class="absolute bottom-4 left-4 text-white"> 
                            <span class="bg-blue-600 px-2 py-1 rounded text-sm font-medium"> Popular</span>
                        </div>
                    </div>
                    <div class="p-6"> 
                        <h4 class="text-xl font-semibold text-gray-900 mb-2"> Deluxe King Room</h4>
                        <p class="text-gray-600 mb-3"> Spacious room with king bed, city view, and modern amenities</p>
                        <div class="mb-4"> 
                            <h5 class="font-medium text-gray-700 mb-2"> Room Amenities:</h5>
                            <div class="flex flex-wrap gap-1"> 
                                <span class="amenity-tag"> King Size Bed</span>
                                <span class="amenity-tag"> City View</span>
                                <span class="amenity-tag"> Free WiFi</span>
                                <span class="amenity-tag"> Minibar</span>
                            </div>
                        </div>
                        <div class="flex items-center justify-between"> 
                            <div class="text-2xl font-bold text-blue-600"> $199/night</div>
                            <a href="booking.jsp?roomType=deluxe" class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors inline-block text-center"> 
                                Book Now
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Room Card 2 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-shadow"> 
                    <div class="h-48 relative overflow-hidden"> 
                        <img src="https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                             alt="Executive Suite" class="w-full h-full object-cover" />
                        <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"> </div>
                    </div>
                    <div class="p-6"> 
                        <h4 class="text-xl font-semibold text-gray-900 mb-2"> Executive Suite</h4>
                        <p class="text-gray-600 mb-3"> Luxury suite with separate living area and premium furnishings</p>
                        <div class="mb-4"> 
                            <h5 class="font-medium text-gray-700 mb-2"> Suite Amenities:</h5>
                            <div class="flex flex-wrap gap-1"> 
                                <span class="amenity-tag"> Living Area</span>
                                <span class="amenity-tag"> Kitchenette</span>
                                <span class="amenity-tag"> Balcony</span>
                                <span class="amenity-tag"> Butler Service</span>
                            </div>
                        </div>
                        <div class="flex items-center justify-between"> 
                            <div class="text-2xl font-bold text-blue-600"> $349/night</div>
                            <a href="booking.jsp?roomType=suite" class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors inline-block text-center"> 
                                Book Now
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Room Card 3 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-shadow"> 
                    <div class="h-48 relative overflow-hidden"> 
                        <img src="https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                             alt="Standard Twin Room" class="w-full h-full object-cover" />
                        <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"> </div>
                    </div>
                    <div class="p-6"> 
                        <h4 class="text-xl font-semibold text-gray-900 mb-2"> Standard Twin</h4>
                        <p class="text-gray-600 mb-3"> Comfortable room with twin beds, perfect for business travelers</p>
                        <div class="mb-4"> 
                            <h5 class="font-medium text-gray-700 mb-2"> Room Amenities:</h5>
                            <div class="flex flex-wrap gap-1"> 
                                <span class="amenity-tag"> Twin Beds</span>
                                <span class="amenity-tag"> Garden View</span>
                                <span class="amenity-tag"> Work Desk</span>
                                <span class="amenity-tag"> Coffee Maker</span>
                            </div>
                        </div>
                        <div class="flex items-center justify-between"> 
                            <div class="text-2xl font-bold text-blue-600"> $129/night</div>
                            <a href="booking.jsp?roomType=standard" class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors inline-block text-center"> 
                                Book Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Amenities -->
    <section class="py-16 bg-white"> 
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8"> 
            <div class="text-center mb-12"> 
                <h3 class="text-3xl font-bold text-gray-900 mb-4"> Hotel Amenities</h3>
                <p class="text-lg text-gray-600"> Everything you need for a perfect stay</p>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8"> 
                <div class="text-center"> 
                    <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-4"> 
                        <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"> 
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8.111 16.404a5.5 5.5 0 017.778 0M12 20h.01m-7.08-7.071c3.904-3.905 10.236-3.905 14.141 0M1.394 9.393c5.857-5.857 15.355-5.857 21.213 0"> </path>
                        </svg>
                    </div>
                    <h4 class="text-lg font-semibold text-gray-900 mb-2"> Free WiFi</h4>
                    <p class="text-gray-600"> High-speed internet in all rooms and public areas</p>
                </div>
                
                <div class="text-center"> 
                    <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-4"> 
                        <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"> 
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"> </path>
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"> </path>
                        </svg>
                    </div>
                    <h4 class="text-lg font-semibold text-gray-900 mb-2"> Prime Location</h4>
                    <p class="text-gray-600"> Located in the heart of the city center</p>
                </div>
                
                <div class="text-center"> 
                    <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-4"> 
                        <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"> 
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"> </path>
                        </svg>
                    </div>
                    <h4 class="text-lg font-semibold text-gray-900 mb-2"> 24/7 Service</h4>
                    <p class="text-gray-600"> Round-the-clock front desk and room service</p>
                </div>
                
                <div class="text-center"> 
                    <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-4"> 
                        <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"> 
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 20l-5.447-2.724A1 1 0 013 16.382V5.618a1 1 0 011.447-.894L9 7m0 13l6-3m-6 3V7m6 10l4.553 2.276A1 1 0 0021 18.382V7.618a1 1 0 00-.553-.894L15 4m0 13V4m0 0L9 7"> </path>
                        </svg>
                    </div>
                    <h4 class="text-lg font-semibold text-gray-900 mb-2"> Airport Pickup</h4>
                    <p class="text-gray-600"> Complimentary airport transfer service</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Include Footer -->
    <jsp:include page="include-footer.jsp" />

    <script>
        // JavaScript for date validation
        document.addEventListener('DOMContentLoaded', function() {
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