<?php
    session_start();

    include("db_connection.php");
    if(!isset($_SESSION['valid'])){
        header("Location: login.php");
    }
?>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>OmniView: Dashboard Page</title>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="STYLING/styles.css">
        <link rel="icon" type="image/x-icon" href="ASSETS/index-img/icon.png">
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="dashboard.php">
                <img src="ASSETS/index-img/logo2-img.png" class="rounded-end" alt="OmniView: Track Your Business Operation">
            </a>
            <!--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>-->

            <!-- Update the navbar-toggler button to toggle the sidebar -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" onclick="toggleSidebar()">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Add an id to the sidebar div for toggling -->
            <div id="sidebar" class="collapse d-lg-block">
                <!-- Your sidebar content -->
            </div>

            <script type="javascript">
                function toggleSidebar() {
                    document.getElementById("sidebar").classList.toggle("show");
                }
            </script>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <p>Hello 
                                <b>
                                    <?php
                                        $id = $_SESSION['id'];
                                        $query = mysqli_query($conn,"SELECT * FROM users_list WHERE Id=$id");
                                        while($result = mysqli_fetch_assoc($query)){
                                            $res_Uname = $result['Username'];
                                            $res_Email = $result['Email'];
                                            $res_id = $result['Id'];
                                        }
                                        echo $res_Uname
                                    ?>
                                </b>, Welcome!
                            </p>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="logout.php">
                                Logout
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                    <div class="sidebar-sticky">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">
                                    Dashboard
                                </a>
                            </li>

                            <li class="nav-item">
                                <hr>
                                    Store
                                </hr>
                                <ul class="nav flex-column ml-3">
                                    <li class="nav-item">
                                        <a class="nav-link" href="product.php">Products</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="customer.php">Customers</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="supplier.php">Suppliers</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="transaction.php">Transactions</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item">
                                <hr>
                                    Books
                                </hr>
                                <ul class="nav flex-column ml-3">
                                    <li class="nav-item">
                                        <a class="nav-link" href="guide.php">User Guide</a>
                                    </li>
                                    
                                    <li class="nav-item">
                                        <a class="nav-link" href="report.php">Reports</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="logout.php">
                                    Logout
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Dashboard</h1>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Customers</h5>

                                    <!-- Include customers count -->
                                    <?php 
                                        $sql = "SELECT COUNT(*) AS total_customers FROM customer";
                                        $result = $conn->query($sql);
                                        
                                        if ($result->num_rows > 0) {
                                            $row = $result->fetch_assoc();
                                            echo '' . $row['total_customers'];
                                        } else {
                                            echo '<p class="card-text">No customers found.</p>';
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Suppliers</h5>
                                    
                                    <!-- Include suppliers count -->
                                    <?php
                                        $sql = "SELECT COUNT(*) AS total_suppliers FROM supplier_list";
                                        $result = $conn->query($sql);
                                        
                                        if ($result->num_rows > 0) {
                                            $row = $result->fetch_assoc();
                                            echo '' . $row['total_suppliers'];
                                        } else {
                                            echo '<p class="card-text">No suppliers found.</p>';
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Products</h5>
                                    
                                    <!-- Include products count -->
                                    <?php 
                                        $sql = "SELECT COUNT(*) AS total_products FROM products";
                                        $result = $conn->query($sql);
                                        
                                        if ($result->num_rows > 0) {
                                            $row = $result->fetch_assoc();
                                            echo '' . $row['total_products'];
                                        } else {
                                            echo '<p class="card-text">No products found.</p>';
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Transactions</h5>
                                    
                                    <!-- Include transaction count -->
                                    <?php
                                        $sql = "SELECT COUNT(*) AS total_transactions FROM transaction_list";
                                        $result = $conn->query($sql);
                                        
                                        if ($result->num_rows > 0) {
                                            $row = $result->fetch_assoc();
                                            echo '' . $row['total_transactions'];
                                        } else {
                                            echo '<p class="card-text">No transactions found.</p>';
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <footer class="footer mt-auto py-3">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <span>All Rights Reserved 2024</span>
                    </div>
                
                    <div class="col-md-6 text-right">
                        <span>Created by ZetoRo (Kodego [Batch {WD92P}])</span>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
