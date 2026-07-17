<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Chardham Yatra | Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap');

            *{
                margin:0;
                padding:0;
                box-sizing:border-box;
                font-family:'Poppins',sans-serif;
            }

            html{
                scroll-behavior:smooth;
            }

            body{
                background:#f8f9fa;
                overflow-x:hidden;
            }

            /*================ HERO =================*/

            .hero{
                position:relative;
                width:100%;
                height:100vh;
                background:
                    
                    url("image/char2.png");
                background-size:cover;
                background-position:center;
                display:flex;
                justify-content:center;
                align-items:center;
                text-align:center;
                color:#fff;
            }

            .hero-content{
                max-width:850px;
                animation:fadeUp 1.5s;
            }

            .hero h1{
                font-size:65px;
                font-weight:700;
                letter-spacing:2px;
            }

            .hero h4{
                color:#ffc107;
                margin-bottom:15px;
                font-weight:600;
            }

            .hero p{
                font-size:20px;
                margin:25px 0;
            }

            .hero .btn{
                padding:13px 35px;
                border-radius:40px;
                font-weight:600;
                transition:.4s;
            }

            .hero .btn-warning:hover{
                transform:translateY(-5px);
            }

            .hero .btn-outline-light:hover{
                transform:translateY(-5px);
            }

            /*================ SECTION TITLE =================*/

            .section-title{
                text-align:center;
                font-weight:700;
                margin-bottom:50px;
                color:#222;
                position:relative;
            }

            .section-title::after{
                content:"";
                width:80px;
                height:4px;
                background:#ff9800;
                display:block;
                margin:12px auto;
                border-radius:20px;
            }

            /*================ TEMPLE CARD =================*/

            .card{
                border:none;
                border-radius:18px;
                overflow:hidden;
                transition:.4s;
                box-shadow:0 10px 30px rgba(0,0,0,.10);
            }

            .card:hover{
                transform:translateY(-12px);
                box-shadow:0 20px 40px rgba(0,0,0,.20);
            }

            .temple-img{
                height:260px;
                object-fit:cover;
                transition:.6s;
            }

            .card:hover .temple-img{
                transform:scale(1.12);
            }

            .card-body{
                padding:22px;
            }

            .card-title{
                font-size:22px;
                font-weight:700;
            }

            .card-text{
                color:#777;
            }

            /*================ BUTTON =================*/

            .btn-warning{
                border-radius:30px;
                padding:10px 30px;
                font-weight:600;
            }

            /*================ ABOUT =================*/

            .about-section{
                background:#fff;
            }

            .about-section img,
            .about-section video{
                border-radius:20px;
                box-shadow:0 20px 40px rgba(0,0,0,.15);
            }

            .about-section h2{
                font-weight:700;
            }

            .about-section p{
                color:#666;
                line-height:30px;
            }

            /*================ WHY US =================*/

            .feature-box{
                background:#fff;
                padding:35px;
                border-radius:20px;
                text-align:center;
                transition:.4s;
                box-shadow:0 10px 30px rgba(0,0,0,.10);
            }

            .feature-box:hover{
                background:linear-gradient(45deg,#ff9800,#ff5722);
                color:#fff;
                transform:translateY(-10px);
            }

            .feature-box i{
                font-size:55px;
                margin-bottom:20px;
            }

            .feature-box h5{
                font-weight:700;
            }

            .feature-box p{
                margin-top:15px;
            }

            /*================ GALLERY =================*/

            .gallery img{
                border-radius:15px;
                transition:.5s;
            }

            .gallery img:hover{
                transform:scale(1.08);
            }

            /*================ FOOTER =================*/

            footer{
                background:#111;
                color:#fff;
                padding:60px 0;
            }

            footer a{
                color:#ddd;
                text-decoration:none;
            }

            footer a:hover{
                color:#ffc107;
            }

            /*================ ANIMATION =================*/

            @keyframes fadeUp{

                0%{
                    opacity:0;
                    transform:translateY(80px);
                }

                100%{
                    opacity:1;
                    transform:translateY(0);
                }

            }

            /*================ RESPONSIVE =================*/

            @media(max-width:992px){

                .hero h1{
                    font-size:48px;
                }

                .hero p{
                    font-size:18px;
                }

            }

            @media(max-width:768px){

                .hero{
                    padding:20px;
                }

                .hero h1{
                    font-size:38px;
                }

                .hero p{
                    font-size:16px;
                }

                .temple-img{
                    height:220px;
                }

            }

            @media(max-width:576px){

                .hero h1{
                    font-size:30px;
                }

                .hero h4{
                    font-size:20px;
                }

                .hero .btn{
                    display:block;
                    margin:10px auto;
                    width:220px;
                }

            }
            .temple-card{
                transition:.4s;
                overflow:hidden;
                border-radius:20px;
            }

            .temple-card:hover{
                transform:translateY(-12px);
                box-shadow:0 20px 40px rgba(0,0,0,.2)!important;
            }

            .temple-img{
                height:260px;
                object-fit:cover;
                transition:.5s;
            }

            .temple-card:hover .temple-img{
                transform:scale(1.1);
            }

            .btn-warning{
                background:#ff9800;
                border:none;
                font-weight:600;
            }

            .btn-warning:hover{
                background:#e68900;
                transform:scale(1.05);
            }
            .shadow{
                transition:.4s;
            }

            .shadow:hover{
                transform:translateY(-8px);
                box-shadow:0 20px 40px rgba(0,0,0,.15)!important;
            }

            .btn-warning{
                background:#ff9800;
                border:none;
                font-weight:600;
            }

            .btn-warning:hover{
                background:#f57c00;
            }

            .display-5{
                line-height:1.2;
            }
        </style>
    </head>
    <body>

        <%--<%@ include file="includes/header.jsp" %>--%>
        <%@ include file="includes/header.jsp" %>


        <!-- Hero Section -->
        <div class="hero text-center">

        </div>

        <!-- Temples Section -->
        <!-- =================== Temples Section =================== -->
        <section class="py-5" style="background:#f8f9fa;">

            <div class="container">

                <div class="text-center mb-5">
                    <h2 class="fw-bold display-5">
                        🛕 Explore the Four Dhams
                        <br>
                        <b>भारत के प्रमुख तीर्थ और प्रसिद्ध मंदिर</b>
                    </h2>

                    <p class="text-muted fs-5">
                        Discover the Divine Journey through the Sacred Himalayas
                    </p>

                    <hr class="mx-auto" style="width:120px;height:4px;background:#ff9800;border:none;border-radius:20px;">
                </div>

                <div class="row g-4">

                    <!-- Badrinath -->
                    <div class="col-lg-3 col-md-6">

                        <div class="card border-0 shadow-lg h-100 temple-card">

                            <img src="https://i.pinimg.com/736x/36/88/58/3688581168b29a9a096bd5e850f8939f.jpg"
                                 class="card-img-top temple-img">

                            <div class="card-body text-center">

                                <h4 class="fw-bold">
                                    Badrinath
                                </h4>

                                <p class="text-muted">
                                    Sacred Temple of Lord Vishnu located in Uttarakhand.
                                </p>

                                ⭐⭐⭐⭐⭐

                                <br><br>

                                <a href="temples.jsp"
                                   class="btn btn-warning rounded-pill px-4">
                                    Explore
                                </a>

                            </div>

                        </div>

                    </div>

                    <!-- Kedarnath -->

                    <div class="col-lg-3 col-md-6">

                        <div class="card border-0 shadow-lg h-100 temple-card">

                            <img src="https://i.pinimg.com/736x/7f/b2/5f/7fb25f0000f19ef544da1cb42d1e4cfc.jpg"
                                 class="card-img-top temple-img">

                            <div class="card-body text-center">

                                <h4 class="fw-bold">
                                    Kedarnath
                                </h4>

                                <p class="text-muted">
                                    One of the twelve Jyotirlingas of Lord Shiva.
                                </p>

                                ⭐⭐⭐⭐⭐

                                <br><br>

                                <a href="temples.jsp"
                                   class="btn btn-warning rounded-pill px-4">
                                    Explore
                                </a>

                            </div>

                        </div>

                    </div>

                    <!-- Gangotri -->

                    <div class="col-lg-3 col-md-6">

                        <div class="card border-0 shadow-lg h-100 temple-card">

                            <img src="https://i.pinimg.com/736x/6c/91/e3/6c91e307ce6ad7eeb5a60d06af827ec4.jpg"
                                 class="card-img-top temple-img">

                            <div class="card-body text-center">

                                <h4 class="fw-bold">
                                    Gangotri
                                </h4>

                                <p class="text-muted">
                                    Holy Origin Temple of River Ganga.
                                </p>

                                ⭐⭐⭐⭐⭐

                                <br><br>

                                <a href="temples.jsp"
                                   class="btn btn-warning rounded-pill px-4">
                                    Explore
                                </a>

                            </div>

                        </div>

                    </div>

                    <!-- Yamunotri -->

                    <div class="col-lg-3 col-md-6">

                        <div class="card border-0 shadow-lg h-100 temple-card">

                            <img src="https://i.pinimg.com/736x/6d/6f/f8/6d6ff8b4290618dd42e3c74896926afe.jpg"
                                 class="card-img-top temple-img">

                            <div class="card-body text-center">

                                <h4 class="fw-bold">
                                    Yamunotri
                                </h4>

                                <p class="text-muted">
                                    Sacred Source Temple of River Yamuna.
                                </p>

                                ⭐⭐⭐⭐⭐

                                <br><br>

                                <a href="temples.jsp"
                                   class="btn btn-warning rounded-pill px-4">
                                    Explore
                                </a>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </section>
        <!--...History..-->

        <section class="py-5">
            <div class="container">
                <div class="row align-items-center g-5">
                    <div class="col-lg-6">
                        <div class="ratio ratio-4x3  rounded shadow">
                            <iframe src="Char Dham Kedarnath, Badrinath, Gangotri And Yamunotri.mp4" 
                                    title="Chardham Yatra Video" frameborder="0"
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen></iframe>
                        </div>
                        <!--,vide tags.-->
                        
                    </div>
                    
                    


                    <div class="col-lg-6">

                        <span class="badge bg-warning text-dark px-3 py-2 mb-3 fs-6">
                            🛕 Spiritual Journey
                        </span>

                        <h2 class="display-5 fw-bold mb-4">
                            Discover the Divine
                            <span class="text-warning">Char Dham Yatra</span>
                        </h2>

                        <p class="text-muted fs-5">
                            The <strong>Char Dham Yatra</strong> is one of India's most sacred pilgrimages,
                            taking devotees to the four holy shrines of
                            <strong>Yamunotri, Gangotri, Kedarnath,</strong> and
                            <strong>Badrinath</strong> in the breathtaking Himalayas of Uttarakhand.
                        </p>

                        <p class="text-muted">
                            Every year, thousands of pilgrims visit these ancient temples to seek
                            divine blessings, inner peace, and spiritual enlightenment while enjoying
                            the spectacular beauty of snow-covered mountains, rivers, waterfalls,
                            and valleys.
                        </p>

                        <div class="row mt-4">

                            <div class="col-6 mb-3">

                                <div class="shadow rounded-4 p-3 text-center">

                                    <h3 class="text-warning fw-bold">4</h3>

                                    <small class="text-muted">
                                        Sacred Temples
                                    </small>

                                </div>

                            </div>

                            <div class="col-6 mb-3">

                                <div class="shadow rounded-4 p-3 text-center">

                                    <h3 class="text-warning fw-bold">50K+</h3>

                                    <small class="text-muted">
                                        Happy Pilgrims
                                    </small>

                                </div>

                            </div>

                            <div class="col-6">

                                <div class="shadow rounded-4 p-3 text-center">

                                    <h3 class="text-warning fw-bold">15+</h3>

                                    <small class="text-muted">
                                        Years Experience
                                    </small>

                                </div>

                            </div>

                            <div class="col-6">

                                <div class="shadow rounded-4 p-3 text-center">

                                    <h3 class="text-warning fw-bold">24×7</h3>

                                    <small class="text-muted">
                                        Customer Support
                                    </small>

                                </div>

                            </div>

                        </div>

                        <div class="mt-5">

                            <a href="packages.jsp"
                               class="btn btn-warning btn-lg rounded-pill px-5 me-3">

                                Book Your Tour

                            </a>

                            <a href="temples.jsp"
                               class="btn btn-outline-dark btn-lg rounded-pill px-5">

                                Explore Temples

                            </a>

                        </div>

                    </div>
                </div>
            </div>
        </section>



        <!--,...ends..-->
        <section class="py-5 bg-light">
            <div class="container">
                <h2 class="mb-4 text-center fw-bold">Why Us?</h2>
                <div class="row g-4">
                    <div class="col-md-6 col-lg-3">
                        <div class="p-4 bg-white shadow-sm rounded text-center h-100">
                            <i class="bi bi-briefcase-fill fs-1 mb-3"></i>
                            <h5 class="fw-bold">Premium Tours</h5>
                            <p>Enjoy the finest in luxury with our Elite Tours.</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="p-4 bg-white shadow-sm rounded text-center h-100">
                            <i class="bi bi-people-fill fs-1 mb-3"></i>
                            <h5 class="fw-bold">Trusted by Many</h5>
                            <p>Trusted by over 5,500 satisfied customers.</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="p-4 bg-white shadow-sm rounded text-center h-100">
                            <i class="bi bi-award-fill fs-1 mb-3"></i>
                            <h5 class="fw-bold">Satisfaction Guaranteed</h5>
                            <p>Ensuring 100% Satisfaction on Every Tour.</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="p-4 bg-white shadow-sm rounded text-center h-100">
                            <i class="bi bi-clipboard-check-fill fs-1 mb-3"></i>
                            <h5 class="fw-bold">Local Knowledge</h5>
                            <p>Discover the destination with expert local insights.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <%@ include file="includes/footer.jsp" %>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
