<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>OmniView: Login</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="icon" type="image/x-icon" href="ASSETS/index-img/icon.png">
        <link rel="stylesheet" href="STYLING/logstyles.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    </head>

    <body>
        <header>
            <div class="container-fluid text-white text-center ">
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <p>
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                                info@omniview.com 
                            <i class="fa fa-phone" aria-hidden="true"></i>
                                Call Us +12 345 678
                        </p>
                    </div>

                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <p>
                            <i class="fa fa-clock-o" aria-hidden="true"></i> 
                                Mon - Fri : 8:30am To 9:30pm
                                Sat & Sun : 9:00am To 6:00pm MNL TIme
                        </p>
                    </div>
                </div>
            </div>

            <nav class="navbar navbar-expand-lg bg-light text-center px-4 ">
                <div class="container-fluid">
                    <a class="navbar-brand fs-3" href="index.html">
                        <img src="ASSETS/index-img/logo2-img.png" class="rounded-end" alt="OmniView: Track Your Business Operation">
                    </a>

                    <button class="navbar-toggler bg-transparent  " type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.html">
                                    Home
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link text-primary" href="about.html">
                                    About us
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link text-primary" href="services.html">
                                    Services
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link text-primary" href="gallery.html">
                                    Gallery
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link text-primary" href="contact.html">
                                    Contact
                                </a>
                            </li>
              
                            <div class="nav-bar-page">                    
                                <h5>
                                    <button id="btn2">
                                        <a href="login.php">
                                            Login
                                        </a>
                                    </button>
                                </h5>

                                <h5>
                                    <button id="btn2">
                                        <a href="register.php">
                                            Register
                                        </a>
                                    </button>
                                </h5>
                            </div>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="container login">
                <div class="box form-box">
                    <?php
                        include("db_connection.php");

                        if (isset($_POST['submit'])) {
                            $username = $_POST['username'];
                            $email = $_POST['email'];
                            $password = $_POST['password'];

                            $verify_query = mysqli_query($conn, "SELECT Email FROM users_list WHERE Email='$email'");

                            if (mysqli_num_rows($verify_query) !=0) {
                                echo "<div class='message'><p>This email is already in used, Please try a new one!</p></div><br>";
                                echo "<a href='javascript:self.history.back()'><button class='btn'>Go Back</button>";
                            }
                            else {
                                mysqli_query($conn, "INSERT INTO users_list (Username, Email, Password) VALUES ('$username', '$email', '$password')") or die("Error Occured!");

                                echo "<div class='message'><p>Registration Successful!</p></div><br>";
                                echo "<a href='login.php'><button class='btn'>Login Now</button>";
                            }
                        } else {
                    ?>

                    <div class="signing">Sign-Up</div>
                    <form action="" method="post">
                        <div class="field input">
                            <label for="username">
                                Username
                            </label>

                            <input type="text" name="username" id="username" autocomplete="off" required/>
                        </div>

                        <div class="field input">
                            <label for="email">
                                Email
                            </label>

                            <input type="email" name="email" id="email" autocomplete="off" required/>
                        </div>

                        <div class="field input">
                            <label for="password">
                                Password
                            </label>

                            <input type="password" name="password" id="password" autocomplete="off" required/>
                        </div>

                        <div class="field">
                            <input type="submit" class="btn" name="submit" value="Register" required/>
                        </div>

                        <div class="links">
                            Already have an account? <a href="login.php">Login</a>
                        </div>
                    </form>
                </div>
                <?php } ?>
            </div>
        </header>

        <section id="footer" class="bg-dark text-white text-center p-4 ">
            <button class="btn btn-primary text-white" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasBottom" aria-controls="offcanvasBottom">
                Click here for Address and Links
            </button>

            <h4 class="my-4">
                Design & Developed By Group 2
            </h4>

            <i class="fa fa-facebook fs-2 mx-2"></i>
            <i class="fa fa-instagram fs-2 mx-2"></i>
            <i class="fa fa-whatsapp fs-2 mx-2"></i>
            <i class="fa fa-twitter fs-2 mx-2"></i>

            <div class="offcanvas offcanvas-bottom" tabindex="-1" id="offcanvasBottom" aria-labelledby="offcanvasBottomLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasBottomLabel"></h5>

                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>

                <div class="offcanvas-body small text-dark">
                    <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4 col-12">
                            <h5>
                                Important Links
                            </h5>

                            <p class="links">
                                <a href="index.html">
                                    Home
                                </a>
                            </p>

                            <p class="links">
                                <a href="about.html">
                                    About
                                </a>
                            </p>

                            <p class="links">
                                <a href="gallery.html">
                                    Gallery
                                </a>
                            </p>

                            <p class="links">
                                <a href="register.html">
                                    Register
                                </a>
                            </p>      
                        </div>

                        <div class="col-sm-12 col-md-4 col-lg-4 col-12">
                            <h6>
                                Address info
                            </h6>

                            <p>
                                Camarines Sur
                            </p>

                            <p>
                                Philippines code 4400-4436
                            </p>

                            <h6>
                                Email us
                            </h6>

                            <p>
                                info@omniview.com
                            </p> 

                            <p>
                                customer@omniview.com
                            </p> 
                        </div>

                        <div class="col-sm-12 col-md-4 col-lg-4 col-12">
                            <h5>
                                Track Your Business Operation
                            </h5>

                            <p>
                                Website for Tracking the Business aspects profile and statistics of MSMEs of Camarines Sur (financial, operational/production/inventory, marketing, logistics, and accounting)
                            </p>

                            <div class="nav-bar-page">
                                <h5>
                                    <button id="btn5">
                                        <a href="contact.html">
                                            Contact Us Today!
                                        </a>
                                    </button>
                                </h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>