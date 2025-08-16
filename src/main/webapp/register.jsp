<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Sign Up - LuxeStay</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gray-50 flex flex-col justify-center py-12 sm:px-6 lg:px-8"> 
    <div class="sm:mx-auto sm:w-full sm:max-w-md"> 
        <a href="index.jsp" class="flex justify-center"> 
            <h1 class="text-3xl font-bold text-gray-900">LuxeStay</h1>
        </a>
        <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900"> 
            Create your account
        </h2>
        <p class="mt-2 text-center text-sm text-gray-600"> 
            Already have an account? 
            <a href="login.jsp" class="font-medium text-blue-600 hover:text-blue-500"> 
                Sign in here
            </a>
        </p>
    </div>

    <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md"> 
        <div class="bg-white py-8 px-4 shadow sm:rounded-lg sm:px-10"> 
            
            <form action="regForm" method="post" class="space-y-6"> 
                <div class="grid grid-cols-2 gap-4"> 
                    <div>
                        <label for="firstName" class="block text-sm font-medium text-gray-700"> 
                            First name
                        </label>
                        <div class="mt-1"> 
                            <input id="firstName" name="firstName" type="text" autocomplete="given-name" required
                                   class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm"
                                   placeholder="First name" />
                        </div>
                    </div>

                    <div>
                        <label for="lastName" class="block text-sm font-medium text-gray-700"> 
                            Last name
                        </label>
                        <div class="mt-1"> 
                            <input id="lastName" name="lastName" type="text" autocomplete="family-name" required
                                   class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm"
                                   placeholder="Last name" />
                        </div>
                    </div>
                </div>

                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700"> 
                        Email address
                    </label>
                    <div class="mt-1"> 
                        <input id="email" name="email" type="email" autocomplete="email" required
                               class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm"
                               placeholder="Enter your email" />
                    </div>
                </div>

                <div>
                    <label for="phone" class="block text-sm font-medium text-gray-700"> 
                        Phone number
                    </label>
                    <div class="mt-1"> 
                        <input id="phone" name="phone" type="tel" autocomplete="tel" required
                               class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm"
                               placeholder="Enter your phone number" />
                    </div>
                </div>

                <div>
                    <label for="password" class="block text-sm font-medium text-gray-700"> 
                        Password
                    </label>
                    <div class="mt-1"> 
                        <input id="password" name="password" type="password" autocomplete="new-password" required
                               class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm"
                               placeholder="Create a password" />
                    </div>
                    <p class="mt-1 text-xs text-gray-500"> 
                        Password must be at least 8 characters long
                    </p>
                </div>

                <div>
                    <label for="confirmPassword" class="block text-sm font-medium text-gray-700"> 
                        Confirm password
                    </label>
                    <div class="mt-1">
                        <input id="confirmPassword" name="confirmPassword" type="password" autocomplete="new-password" required
                               class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm"
                               placeholder="Confirm your password" />
                    </div>
                </div>

                <div class="flex items-start"> 
                    <div class="flex items-center h-5"> 
                        <input id="terms" name="terms" type="checkbox" required
                               class="h-4 w-4 text-blue-600 focus:ring-blue-500 border-gray-300 rounded" />
                    </div>
                    <div class="ml-3 text-sm"> 
                        <label for="terms" class="text-gray-700"> 
                            I agree to the 
                            <a href="#" class="font-medium text-blue-600 hover:text-blue-500"> Terms and Conditions</a> 
                            and 
                            <a href="#" class="font-medium text-blue-600 hover:text-blue-500"> Privacy Policy</a>
                        </label>
                    </div>
                </div>

                <div class="flex items-start"> 
                    <div class="flex items-center h-5"> 
                        <input id="newsletter" name="newsletter" type="checkbox"
                               class="h-4 w-4 text-blue-600 focus:ring-blue-500 border-gray-300 rounded" />
                    </div>
                    <div class="ml-3 text-sm"> 
                        <label for="newsletter" class="text-gray-700"> 
                            I would like to receive marketing emails about special offers
                        </label>
                    </div>
                </div>

                <div>
                    <button type="submit"
                            class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"> 
                        <span class="absolute left-0 inset-y-0 flex items-center pl-3"> 
                            <svg class="h-5 w-5 text-blue-500 group-hover:text-blue-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"> 
                                <path d="M8 9a3 3 0 100-6 3 3 0 000 6zM8 11a6 6 0 016 6H2a6 6 0 016-6z" />
                            </svg>
                        </span>
                        Create account
                    </button>
                </div>
            </form>
        </div>
    </div>

    <div class="mt-8 text-center"> 
        <a href="index.jsp" class="text-blue-600 hover:text-blue-500 font-medium"> 
            ← Back to Home
        </a>
    </div>

    <script>
        // Password confirmation validation
        document.addEventListener('DOMContentLoaded', function() {
            const password = document.getElementById('password');
            const confirmPassword = document.getElementById('confirmPassword');
            
            function validatePassword() {
                if (password.value !== confirmPassword.value) {
                    confirmPassword.setCustomValidity("Passwords don't match");
                } else {
                    confirmPassword.setCustomValidity('');
                }
            }
            
            password.addEventListener('change', validatePassword);
            confirmPassword.addEventListener('keyup', validatePassword);
        });
    </script>
</body>
</html>