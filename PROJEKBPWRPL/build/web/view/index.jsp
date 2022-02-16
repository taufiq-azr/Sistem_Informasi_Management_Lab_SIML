<%-- 
    Document   : index
    Created on : Feb 7, 2022, 3:34:23 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Sistem Informasi Manajemen Laboratorium</title>
        <!-- 
        
        Highway Template
        
        https://templatemo.com/tm-520-highway
        
        -->
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="../asset/css/bootstrap.min.css">
        <link rel="stylesheet" href="../asset/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="../asset/css/fontAwesome.css">
        <link rel="stylesheet" href="../asset/css/light-box.css">
        <link rel="stylesheet" href="../asset/css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="../asset/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        
    </head>

    <body>

        <nav>
            <div class="logo">
                <a href="#">
                        <img src="../asset/SIMLProjext.png" width="200" height="90"/>
                    </a>
            </div>
            
            <div class="login-button">
                <a href="../view/UIlogin.jsp">
                <img src="../asset/img/LoginButton.png" >
                <span></span>
                </a>
            </div>
            
 
            
        </nav>

        <div id="video-container">
            <div class="video-overlay"></div>
            <div class="video-content">
                <div class="inner">
                    <center><h1>Selamat Datang</h1></center>
                    <p>Lab Management System - Politeknik Caltex Riau</p>

                    <div class="scroll-icon">
                        <a class="scrollTo" data-scrollTo="portfolio" href="#"><img src="../asset/img/scroll-icon.png" alt=""></a>
                    </div>    
                </div>
            </div>
            <video autoplay="" loop="" muted>
                <source src="../asset/InShot_20220207_221529718.mp4" type="video/mp4" />
            </video>
        </div>


        <footer>
            <div class="container-fluid">
                <div class="col-md-12">
                    <p>Copyright &copy; 2022 Company [2TIB] 

                        | Designed by 2TIB</p>
                </div>
            </div>
        </footer>


        <!-- Modal button -->
        <div class="popup-icon">
            <button id="modBtn" class="modal-btn"><img src="../asset/img/contact-icon.png" alt=""></button>
        </div>  

        <!-- Modal -->
        <div id="modal" class="modal">
            <!-- Modal Content -->
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="header-title">Say hello to <em>Highway</em></h3>
                    <div class="close-btn"><img src="../asset/img/close_contact.png" alt=""></div>    
                </div>
                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="col-md-6 col-md-offset-3">
                        <form id="contact" action="" method="post">
                            <div class="row">
                                <div class="col-md-12">
                                    <fieldset>
                                        <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required="">
                                    </fieldset>
                                </div>
                                <div class="col-md-12">
                                    <fieldset>
                                        <input name="email" type="email" class="form-control" id="email" placeholder="Your email..." required="">
                                    </fieldset>
                                </div>
                                <div class="col-md-12">
                                    <fieldset>
                                        <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." required=""></textarea>
                                    </fieldset>
                                </div>
                                <div class="col-md-12">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="btn">Send Message Now</button>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>



        <section class="overlay-menu">
            <div class="container">
                <div class="row">
                    <div class="main-menu">
                        <ul>
                            <li>
                                <a href="index.html">Home - Full-width</a>
                            </li>
                            <li>
                                <a href="masonry.html">Home - Masonry</a>
                            </li>
                            <li>
                                <a href="grid.html">Home - Small-width</a>
                            </li>
                            <li>
                                <a href="about.html">About Us</a>
                            </li>
                            <li>
                                <a href="blog.html">Blog Entries</a>
                            </li>
                            <li>
                                <a href="single-post.html">Single Post</a>
                            </li>
                        </ul>
                        <p>We create awesome templates for you.</p>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../asset/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="../asset/js/vendor/bootstrap.min.js"></script>

        <script src="../asset/js/plugins.js"></script>
        <script src="../asset/js/main.js"></script>


    </body>
</html>
