<%-- 
    Document   : register
    Created on : Dec 1, 2024, 12:50:41 PM
    Author     : HAO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="Utils.Constants"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Page</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <!-- FontAwesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <style>
            /* Body Styling */
            body {
                background-color: #f4f7fc;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            /* Left Column */
            .left-column {
                background: linear-gradient(135deg, #C0C0C0, #A9A9A9);
                height: 100vh;
                display: flex;
                flex-direction: column;
                justify-content: center;
                text-align: center;
            }

            .left-content img {
                max-width: 100%;
                height: auto;
            }

            /* Right Column */
            .right-column {
                padding: 20px;
            }

            /* Login Form */
            .account-form {
                background-color: #fff;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            }

            .account-form h2 {
                font-size: 30px;
                font-weight: bold;
            }

            .account-form .form-group label {
                font-size: 14px;
                font-weight: 600;
            }

            .account-form .form-control {
                border-radius: 5px;
                padding: 15px;
                font-size: 16px;
                border: 1px solid #ddd;
            }

            .account-form .form-control:focus {
                border-color: #4e73df;
                box-shadow: 0 0 0 0.25rem rgba(78, 115, 223, 0.25);
            }

            .account-form .btn {
                background: linear-gradient(135deg, #C0C0C0, #A9A9A9);
                border: none;
                padding: 12px;
                font-size: 18px;
                border-radius: 5px;
                transition: all 0.3s ease;
            }

            .account-form .btn:hover {
                background: linear-gradient(#fff, #C0C0C0, #A9A9A9);
            }

            /* Social Login */
            .social-login a {
                font-size: 18px;
                font-weight: 600;
                padding: 15px;
                border-radius: 5px;
                transition: all 0.3s ease;
            }

            .social-login a:hover {
                opacity: 0.8;
            }

            .social-login .btn-danger {
                background-color: #db4437;
            }

            .social-login .btn-danger:hover {
                background-color: #c1351d;
            }

            #error-message {
                position: fixed;
                top: 20px;
                right: 20px;
                background-color: #f44336;
                color: white;
                padding: 10px;
                border-radius: 5px;
                font-size: 16px;
                display: none; /* Hidden by default */
                z-index: 9999;
            }

            /* Responsive Styling */
            @media (max-width: 768px) {
                .left-column {
                    display: none;
                }

                .right-column {
                    padding: 20px;
                }

                .account-form {
                    padding: 30px;
                }
            }

        </style>
    </head>

    <body class="bg-light">
        <div class="container-fluid">
            <div class="row">
                <!-- Left Column - 50% width with background image -->
                <div class="col-lg-6 d-none d-lg-block left-column">
                    <div class="left-content">
                        <img src="./resource/images/laptop.jpg" alt="Logo or Image" class="img-fluide">
                    </div>
                </div>

                <!-- Right Column - 50% width -->
                <div class="col-lg-6 col-md-12 right-column d-flex align-items-center justify-content-center">
                    <div class="account-form shadow-lg">
                        <h2 class="text-center mb-4">Login to your <span>Account</span></h2>
                        <form action="login" method="post">
                            <div class="form-group">
                                <label for="email">Email Address</label>
                                <input type="email" name="email" id="email" class="form-control" value="${requestScope.email}" required autofocus>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" name="password" id="password" class="form-control" value="${requestScope.password}" required>
                            </div>
                            <div class="form-group form-forget d-flex justify-content-between">
                                <div>
                                    <input type="checkbox" name="rememberMe" id="rememberMe">
                                    <label for="rememberMe">Remember me</label>
                                </div>
                                <a href="/LoginController/ForgotPassword">Forgot Password?</a>
                            </div>
                            <a type="submit" href="/LoginController/Login" class="btn btn-primary btn-block mb-3">Login</a>

                            <!-- Create Account Button -->
                            <div class="text-center mb-3">
                                <p>Don't have an account?</p>
                                <a href="/LoginController/CreateAccount" class="btn btn-success btn-block">
                                    <i class="fas fa-user-plus"></i> Create Account
                                </a>
                            </div>

                            <div class="social-login text-center">
                                <p>Or login with</p>
                                <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=<%= Constants.GOOGLE_REDIRECT_URI%>&response_type=code&client_id=<%= Constants.GOOGLE_CLIENT_ID%>&approval_prompt=force" class="btn btn-danger btn-block">
                                    <i class="fab fa-google"></i> Login with Google
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Error message div -->
            <div id="error-message">
                <span id="error-text"></span>
            </div>

            <!-- JSTL Error Handling -->
            <c:if test="${not empty errorMessage}">
                <script>
                    document.getElementById("error-text").innerText = "${errorMessage}";
                    document.getElementById("error-message").style.display = "block";
                    setTimeout(function () {
                        document.getElementById("error-message").style.display = "none";
                    }, 5000);
                </script>
            </c:if>

        </div>

        <!-- Bootstrap JS and jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>

</html>
