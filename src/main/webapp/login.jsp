<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Sign In - LuxeStay</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gray-50 flex flex-col justify-center py-12 sm:px-6 lg:px-8"> 
    <div class="sm:mx-auto sm:w-full sm:max-w-md"> 
        <a href="index.jsp" class="flex justify-center">
            <h1 class="text-3xl font-bold text-gray-900">LuxeStay</h1>
        </a>
        <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900"> 
            Sign in to your account
        </h2>
        <p class="mt-2 text-center text-sm text-gray-600"> 
            Or 
            <a href="register.jsp" class="font-medium text-blue-600 hover:text-blue-500"> 
                Create a new account
            </a>
        </p>
    </div>

    <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md"> 
        <div class="bg-white py-8 px-4 shadow sm:rounded-lg sm:px-10"> 
                
            
            <form action="Login" method="post" class="space-y-6"> 
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
                    <label for="password" class="block text-sm font-medium text-gray-700"> 
                        Password
                    </label>
                    <div class="mt-1"> 
                        <input id="password" name="password" type="password" autocomplete="current-password" required
                               class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm"
                               placeholder="Enter your password" />
                    </div>
                </div>

                <div class="flex items-center justify-between"> 
                    <div class="flex items-center"> 
                        <input id="remember-me" name="remember-me" type="checkbox"
                               class="h-4 w-4 text-blue-600 focus:ring-blue-500 border-gray-300 rounded" />
                        <label for="remember-me" class="ml-2 block text-sm text-gray-900"> 
                            Remember me
                        </label>
                    </div>

                    <div class="text-sm"> 
                        <a href="forgot-password.jsp" class="font-medium text-blue-600 hover:text-blue-500"> 
                            Forgot your password?
                        </a>
                    </div>
                </div>

                <div>
                    <button type="submit"
                            class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"> 
                        <span class="absolute left-0 inset-y-0 flex items-center pl-3"> 
                            <svg class="h-5 w-5 text-blue-500 group-hover:text-blue-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"> 
                                <path fill-rule="evenodd" d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z" clip-rule="evenodd" />
                            </svg>
                        </span>
                        Sign in
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
</body>
</html>