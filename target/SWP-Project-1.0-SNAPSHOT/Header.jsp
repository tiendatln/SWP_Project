<%-- 
    Document   : Home
    Created on : Feb 12, 2025, 2:16:35 PM
    Author     : tiend
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thế Giới Di Động Layout</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            .nav-item{
                justify-content: center;
            }
            .nav-item li{
                cursor: pointer;
                padding: 10px;
                width: 150px;
                position: relative;
                border-radius: 10px 10px 0 0;
            }
            .nav-item li:hover{
                background-color: orange;

            }
            .nav-item {
                padding: 0;
                margin: 0;
            }
            nav{
                align-content: center;
                padding: 0;
            }
            .user:hover{
                background-color: orange;
            }
            .cart:hover{
                background-color: orange;
            }
            .cart{
                border-radius: 20px;
            }
            .user{
                border-radius: 20px;
            }
        </style>
    </head>
    <body>

        <!-- Header -->
        <header class="bg-yellow-400 py-3 px-6 shadow-md">
            <div class="container flex items-center justify-between">
                <div class="flex items-center space-x-3">
                    <a class="flex btn" href="/web/index.jsp">
                    <img src="logo.png" alt="Logo" class="w-10 h-10">
                    <span class="text-black text-2xl font-bold italic">Device</span>
                    </a>
                </div>
                <div class="flex-1 mx-6">
                    <form class="d-flex search-bar"  method="GET" action="/search">
                        <input class="form-control me-md-2" type="search" name="q" placeholder="Search" aria-label="Search">
                    </form>
                </div>
                <div class="flex space-x-4" style="margin: 0; padding: 0;">
                    <div class="user">
                        <a href="/LoginController/Login" class="text-black btn font-medium flex items-center no-underline "><i class="fa-solid fa-user" style="margin: 4px;"></i>Dat</a>
                    </div>
                    <div class="cart">
                        <a href="/CartController/Cart" class="text-black btn font-medium flex items-center no-underline "><span><i class="fa-solid fa-cart-shopping" style="margin: 4px;"></i>Cart</a>
                    </div>
                </div>
            </div>
        </header>


        <nav class="bg-yellow-400 ">
            <ul class="flex bg-yellow-400 container text-black font-medium nav-item">
                <li><a href="#" class="flex header-item justify-content-center items-center no-underline">Smartphone</a></li>
                <li><a href="#" class="flex header-item justify-content-center items-center no-underline">Laptop</a></li>
                <li><a href="#" class="flex header-item justify-content-center items-center no-underline">Headphones</a></li>
                <li><a href="#" class="flex header-item justify-content-center items-center no-underline">Watch</a></li>
                <li><a href="#" class="flex header-item justify-content-center items-center no-underline">Tablet</a></li>
                <li><a href="#" class="flex header-item justify-content-center items-center no-underline">PC, Print</a></li>
                <li><a href="#" class="flex header-item justify-content-center items-center no-underline">sim_card</a></li>
                <li><a href="#" class="flex header-item justify-content-center items-center no-underline">build</a></li>
            </ul>
        </nav>

    </body>
</html>
