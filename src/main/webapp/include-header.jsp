<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<header class="bg-white shadow-sm border-b"> 
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8"> 
        <div class="flex justify-between items-center h-16"> 
            <div class="flex items-center"> 
                <a href="index.jsp" class="text-2xl font-bold text-gray-900"> LuxeStay</a>
            </div>
            <nav class="hidden md:flex space-x-8"> 
                <a href="index.jsp" class="text-gray-700 hover:text-gray-900 font-medium"> Home</a>
                <a href="rooms.jsp" class="text-gray-700 hover:text-gray-900 font-medium"> Rooms</a>
                <a href="services.jsp" class="text-gray-700 hover:text-gray-900 font-medium"> Services</a>
                <a href="contact.jsp" class="text-gray-700 hover:text-gray-900 font-medium"> Contact</a>
            </nav>
            <div class="flex items-center space-x-4"> 
                        <span class="text-gray-700"> Welcome, ${session_name}</span>
                        <a href="logout" class="text-gray-700 hover:text-gray-900 font-medium"> Logout </a>
                    
                        <a href="login.jsp" class="text-gray-700 hover:text-gray-900 font-medium"> Sign In</a>
                        <a href="register.jsp" class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors inline-block"> Sign Up</a>
                    
            </div>
        </div>
    </div>
</header>