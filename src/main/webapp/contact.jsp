<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Contact - LuxeStay</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-white"> 
    <!-- Include Header -->
    <jsp:include page="include-header.jsp" />

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-blue-900 to-blue-700 py-16"> 
        <div class="max-w-7xl mx-auto px-4 text-center"> 
            <h1 class="text-4xl font-bold text-white mb-4"> Contact LuxeStay</h1>
            <p class="text-xl text-blue-100"> We're here to help make your stay exceptional</p>
        </div>
    </section>

    <div class="max-w-7xl mx-auto px-4 py-16"> 
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12"> 
            <!-- Contact Form -->
            <div class="bg-white"> 
                <h2 class="text-2xl font-bold text-gray-900 mb-6"> Send us a Message</h2>
                
                <form action="sendMessage" method="POST" class="space-y-6"> 
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4"> 
                        <div>
                            <label for="firstName" class="block text-sm font-medium text-gray-700 mb-2"> First Name *</label>
                            <input type="text" id="firstName" name="firstName" required
                                   class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                   placeholder="Enter your first name" />
                        </div>
                        <div>
                            <label for="lastName" class="block text-sm font-medium text-gray-700 mb-2"> Last Name *</label>
                            <input type="text" id="lastName" name="lastName" required
                                   class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                   placeholder="Enter your last name" />
                        </div>
                    </div>

                    <div>
                        <label for="email" class="block text-sm font-medium text-gray-700 mb-2"> Email Address *</label>
                        <input type="email" id="email" name="email" required
                               class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                               placeholder="Enter your email address" />
                    </div>

                    <div>
                        <label for="phone" class="block text-sm font-medium text-gray-700 mb-2"> Phone Number</label>
                        <input type="tel" id="phone" name="phone"
                               class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                               placeholder="Enter your phone number" />
                    </div>

                    <div>
                        <label for="subject" class="block text-sm font-medium text-gray-700 mb-2"> Subject *</label>
                        <select id="subject" name="subject" required
                                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"> 
                            <option value=""> Select a subject</option>
                            <option value="reservation"> Reservation Inquiry</option>
                            <option value="support"> Customer Support</option>
                            <option value="feedback"> Feedback</option>
                            <option value="events"> Events & Meetings</option>
                            <option value="other"> Other</option>
                        </select>
                    </div>

                    <div>
                        <label for="message" class="block text-sm font-medium text-gray-700 mb-2"> Message *</label>
                        <textarea id="message" name="message" rows="6" required
                                  class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                                  placeholder="Tell us how we can help you..."> </textarea>
                    </div>

                    <div class="flex items-start"> 
                        <div class="flex items-center h-5"> 
                            <input id="privacy" name="privacy" type="checkbox" required
                                   class="h-4 w-4 text-blue-600 focus:ring-blue-500 border-gray-300 rounded" />
                        </div>
                        <div class="ml-3 text-sm"> 
                            <label for="privacy" class="text-gray-700"> 
                                I agree to the <a href="#" class="font-medium text-blue-600 hover:text-blue-500"> Privacy Policy</a> 
                                and consent to being contacted about my inquiry
                            </label>
                        </div>
                    </div>

                    <button type="submit"
                            class="w-full bg-blue-600 text-white py-3 px-6 rounded-lg hover:bg-blue-700 transition-colors font-medium"> 
                        Send Message
                    </button>
                </form>
            </div>

            <!-- Contact Information -->
            <div class="space-y-8"> 
                <div>
                    <h2 class="text-2xl font-bold text-gray-900 mb-6"> Get in Touch</h2>
                    <p class="text-gray-600 mb-8"> 
                        Have questions about your stay or need assistance? Our team is here to help you 24/7.
                        Contact us using any of the methods below.
                    </p>
                </div>

                <!-- Contact Cards -->
                <div class="space-y-6"> 
                    <div class="bg-gray-50 p-6 rounded-lg"> 
                        <div class="flex items-start"> 
                            <div class="flex-shrink-0"> 
                                <div class="w-10 h-10 bg-blue-100 rounded-lg flex items-center justify-center"> 
                                    <svg class="w-5 h-5 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"> 
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"> </path>
                                    </svg>
                                </div>
                            </div>
                            <div class="ml-4"> 
                                <h3 class="text-lg font-semibold text-gray-900"> Phone</h3>
                                <p class="text-gray-600 mt-1"> Call us anytime for immediate assistance</p>
                                <p class="text-blue-600 font-medium mt-2"> +1 (555) 123-4567</p>
                                <p class="text-gray-500 text-sm"> Available 24/7</p>
                            </div>
                        </div>
                    </div>

                    <div class="bg-gray-50 p-6 rounded-lg"> 
                        <div class="flex items-start"> 
                            <div class="flex-shrink-0"> 
                                <div class="w-10 h-10 bg-blue-100 rounded-lg flex items-center justify-center"> 
                                    <svg class="w-5 h-5 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"> 
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 4.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"> </path>
                                    </svg>
                                </div>
                            </div>
                            <div class="ml-4"> 
                                <h3 class="text-lg font-semibold text-gray-900"> Email</h3>
                                <p class="text-gray-600 mt-1"> Send us an email and we'll respond promptly</p>
                                <p class="text-blue-600 font-medium mt-2"> info@luxestay.com</p>
                                <p class="text-gray-500 text-sm"> Response within 2 hours</p>
                            </div>
                        </div>
                    </div>

                    <div class="bg-gray-50 p-6 rounded-lg"> 
                        <div class="flex items-start"> 
                            <div class="flex-shrink-0"> 
                                <div class="w-10 h-10 bg-blue-100 rounded-lg flex items-center justify-center"> 
                                    <svg class="w-5 h-5 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"> 
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"> </path>
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"> </path>
                                    </svg>
                                </div>
                            </div>
                            <div class="ml-4"> 
                                <h3 class="text-lg font-semibold text-gray-900"> Address</h3>
                                <p class="text-gray-600 mt-1"> Visit us at our prime downtown location</p>
                                <div class="mt-2"> 
                                    <p class="text-gray-800 font-medium"> 123 Luxury Avenue</p>
                                    <p class="text-gray-600"> City Center, ST 12345</p>
                                    <p class="text-gray-600"> United States</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="bg-gray-50 p-6 rounded-lg"> 
                        <div class="flex items-start"> 
                            <div class="flex-shrink-0"> 
                                <div class="w-10 h-10 bg-blue-100 rounded-lg flex items-center justify-center"> 
                                    <svg class="w-5 h-5 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"> 
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                    </svg>
                                </div>
                            </div>
                            <div class="ml-4"> 
                                <h3 class="text-lg font-semibold text-gray-900"> Business Hours</h3>
                                <p class="text-gray-600 mt-1"> Our front desk is available around the clock</p>
                                <div class="mt-2 space-y-1"> 
                                    <p class="text-gray-800"><span class="font-medium"> Front Desk:</span> 24/7</p>
                                    <p class="text-gray-800"><span class="font-medium"> Concierge:</span> 6:00 AM - 11:00 PM</p>
                                    <p class="text-gray-800"><span class="font-medium"> Restaurant:</span> 6:00 AM - 12:00 AM</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Emergency Contact -->
                <div class="bg-red-50 border border-red-200 p-6 rounded-lg"> 
                    <h3 class="text-lg font-semibold text-red-800 mb-2"> Emergency Contact</h3>
                    <p class="text-red-700 mb-3"> For urgent matters or emergencies during your stay</p>
                    <p class="text-red-800 font-bold text-lg"> +1 (555) 911-HELP</p>
                    <p class="text-red-600 text-sm"> Available 24/7 for hotel guests</p>
                </div>

                <!-- Social Media -->
                <div>
                    <h3 class="text-lg font-semibold text-gray-900 mb-4"> Follow Us</h3>
                    <div class="flex space-x-4"> 
                        <a href="#" class="w-10 h-10 bg-blue-600 text-white rounded-lg flex items-center justify-center hover:bg-blue-700 transition-colors"> 
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"> 
                                <path fill-rule="evenodd" d="M20 10c0-5.523-4.477-10-10-10S0 4.477 0 10c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V10h2.54V7.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V10h2.773l-.443 2.89h-2.33v6.988C16.343 19.128 20 14.991 20 10z" clip-rule="evenodd" />
                            </svg>
                        </a>
                        <a href="#" class="w-10 h-10 bg-pink-600 text-white rounded-lg flex items-center justify-center hover:bg-pink-700 transition-colors"> 
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"> 
                                <path fill-rule="evenodd" d="M10 2C7.348 2 6.987 2.013 5.877 2.06 4.765 2.107 4.014 2.277 3.357 2.525a5.548 5.548 0 00-2.002 1.303A5.548 5.548 0 00.052 5.83C-.196 6.487-.366 7.238-.413 8.35-.46 9.462-.473 9.823-.473 12.473s.013 3.011.06 4.123c.047 1.112.217 1.863.465 2.52a5.548 5.548 0 001.303 2.002A5.548 5.548 0 003.357 17.475c.657.248 1.408.418 2.52.465 1.112.047 1.473.06 4.123.06s3.011-.013 4.123-.06c1.112-.047 1.863-.217 2.52-.465a5.548 5.548 0 002.002-1.303 5.548 5.548 0 001.303-2.002c.248-.657.418-1.408.465-2.52.047-1.112.06-1.473.06-4.123s-.013-3.011-.06-4.123c-.047-1.112-.217-1.863-.465-2.52a5.548 5.548 0 00-1.303-2.002A5.548 5.548 0 0016.643 2.525c-.657-.248-1.408-.418-2.52-.465C13.011 2.013 12.652 2 10 2zm0 1.802c2.67 0 2.987.01 4.042.059 2.71.123 3.975 1.409 4.099 4.099.048 1.054.057 1.37.057 4.04 0 2.672-.01 2.988-.057 4.042-.124 2.687-1.387 3.975-4.1 4.099-1.054.048-1.37.058-4.041.058-2.67 0-2.987-.01-4.04-.058-2.718-.124-3.977-1.416-4.1-4.1-.048-1.054-.058-1.37-.058-4.041 0-2.67.01-2.986.058-4.04.124-2.69 1.387-3.977 4.1-4.1 1.054-.048 1.37-.058 4.04-.058zM10 5.838a6.162 6.162 0 100 12.324 6.162 6.162 0 000-12.324zM10 14a4 4 0 110-8 4 4 0 010 8zm6.406-11.845a1.44 1.44 0 100 2.881 1.44 1.44 0 000-2.881z" clip-rule="evenodd" />
                            </svg>
                        </a>
                        <a href="#" class="w-10 h-10 bg-blue-400 text-white rounded-lg flex items-center justify-center hover:bg-blue-500 transition-colors"> 
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"> 
                                <path d="M6.29 18.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0020 3.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.073 4.073 0 01.8 7.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 010 16.407a11.616 11.616 0 006.29 1.84" />
                            </svg>
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