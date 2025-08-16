<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rooms - LuxeStay</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gray-50">
    <!-- Include Header -->
    <jsp:include page="include-header.jsp" />

    <div class="max-w-7xl mx-auto px-4 py-8">
        <!-- Page Title -->
        <div class="mb-8"> 
            <h2 class="text-2xl font-bold text-gray-900"> Available Rooms</h2>
            <p class="text-gray-600 mt-2"> Discover our comfortable and luxurious accommodations</p>
        </div>

        <!-- Room Listings -->
        <div class="space-y-6"> 
            <!-- Room 1 -->
            <div class="bg-white rounded-lg shadow-lg overflow-hidden"> 
                <div class="md:flex"> 
                    <div class="md:w-1/3"> 
                        <div class="h-64 relative overflow-hidden"> 
                            <img src="https://images.unsplash.com/photo-1590490360182-c33d57733427?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                                 alt="Deluxe King Room" class="w-full h-full object-cover" />
                            <div class="absolute top-4 left-4"> 
                                <span class="bg-green-500 text-white px-2 py-1 rounded text-sm font-medium"> Available</span>
                            </div>
                            <div class="absolute bottom-4 right-4"> 
                                <button class="bg-white/80 hover:bg-white text-gray-800 px-3 py-1 rounded text-sm"> 
                                    View Photos
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="md:w-2/3 p-6"> 
                        <div class="flex justify-between items-start mb-4"> 
                            <div>
                                <h3 class="text-xl font-semibold text-gray-900"> Deluxe King Room</h3>
                                <p class="text-gray-600 mt-1"> King bed • City view • 35 m²</p>
                            </div>
                            <div class="text-right"> 
                                <div class="text-2xl font-bold text-blue-600"> $199</div>
                                <div class="text-sm text-gray-600"> per night</div>
                            </div>
                        </div>
                        
                        <div class="mb-4"> 
                            <h4 class="font-medium text-gray-900 mb-2"> Room Features</h4>
                            <div class="flex flex-wrap gap-2"> 
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Free WiFi</span>
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Air Conditioning</span>
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Minibar</span>
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Room Service</span>
                            </div>
                        </div>
                        
                        <div class="flex justify-between items-center"> 
                            <div class="flex items-center"> 
                                <div class="flex text-yellow-400"> 
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                </div>
                                <span class="ml-2 text-sm text-gray-600"> 4.8 (124 reviews)</span>
                            </div>
                            <a href="booking.jsp?roomType=deluxe" class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition-colors font-medium"> 
                                Book Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Room 2 -->
            <div class="bg-white rounded-lg shadow-lg overflow-hidden"> 
                <div class="md:flex"> 
                    <div class="md:w-1/3"> 
                        <div class="h-64 relative overflow-hidden"> 
                            <img src="https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                                 alt="Executive Suite" class="w-full h-full object-cover" />
                            <div class="absolute top-4 left-4"> 
                                <span class="bg-green-500 text-white px-2 py-1 rounded text-sm font-medium"> Available</span>
                            </div>
                            <div class="absolute top-4 right-4"> 
                                <span class="bg-red-500 text-white px-2 py-1 rounded text-sm font-medium"> Popular</span>
                            </div>
                            <div class="absolute bottom-4 right-4"> 
                                <button class="bg-white/80 hover:bg-white text-gray-800 px-3 py-1 rounded text-sm"> 
                                    View Photos
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="md:w-2/3 p-6"> 
                        <div class="flex justify-between items-start mb-4"> 
                            <div>
                                <h3 class="text-xl font-semibold text-gray-900"> Executive Suite</h3>
                                <p class="text-gray-600 mt-1"> King bed • Separate living area • 65 m²</p>
                            </div>
                            <div class="text-right"> 
                                <div class="text-2xl font-bold text-blue-600"> $349</div>
                                <div class="text-sm text-gray-600"> per night</div>
                            </div>
                        </div>
                        
                        <div class="mb-4"> 
                            <h4 class="font-medium text-gray-900 mb-2"> Suite Features</h4>
                            <div class="flex flex-wrap gap-2"> 
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Free WiFi</span>
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Living Area</span>
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Kitchenette</span>
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Balcony</span>
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Premium Amenities</span>
                            </div>
                        </div>
                        
                        <div class="flex justify-between items-center"> 
                            <div class="flex items-center"> 
                                <div class="flex text-yellow-400"> 
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                </div>
                                <span class="ml-2 text-sm text-gray-600"> 4.9 (89 reviews)</span>
                            </div>
                            <a href="booking.jsp?roomType=suite" class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition-colors font-medium"> 
                                Book Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Room 3 -->
            <div class="bg-white rounded-lg shadow-lg overflow-hidden"> 
                <div class="md:flex">
                    <div class="md:w-1/3"> 
                        <div class="h-64 relative overflow-hidden"> 
                            <img src="https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                                 alt="Standard Twin Room" class="w-full h-full object-cover" />
                            <div class="absolute top-4 left-4"> 
                                <span class="bg-yellow-500 text-white px-2 py-1 rounded text-sm font-medium"> Last 2 Rooms</span>
                            </div>
                            <div class="absolute bottom-4 right-4"> 
                                <button class="bg-white/80 hover:bg-white text-gray-800 px-3 py-1 rounded text-sm"> 
                                    View Photos
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="md:w-2/3 p-6"> 
                        <div class="flex justify-between items-start mb-4"> 
                            <div>
                                <h3 class="text-xl font-semibold text-gray-900"> Standard Twin</h3>
                                <p class="text-gray-600 mt-1"> Twin beds • Garden view • 28 m²</p>
                            </div>
                            <div class="text-right"> 
                                <div class="text-2xl font-bold text-blue-600"> $129</div>
                                <div class="text-sm text-gray-600"> per night</div>
                            </div>
                        </div>
                        
                        <div class="mb-4"> 
                            <h4 class="font-medium text-gray-900 mb-2"> Room Features</h4>
                            <div class="flex flex-wrap gap-2"> 
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Free WiFi</span>
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Garden View</span>
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Work Desk</span>
                                <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-full text-sm"> Coffee Maker</span>
                            </div>
                        </div>
                        
                        <div class="flex justify-between items-center"> 
                            <div class="flex items-center"> 
                                <div class="flex text-yellow-400"> 
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20">
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20">
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                    <svg class="w-4 h-4 text-gray-300 fill-current" viewBox="0 0 20 20"> 
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                </div>
                                <span class="ml-2 text-sm text-gray-600"> 4.5 (156 reviews)</span>
                            </div>
                            <a href="booking.jsp?roomType=standard" class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition-colors font-medium">
                                Book Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <!-- Include Footer -->
    <jsp:include page="include-footer.jsp" />
</body>
</html>