<%@ page import="java.util.List" %>
<%@ page import="project.deecafe.models.Menu" %>
<% List<Menu> d = (List<Menu>) request.getAttribute("data"); %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

    <title>Dee Cafe -- Coffee and Eatery</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="../views/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="../views/assets/css/font-awesome.css">

    <link rel="stylesheet" href="../views/assets/css/dee-cafe.css">

    <link rel="stylesheet" href="../views/assets/css/owl-carousel.css">

    <link rel="stylesheet" href="../views/assets/css/lightbox.css">

    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <!-- <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>   -->
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="../views/index.jsp" class="logo">
                            <img src="../views/assets/images/logo.png" align="dee cafe html template" style="width: 150px;">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="#about">About</a></li>
                            <li class="scroll-to-section"><a href="#menu">Menu</a></li>
                            <li class="scroll-to-section"><a href="#reservation">Contact Us</a></li>
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div class="left-content">
                        <div class="inner-content">
                            <h4>Dee Cafe</h4>
                            <h6>THE BEST EXPERIENCE</h6>
                            <div class="main-white-button scroll-to-section">
                                <a href="#reservation">Buat Reservasi</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="main-banner header-text">
                        <div class="Modern-Slider">
                          <!-- Item -->
                          <div class="item">
                            <div class="img-fill">
                                <img src="../views/assets/images/slide-01.jpg" alt="">
                            </div>
                          </div>
                          <!-- // Item -->
                          <!-- Item -->
                          <div class="item">
                            <div class="img-fill">
                                <img src="../views/assets/images/slide-02.jpg" alt="">
                            </div>
                          </div>
                          <!-- // Item -->
                          <!-- Item -->
                          <div class="item">
                            <div class="img-fill">
                                <img src="../views/assets/images/slide-03.jpg" alt="">
                            </div>
                          </div>
                          <!-- // Item -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** About Area Starts ***** -->
    <section class="section" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div class="left-text-content">
                        <div class="section-heading">
                            <h6>About Us</h6>
                            <h2>We Leave A Delicious Memory For You</h2>
                        </div>
                        <p>Dee Cafe adalah salah satu kafe yang menyediakan makanan, dari makanan ringan hingga berat serta minuman.</p>
                        <div class="row">
                            <div class="col-4">
                                <img src="../views/assets/images/about-thumb-01.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img src="../views/assets/images/about-thumb-02.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img src="../views/assets/images/about-thumb-03.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div class="right-content">
                        <div class="thumb">
                            <img src="../views/assets/images/about-video-bg.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** About Area Ends ***** -->

    <!-- ***** Menu Area Starts ***** -->
    <section class="section" id="menu">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="section-heading">
                        <h6>Menu Best Seller</h6>
                        <h2>Pilihan menu best seller kami.</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-item-carousel">
            <div class="col-lg-12">
                <div class="owl-menu-item owl-carousel">
                    <div class="item">
                        <div class='card card1'>
                            <% for (int i=0; i < d.size(); i++) { %>
                                <div class="price"><h6><%= d.get(i).getHarga() %></h6></div>
                                <div class='info'>
                                  <h1 class='title'><%= d.get(i).getNama() %></h1>
                                    <p class='description'><%= d.get(i).getDeskripsi() %></p>
                                    <div class="main-text-button">
                                        <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                                    </div>
                                </div>
                            <% } %>
                            <% if (d.isEmpty()) { %>
                                <div class="price"><h6>30k</h6></div>
                                <div class='info'>
                                  <h1 class='title'>Laksa Singapore</h1>
                                  <p class='description'>Menu yang paling best seller. Dengan kuah yang nikmat.</p>
                                  <div class="main-text-button">
                                      <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                                  </div>
                                </div>
                            <% } %>
                        </div>
                    </div>
                    <!-- <div class="item">
                        <div class='card card2'>
                            <div class="price"><h6>42k</h6></div>
                            <div class='info'>
                              <h1 class='title'>Nasgor Dede Seafood</h1>
                              <p class='description'>Nasgor Dede Seafood dengan toping udang, baso ikan dan otak-otak yang membuat rasanya tambah lezat.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class='card card3'>
                            <div class="price"><h6>15k</h6></div>
                            <div class='info'>
                              <h1 class='title'>Dee Coffee</h1>
                              <p class='description'>Kopi yang diracik oleh barista yang ahli dibidangnya membuat rasanya enak.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class='card card1'>
                            <div class="price"><h6>30k</h6></div>
                            <div class='info'>
                              <h1 class='title'>Laksa Singapore</h1>
                              <p class='description'>Menu yang paling best seller. Dengan kuah yang nikmat.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class='card card2'>
                            <div class="price"><h6>42k</h6></div>
                            <div class='info'>
                              <h1 class='title'>Nasgor Dede Seafood</h1>
                              <p class='description'>Nasgor Dede Seafood dengan toping udang, baso ikan dan otak-otak yang membuat rasanya tambah lezat.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class='card card3'>
                            <div class="price"><h6>15k</h6></div>
                            <div class='info'>
                              <h1 class='title'>Dee Coffee</h1>
                              <p class='description'>Kopi yang diracik oleh barista yang ahli dibidangnya membuat rasanya enak.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Menu Area Ends ***** -->

    <!-- ***** Reservation Us Area Starts ***** -->
    <section class="section" id="reservation">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 align-self-center">
                    <div class="left-text-content">
                        <div class="section-heading">
                            <h6>Contact Us</h6>
                            <h2>Kamu dapat membuat Reservasi atau datang langsung ke Cafe kami.</h2>
                        </div>
                        <p>Tajur, Kec. Bogor Timur, Kota Bogor, Jawa Barat.</p>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="phone">
                                    <i class="fa fa-phone"></i>
                                    <h4>Phone Numbers</h4>
                                    <span><a href="#">080-090-0990</a><br><a href="#">080-090-0880</a></span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="message">
                                    <i class="fa fa-envelope"></i>
                                    <h4>Emails</h4>
                                    <span><a href="#">hello@company.com</a><br><a href="#">info@company.com</a></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="contact-form">
                        <form id="contact" action="" method="post">
                          <div class="row">
                            <div class="col-lg-12">
                                <h4>Reservasi</h4>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                              <fieldset>
                                <input name="name" type="text" id="name" placeholder="Nama*" required="">
                              </fieldset>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                              <fieldset>
                              <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Email" required="">
                            </fieldset>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                              <fieldset>
                                <input name="phone" type="text" id="phone" placeholder="Nomor Telepon*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <select value="number-guests" name="number-guests" id="number-guests">
                                    <option value="number-guests">Jumlah orang</option>
                                    <option name="1" id="1">1</option>
                                    <option name="2" id="2">2</option>
                                    <option name="3" id="3">3</option>
                                    <option name="4" id="4">4</option>
                                    <option name="5" id="5">5</option>
                                    <option name="6" id="6">6</option>
                                    <option name="7" id="7">7</option>
                                    <option name="8" id="8">8</option>
                                    <option name="9" id="9">9</option>
                                    <option name="10" id="10">10</option>
                                    <option name="11" id="11">11</option>
                                    <option name="12" id="12">12</option>
                                </select>
                              </fieldset>
                            </div>
                            <div class="col-lg-6">
                                <div id="filterDate2">    
                                  <div class="input-group date" data-date-format="dd/mm/yyyy">
                                    <input  name="date" id="date" type="text" class="form-control" placeholder="dd/mm/yyyy">
                                    <div class="input-group-addon" >       
                                      <span class="glyphicon glyphicon-th"></span>
                                    </div>
                                  </div>
                                </div>   
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="time" id="time" type="text" placeholder="Waktu"></select>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <textarea name="message" rows="6" id="message" placeholder="Pesan" required=""></textarea>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <button type="submit" id="form-submit" class="main-button-icon">Buat Reservasi</button>
                              </fieldset>
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Reservation Area Ends ***** -->
    
    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-xs-12">
                    <div class="right-text-content">
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-12">
                    <div class="left-text-content">
                        <p>© Copyright Dee Cafe Co.</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="../views/assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="../views/assets/js/popper.js"></script>
    <script src="../views/assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="../views/assets/js/owl-carousel.js"></script>
    <script src="../views/assets/js/accordions.js"></script>
    <script src="../views/assets/js/datepicker.js"></script>
    <script src="../views/assets/js/scrollreveal.min.js"></script>
    <script src="../views/assets/js/waypoints.min.js"></script>
    <script src="../views/assets/js/jquery.counterup.min.js"></script>
    <script src="../views/assets/js/imgfix.min.js"></script> 
    <script src="../views/assets/js/slick.js"></script> 
    <script src="../views/assets/js/lightbox.js"></script> 
    <script src="../views/assets/js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="../views/assets/js/custom.js"></script>
    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

    </script>
  </body>
</html>