<?php
require_once 'helper/connection.php';

$sql_kuliner = "SELECT * FROM kuliner";
$all_kuliner = $con->query($sql_kuliner);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Pesona Yogyakarta</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">


</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top d-flex align-items-center ">
        <div class="container d-flex justify-content-between align-items-center">

            <div class="logo">
                <a href="index.php"><img src="assets/img/logo/logo2.png" width="220px" alt="" class="img-fluid"></a>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.php"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a <?php if ($_SERVER['PHP_SELF'] == "/webwisata/index.php") { ?> class="active" <?php } ?> href="index.php">Home</a></li>
                    <li><a <?php if ($_SERVER['PHP_SELF'] == "/webwisata/destinasi.php") { ?> class="active" <?php } ?> href="destinasi.php">Destinasi</a></li>
                    <li><a <?php if ($_SERVER['PHP_SELF'] == "/webwisata/kuliner.php") { ?> class="active" <?php } ?> href="kuliner.php">Kuliner</a></li>

                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>

        </div>
    </header><!-- End Header -->

    <main id="main">

        <!-- ======= Our Services Section ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2 style="font-size: 45px;">Kuliner</h2>
                </div>

            </div>
        </section><!-- End Our Services Section -->

        <!-- ======= Services Section ======= -->


        <!-- ======= Service Details Section ======= -->
        <section class="service-details">
            <div class="container">

                <div class="row">
                    <?php
                    $i = 0;
                    while ($row_kuliner = mysqli_fetch_assoc($all_kuliner)) {
                    ?>
                        <div class="col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                            <div class="card">
                                <div class="card-img" style="height: 350px;">
                                    <img href="kuliner_detail.php?id=<?= $row_kuliner['id']; ?>" src="assets/img/kuliner/<?= $row_kuliner['foto']; ?>" alt="...">
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title"><a href="kuliner_detail.php?id=<?= $row_kuliner['id']; ?>"><?= $row_kuliner['nama']; ?></a></h5>
                                </div>
                            </div>
                        </div>
                    <?php
                        $i++;
                    }
                    ?>
                </div>

            </div>
        </section>

        <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span></span></strong>
                </div>
                <div class="credits">
                    Created by Yesi</a>
                </div>
            </div>
        </footer><!-- End Footer -->
        <!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

</body>

</html>