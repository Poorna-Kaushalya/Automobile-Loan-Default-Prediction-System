<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
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
                            <a class="nav-link click-scroll" href="#section_2"><small class="small-title"><strong class="text-warning"></strong></small> About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_3"><small class="small-title"><strong class="text-warning"></strong></small> Facilities </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="makepayment.jsp"><small class="small-title"><strong class="text-warning"></strong></small> Payment </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="studentsearch.jsp"><small class="small-title"><strong class="text-warning"></strong></small>Results</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="contact.jsp"><small class="small-title"><strong class="text-warning"></strong></small> Contact Us</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link click-scroll" href="Login.jsp"><small class="small-title"><strong class="text-warning"></strong></small> Login</a>
                        </li>
                    </ul>
                    </div>
        </nav>
        <main>

            <section class="hero">
                <div class="container-fluid h-100">
                    <div class="row h-100">

                        <div id="carouselExampleCaptions" class="carousel carousel-fade hero-carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="container position-relative h-100">
                                        <div class="carousel-caption d-flex flex-column justify-content-center" style = "width:650px;">
                                        
                                            <h1 style = "color:white;">Embark on your journey where curiosity meets
                                             <span class="text-warning"> knowledge.</span> </h1>

                                            <div class="d-flex align-items-center mt-4">
                                                <a class="custom-btn btn custom-link" href="Login.jsp">Get Started >></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="carousel-image-wrap">
                                        <img src="images/front1.jpg" class="img-fluid carousel-image" alt="">
                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <div class="container position-relative h-100">
                                        <div class="carousel-caption d-flex flex-column justify-content-center">
                                           
                                            <h1>We shape your world with <span class="text-warning">care and creativity.</span></h1>

                                               <div class="d-flex align-items-center mt-4">
                                                <a class="custom-btn btn custom-link" href="#section_2">Get Started >></a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="carousel-image-wrap">
                                        <img src="images/front3.jpg" class="img-fluid carousel-image" alt="">
                                    </div>
                                </div>

                                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>

                                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <section class="about section-padding" id="section_2">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12 mb-5 mb-lg-0">
                            <div class="about-image-wrap h-100">
                                <img src="images/school.jpg" class="img-fluid about-image" alt="school">

                                <div class="about-image-info">
                                    <h4 class="text-white">Academic High School</h4>

                                    <p class="text-white mb-0">Best exam results and best school of the year...</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12 d-flex flex-column">
                            <div class="about-thumb bg-white shadow-lg">
                                
                                <div class="about-info">
                                    <h3 class="mb-3">About Us.</h3>

                                    <p><b>Academic High School</b> offers a comprehensive curriculum from classes 1 to 11 including advanced level courses.
                                     With a reputation as the best school in the city, the school is equipped with its top facilities including a 
                                     state-of-the-art computer lab, state-of-the-art lab and smart classrooms. Academic High School consistently achieves the best
                                      results in the city, a testament to its unwavering commitment to academic excellence and holistic student development.</p>
                                </div>
                            </div>
                              
                                    <div class="about-thumb d-flex flex-column justify-content-center bg-danger mb-lg-0 h-100">
                                        
                                        <div class="about-info" style = "width: 1500px;">
                                            <h5 class="text-white mb-4">For More Details..</h5>
											<h4 class="mb-2">
	                                            <a href="tel: 0112345678">
	                                                <i class="bi-telephone contact-icon me-2"></i>
	                                               &nbsp; 0112345678
	                                            </a>
	                                        </h4>                                        
	                                        <h5>
	                                            <a href="mailto:info@company.com" class="footer-link">
	                                                <i class="bi-envelope-fill contact-icon me-2"></i>
	                                                &nbsp;&nbsp; info@academialink.lk
	                                            </a>
	                                        </h5>
                                        </div>
                                    </div>
                                </div>
 
                            </div>
                        </div>

            </section>

<div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <h3 class="mb-4">Our Work And Our Cultural Activities</h3>
                        <p>AcademiaLink is committed to education, fostering an environment that encourages intellectual curiosity, critical thinking, and personal growth.
                        	 Their faculty and staff provide a comprehensive curriculum, equipping students with knowledge and skills for academic success and a positive impact in their communities.
                        	 Innovative teaching methods and holistic development are key to their success.</p>
                        <p class="mb-4">AcademiaLink prioritizes cultural enrichment, fostering creativity, appreciation for diversity, and a sense of belonging.
                        	 Through art exhibitions, musical performances, and festivals, the school celebrates diverse talents and traditions. These activities promote inclusivity, mutual understanding, 
                        	 and deeper connections among students,fostering a lasting sense of unity and belonging that will resonate with them throughout their lives..</p>
                        <div class="row g-4 align-items-center">  
                        </div>
                    </div>
                    <div class="col-lg-6 about-img wow fadeInUp" data-wow-delay="0.5s">
                        <div class="row">
                            <div class="col-12 text-center">
                                <img class="img-fluid w-75 rounded-circle bg-light p-3" src="images/about-1.jpeg" alt="">
                            </div>
                            <div class="col-6 text-start" style="margin-top: -150px;">
                                <img class="img-fluid w-100 rounded-circle bg-light p-3" src="images/about-2.jpg" alt="">
                            </div>
                            <div class="col-6 text-end" style="margin-top: -150px;">
                                <img class="img-fluid w-100 rounded-circle bg-light p-3" src="images/about-3.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


            <section class="services section-padding" id="section_3">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-10 col-12 text-center mx-auto mb-5">
                            <h3>Facilities</h3>

                        </div>

                        <div class="col-lg-6 col-12">
                            <nav>
                                <div class="nav nav-tabs flex-column align-items-baseline" id="nav-tab" role="tablist">
                                    <button class="nav-link active" id="nav-business-tab" data-bs-toggle="tab" data-bs-target="#nav-business" type="button" role="tab" aria-controls="nav-business" aria-selected="true">
                                        <h3>&nbsp;&nbsp;Library</h3>

                                        <span>&nbsp;Our school's library is a hub for intellectual exploration, offering &nbsp;a vast collection of books, digital resources, and study areas, 
                                        &nbsp;fostering independent research and collaborative learning.
                                        </span>
                                         </button>

                                    <button class="nav-link" id="nav-strategy-tab" data-bs-toggle="tab" data-bs-target="#nav-strategy" type="button" role="tab" aria-controls="nav-strategy" aria-selected="false">
                                        <h3>&nbsp;&nbsp;Sports Facilities</h3>
                                        
                                        <span>&nbsp;Our school provides top-tier sports facilities, promoting &nbsp;sportsmanship and teamwork, ensuring students' 
                                        physical &nbsp;&nbsp;well-being and holistic development through various sports.</span>
                                    </button>

                                    <button class="nav-link" id="nav-video-tab" data-bs-toggle="tab" data-bs-target="#nav-video" type="button" role="tab" aria-controls="nav-video" aria-selected="false">
                                        <h3>&nbsp;&nbsp;Computer Labs and &nbsp;&nbsp;Technology Resources</h3>
                                        
                                        <span>&nbsp;Our school utilizes computer labs and technology resources to &nbsp;equip students with hands-on 
                                        learning experiences in &nbsp;programming, design, multimedia production, robotics, and &nbsp;coding.</span>
                                    </button>
                                </div>
                            </nav>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-business" role="tabpanel" aria-labelledby="nav-intro-tab">
                                    <img src="images/library.jpeg" class="img-fluid" alt="">

                                    

                                    <p><br>Our school's library is a comprehensive hub for knowledge and intellectual exploration, 
                                        featuring a vast collection of books, digital resources, and study areas. It offers a conducive environment for independent 
                                        research and collaborative learning,hosting literary events and workshops to foster critical thinking skills.</span>
                                    </p>

                                </div>

                                <div class="tab-pane fade show" id="nav-strategy" role="tabpanel" aria-labelledby="nav-strategy-tab">
                                    <img src="images/sport.jpeg" class="img-fluid" alt="">

                                    <div class="row">
                                            <p><br>Our school prioritizes physical well-being and holistic development through top-notch sports facilities. 
                                        With meticulously maintained grounds, students have access to fields for soccer, baseball, cricket, basketball, and tennis, as 
                                        well as a gymnasium and swimming pool. We foster sportsmanship and teamwork through athletic programs.</p>
                                    </div>
                                </div>

                                <div class="tab-pane fade show" id="nav-video" role="tabpanel" aria-labelledby="nav-video-tab">
                                    <img src="images/computerlab.jpg" class="img-fluid" alt="">

                                    <p><br>Our school utilizes computer labs and technology resources to prepare students for the future. 
                                        Equipped with the latest hardware and software, these labs offer hands-on learning experiences in programming, design, multimedia
                                         production, robotics, and coding. High-speed internet connectivity and experienced 
                                        instructors ensure students navigate the digital world proficiently</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
            
            
            <section class="projects section-padding pb-0">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-10 col-12 text-center mx-auto mb-5">
                        
                            <h2>Our Top Educators</h2>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="projects-thumb projects-thumb-small">
                                    <img src="images/teacher4.jpeg" class="img-fluid projects-image" alt="">

                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="projects-thumb projects-thumb-small">
                                    <img src="images/teacher3.jpg" class="img-fluid projects-image" alt="">
                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="projects-thumb projects-thumb-small">

                                    <img src="images/teacher1.jpg" class="img-fluid projects-image" alt="">

                            </div>
                        </div>

                        <div class="col-lg-8 col-12">
                            <div class="projects-thumb projects-thumb-large">
                                    <img src="images/teacher5.jpeg" class="img-fluid projects-image" alt="">
                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="projects-thumb projects-thumb-small">
                                    <img src="images/teacher2.jpeg" class="img-fluid projects-image" alt="">
                            </div>
                        </div>

                    </div>
                </div>
            </section>

<div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h2 class="mb-3"><br>Our Parents Say!</h2>
                    </div>
                <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                    <div class="testimonial-item bg-light rounded p-5">
                        <p class="fs-5">"We could be happier with our child's experience at this school. 
                        The dedicated teachers and staff go above and beyond to create a nurturing learning environment. 
                        Our child has grown academically and socially, and we're impressed with the range of extracurricular activities offered. The emphasis on character development is truly remarkable. 
                        We feel fortunate to be part of such a supportive school community."</p>
                        <div class="d-flex align-items-center bg-white me-n5" style="border-radius: 50px 0 0 50px;">
                            <img class="img-fluid flex-shrink-0 rounded-circle" src="images/parent1.jpeg" style="width: 90px; height: 90px;">     
                                               <div class="ps-3">
                                <span>Emily Turner</span>
                         </div>
                        </div>

                    </div>
                    <div class="testimonial-item bg-light rounded p-5">
                        <p class="fs-5">"The school's commitment to individualized learning has made a tremendous difference for our child.
                         They provide various resources and support systems that address the unique needs of each student. The communication between teachers 
                         and parents is excellent, ensuring that we're always in the loop about our child's progress. Additionally, 
                        the strong emphasis on technology integration prepares our child for the demands of the modern world."</p>
                        <div class="d-flex align-items-center bg-white me-n5" style="border-radius: 50px 0 0 50px;">
                            <img class="img-fluid flex-shrink-0 rounded-circle" src="images/parent2.jpeg" style="width: 90px; height: 90px;">
                       <div class="ps-3">
                                <span>Jessica Anderson</span>
                         </div>
                        </div>
                        
                    </div>
                    <div class="testimonial-item bg-light rounded p-5">
                        <p class="fs-5">"From day one, we've been impressed with the school's emphasis on a well-rounded education.
                         The library is a treasure trove of knowledge, and our child's love for reading has flourished. The sports facilities are outstanding,
                          encouraging physical fitness and teamwork. The computer labs and technology resources have opened up exciting opportunities for our child's future. We feel fortunate to have found a school 
                        that truly cares about the growth and development of our child."</p>
                        <div class="d-flex align-items-center bg-white me-n5" style="border-radius: 50px 0 0 50px;">
                            <img class="img-fluid flex-shrink-0 rounded-circle" src="images/parent3.jpeg" style="width: 90px; height: 90px;">
                       <div class="ps-3">
                                <span>Maria Rodriguez</span>
                         </div>
                        </div>
                        
                    </div>
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
            
        </main>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script> 

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/magnific-popup-options.js"></script>
        <script src="js/click-scroll.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>