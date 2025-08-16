<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Services - LuxeStay</title>
    <script src="https://cdn.tailwindcss.com"> </script>
</head>
<body class="min-h-screen bg-white"> 
    <!-- Include Header -->
    <jsp:include page="include-header.jsp" />

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-blue-900 to-blue-700 py-16"> 
        <div class="max-w-7xl mx-auto px-4 text-center"> 
            <h1 class="text-4xl font-bold text-white mb-4"> Premium Hotel Services</h1>
            <p class="text-xl text-blue-100"> Experience luxury and comfort with our exceptional amenities</p>
        </div>
    </section>

    <!-- Main Services -->
    <section class="py-16"> 
        <div class="max-w-7xl mx-auto px-4"> 
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8"> 
                <!-- Spa & Wellness -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden"> 
                    <div class="h-64 relative overflow-hidden"> 
                        <img src="https://images.unsplash.com/photo-1540555700478-4be289fbecef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                             alt="Spa & Wellness" class="w-full h-full object-cover" />
                        <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"> </div>
                    </div>
                    <div class="p-6"> 
                        <h3 class="text-2xl font-bold text-gray-900 mb-4"> Spa & Wellness</h3>
                        <p class="text-gray-600 mb-4"> Rejuvenate your body and mind with our full-service spa featuring massage therapy, facial treatments, and wellness programs.</p>
                        <ul class="space-y-2 text-gray-600"> 
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"> </path>
                                </svg>
                                Full body massages
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"> </path>
                                </svg>
                                Facial treatments
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"> </path>
                                </svg>
                                Sauna & steam room
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"> </path>
                                </svg>
                                Yoga classes
                            </li>
                        </ul>
                        <div class="mt-6"> 
                            <a href="contact.jsp" class="w-full bg-green-600 text-white py-2 px-4 rounded-lg hover:bg-green-700 transition-colors inline-block text-center"> 
                                Book Spa Service
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Fine Dining -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden"> 
                    <div class="h-64 relative overflow-hidden"> 
                        <img src="https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                             alt="Fine Dining Restaurant" class="w-full h-full object-cover" />
                        <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"> </div>
                    </div>
                    <div class="p-6"> 
                        <h3 class="text-2xl font-bold text-gray-900 mb-4"> Fine Dining</h3>
                        <p class="text-gray-600 mb-4"> Indulge in exquisite culinary experiences at our award-winning restaurants featuring international and local cuisine.</p>
                        <ul class="space-y-2 text-gray-600"> 
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-orange-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Michelin-starred chef
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-orange-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                24-hour room service
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-orange-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Premium wine selection
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-orange-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Private dining rooms
                            </li>
                        </ul>
                        <div class="mt-6"> 
                            <a href="contact.jsp" class="w-full bg-orange-600 text-white py-2 px-4 rounded-lg hover:bg-orange-700 transition-colors inline-block text-center"> 
                                Make Reservation
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Business Center -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden"> 
                    <div class="h-64 relative overflow-hidden"> 
                        <img src="https://images.unsplash.com/photo-1497366216548-37526070297c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                             alt="Business Center" class="w-full h-full object-cover" />
                        <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"></div>
                    </div>
                    <div class="p-6"> 
                        <h3 class="text-2xl font-bold text-gray-900 mb-4"> Business Center</h3>
                        <p class="text-gray-600 mb-4"> Stay productive with our state-of-the-art business facilities and meeting rooms equipped with modern technology.</p>
                        <ul class="space-y-2 text-gray-600"> 
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-purple-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Conference rooms
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-purple-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                High-speed WiFi
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-purple-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Printing & scanning
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-purple-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                A/V equipment
                            </li>
                        </ul>
                        <div class="mt-6"> 
                            <a href="contact.jsp" class="w-full bg-purple-600 text-white py-2 px-4 rounded-lg hover:bg-purple-700 transition-colors inline-block text-center"> 
                                Book Meeting Room
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Fitness Center -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <div class="h-64 relative overflow-hidden"> 
                        <img src="https://images.unsplash.com/photo-1534438327276-14e5300c3a48?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                             alt="Fitness Center" class="w-full h-full object-cover" />
                        <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"> </div>
                    </div>
                    <div class="p-6"> 
                        <h3 class="text-2xl font-bold text-gray-900 mb-4"> Fitness Center</h3>
                        <p class="text-gray-600 mb-4"> Maintain your fitness routine with our fully equipped gym and personal training services available 24/7.</p>
                        <ul class="space-y-2 text-gray-600"> 
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-red-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Modern equipment
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-red-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Personal trainers
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-red-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Group fitness classes
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-red-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                24/7 access
                            </li>
                        </ul>
                        <div class="mt-6"> 
                            <a href="contact.jsp" class="w-full bg-red-600 text-white py-2 px-4 rounded-lg hover:bg-red-700 transition-colors inline-block text-center"> 
                                Schedule Training
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Pool & Recreation -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden"> 
                    <div class="h-64 relative overflow-hidden"> 
                        <img src="https://images.unsplash.com/photo-1571902943202-507ec2618e8f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                             alt="Pool & Recreation" class="w-full h-full object-cover" />
                        <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"> </div>
                    </div>
                    <div class="p-6"> 
                        <h3 class="text-2xl font-bold text-gray-900 mb-4"> Pool & Recreation</h3>
                        <p class="text-gray-600 mb-4"> Relax and unwind at our rooftop pool with panoramic city views and luxury poolside service.</p>
                        <ul class="space-y-2 text-gray-600"> 
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-cyan-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                   <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Infinity pool
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-cyan-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Poolside bar
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-cyan-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Cabana service
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-cyan-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Kids' pool area
                            </li>
                        </ul>
                        <div class="mt-6"> 
                            <a href="contact.jsp" class="w-full bg-cyan-600 text-white py-2 px-4 rounded-lg hover:bg-cyan-700 transition-colors inline-block text-center"> 
                                Reserve Cabana
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Concierge Services -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden"> 
                    <div class="h-64 relative overflow-hidden"> 
                        <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" 
                             alt="Concierge Services" class="w-full h-full object-cover" />
                        <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"></div>
                    </div>
                    <div class="p-6">
                        <h3 class="text-2xl font-bold text-gray-900 mb-4"> Concierge Services</h3>
                        <p class="text-gray-600 mb-4"> Our dedicated concierge team is available to assist with reservations, recommendations, and special arrangements.</p>
                        <ul class="space-y-2 text-gray-600"> 
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-indigo-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Local recommendations
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-indigo-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Event planning
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-indigo-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Transportation booking
                            </li>
                            <li class="flex items-center"> 
                                <svg class="w-4 h-4 text-indigo-500 mr-2" fill="currentColor" viewBox="0 0 20 20"> 
                                    <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                </svg>
                                Ticket reservations
                            </li>
                        </ul>
                        <div class="mt-6"> 
                            <a href="contact.jsp" class="w-full bg-indigo-600 text-white py-2 px-4 rounded-lg hover:bg-indigo-700 transition-colors inline-block text-center"> 
                                Contact Concierge
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Include Footer -->
    <jsp:include page="include-footer.jsp" />
</body>
</html>