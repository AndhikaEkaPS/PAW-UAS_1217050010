<!-- connect file -->
<?php
include('../includes/connect.php');
include('../functions/common_function.php');
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome <?php echo $_SESSION['username'] ?></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../style.css">
    <style>
        .logo {
            width: 7%;
            height: 7%;
        }
        .profile_img{
            width: 100%;
            height: 100%;
            margin: auto;
            display: block;
            object-fit: contain;
        }
        .edit_image{
            width: 100%;
            height: 100%;
            object-fit: contain;
        }
    </style>
</head>

<body>
    <!-- navbar -->
    <div class="container-fluid p-0">
        <!-- first child -->
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="container-fluid">
                <img src="../img/logo.1.png" alt="" class="logo">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../index.php">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../display_all.php">Products</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="profile.php">My Account</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../cart.php"><i class="fa-solid fa-cart-shopping"></i><sup><?php cart_item(); ?></sup></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Total Price: <?php total_cart_price(); ?>/-</a>
                        </li>
                    </ul>
                    <form class="d-flex" action="../search_product.php" method="get">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search_data">
                        <input type="submit" value="Search" class="btn btn-outline-light" name="search_data_product">
                    </form>
                </div>
            </div>
        </nav>

        <!-- calling cart function -->
        <?php
        cart();
        ?>

        <!-- second child -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
            <ul class="navbar-nav me-auto">
                <?php
                if (!isset($_SESSION['username'])) {
                    echo "<li class='nav-item'>
          <a class='nav-link' href='#'>Welcome Guest</a>
        </li>";
                } else {
                    echo "<li class='nav-item'>
            <a class='nav-link' href='#'>Welcome " . $_SESSION['username'] . "</a>
          </li>";
                }
                if (!isset($_SESSION['username'])) {
                    echo "<li class='nav-item'>
            <a class='nav-link' href='./users_area/user_login.php'>Login</a>
          </li>";
                } else {
                    echo "<li class='nav-item'>
            <a class='nav-link' href='./users_area/logout.php'>Logout</a>
          </li>";
                }
                ?>
            </ul>
        </nav>

        <!-- third child -->
        <div class="bg-light">
            <h3 class="text-center">Hidden Store</h3>
            <p class="text-center">Communications is at the heart of e-commere and community</p>
        </div>

        <!-- fourth child -->
        <div class="row">
            <div class="col-md-2">
                <ul class="navbar-nav bg-secondary text-center" style="height:100vh">
                    <li class="nav-item bg-info">
                        <a href="#" class="nav-link text-light"><h4>Your Profile</h4></a>
                    </li>

                    <?php
                    $username=$_SESSION['username'];
                    $user_image="Select * from `user_table` where user_name='$username'";
                    $user_image=mysqli_query($con,$user_image);
                    $row_image=mysqli_fetch_array($user_image);
                    $user_image=$row_image['user_image'];
                    echo "<li class='nav-item'><img src='./user_images/$user_image' alt='' class='profile_img my-4'></li>";
                    ?>
                    <li class="nav-item">
                        <a href="profile.php" class="nav-link text-light">Pending Orders</a>
                    </li>
                    <li class="nav-item">
                        <a href="profile.php?edit_account" class="nav-link text-light">Edit Account</a>
                    </li>
                    <li class="nav-item">
                        <a href="profile.php?my_orders" class="nav-link text-light">My orders</a>
                    </li>
                    <li class="nav-item">
                        <a href="profile.php?delete_account" class="nav-link text-light">Delete Account</a>
                    </li>
                    <li class="nav-item">
                        <a href="logout.php" class="nav-link text-light">Logout</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-10 text-center">
                <?php get_user_order_details(); 
                if(isset($_GET['edit_account'])){
                    include('edit_account.php');
                }
                ?>
            </div>
        </div>

        <!-- last child -->
        <!-- include footer -->
        <?php
        include("../includes/footer.php")
        ?>
    </div>

    

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>

</html>