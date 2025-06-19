<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESULTS SEARCHING</title>

	<style>
	body {
        background-color: white;
    }
        /* Target the favicon */
    link[rel="icon"] {
         width: 20px; /* Adjust the width as needed */
         height: 15px; /* Adjust the height as needed */
        }
	</style>
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
                            <a class="nav-link click-scroll" href="#section_1"><small class="small-title"><strong class="text-warning"></strong></small> Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_4"><small class="small-title"><strong class="text-warning"></strong></small> Teachers </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="contact.jsp"><small class="small-title"><strong class="text-warning"></strong></small> Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="studentsearch.jsp"><small class="small-title"><strong class="text-warning"></strong></small> Search Results</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link click-scroll" href="home.jsp"><small class="small-title"><strong class="text-warning"></strong></small> Log Out</a>
                        </li>
                    </ul>
                    </div>
        </nav>
        <img src="images/exam.jpeg" style="width: 100%; height: 0%; object-fit: cover;">

<div style="position: absolute; top: 320px; left: 90px; background-color: rgba(255, 255, 255, 0.8); height: 50%">
   <br><h3 style = "text-align:center;">Find Your Exam Result Here... </h3>
    <div class="container" style="display: flex; justify-content: center;  height: 100vh;">
        <form action="ssearch" method="POST">
            <div class="form-group">
                <label for="studentId">Student ID:</label>
                <input type="text" id="studentId" name="studentId" class="form-control" style="width: 500px;">
            </div><br>
            <div class="form-group">
                <label for="studentName">Student Name:</label>
                <input type="text" id="studentName" name="studentName" class="form-control" style="width: 500px;">
            </div><br>
            <button type="submit" class="btn btn-primary">SEARCH</button>
          </form>
    </div>
    </div>
            
            
          <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5" style = "color:gray;">

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


</body>
</html>