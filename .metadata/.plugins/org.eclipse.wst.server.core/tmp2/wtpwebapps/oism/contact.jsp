<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="Tooplate">

		<link rel="icon" href="images/Picture2.png" type="image/png">
        <title>AcademiaLink</title>
        
        <style>
        /* Target the favicon */
        link[rel="icon"] {
            width: 20px; /* Adjust the width as needed */
            height: 15px; /* Adjust the height as needed */
        }
        
        /* Add any additional custom styles here */
        .login-container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fff;
            margin-top: 50px;
        }
    </style>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&display=swap" rel="stylesheet">
        <link href="css/css4.css" rel="stylesheet">
        <link href="css/css3.css" rel="stylesheet">
        <link href="css/css2.css" rel="stylesheet">
        <link href="css/css1.css" rel="stylesheet">
     </head>
<body>

 <body id="section_1">

        <header class="site-header">
            <div class="container">
            </div>
        </header>

        <nav class="navbar navbar-expand-lg bg-white shadow-lg">
            <div class="container">

                <a href="#" class="navbar-brand"><span class="text-danger"><img src="images/Picture1.png" style = "width:70px;height:55px;" alt="logo">&nbsp;AcademiaLink</span></a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="home.jsp"><small class="small-title"><strong class="text-warning"></strong></small> Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="contact.jsp"><small class="small-title"><strong class="text-warning"></strong></small> Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="studentsearch.jsp"><small class="small-title"><strong class="text-warning"></strong></small> Search Results</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link click-scroll" href="Login.jsp"><small class="small-title"><strong class="text-warning"></strong></small> Login</a>
                        </li>
                        
                    </ul>
                    </div>
                      </div>
        </nav>
      


<div class="bg-secondary bg-gradient">
<div class ="container "><br><br>
 <h1> Get in Touch</h1><br>
 <h6> Send Your Request</h6><br>
 <div class ="form-group">
 <form id="form" method="post" action="insert" class="form-control" class="bg-light-subtle ">
 
 <label for="name"> Your Name :</label><br>
 <br>
 <input type="text" id="name" name="name" required class="form-control" placeholder="Enter Your Name"><br>
 <br>
 
 <label for="number"> Phone No :</label><br>
 <br>
 <input type="number" id="number" name="number"  min="100000000" max="999999999"  required class="form-control" placeholder="Enter Your Phone Number"><br>
 <br>
 
 <label for="email"> Your Email Address:</label><br>
 <br>
 <input type="email" id="email" name="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" class="form-control" placeholder="Enter Email"><br>
 <br>
 
 <label for="subject"> Subject :</label><br>
 <br>
 <input type="text" id="subject" name="subject" required class="form-control" ><br>
 <br>
 
 <label for="message"> Your Message :</label><br>
 <br>
 <div class ="col-6">
 <textarea id="message" rows="8" name="message" required class="form-control"></textarea>
 <br>
 </div>
 <input type="submit" value="SEND" id="sendbtn" class="button" name = "submit" class="button btn-primary">
 </form>
 </div>
</div>
</div>
<section >
        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Find Us</h3>

                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3388.3395433974006!2d79.97325049791779!3d6.914650787328481!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2slk!4v1698211139321!5m2!1sen!2slk" width="250" height="250" style="border:2;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                       
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Quick Links</h3>
                        <a class="btn btn-link text-white-50" href="#section_2">About Us</a><br>
                        <a class="btn btn-link text-white-50" href="contact.jsp">Contact Us</a><br>
                        <a class="btn btn-link text-white-50" href="#section_3">Facilities</a><br>
                        <a class="btn btn-link text-white-50" href="T&C.jsp">Terms and Condition</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Photo Gallery</h3>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="images/school.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="images/footer1.jpeg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="images/footer2.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="images/about-2.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="images/about-1.jpeg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="images/footer3.jpeg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Newsletter</h3>
                        <p style ="color:white;">Get to Daliy News..</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

            </section>
    <!-- Include Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>