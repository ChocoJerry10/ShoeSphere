<?php include('layouts/header.php'); ?>
<?php

//let user in
if (!empty($_SESSION['cart'])){


    //send user to home
} else {
    header('location:index.php');

}

?>





<!--CheckOut-->
<section class="my-5 py-5">
    <div class="container text-center mt-3 pt-5 ">
        <h2 class="form-weight-bold">Check Out</h2>
        <hr class="mx-auto">

    </div>
    <div class="mx-auto container">
        <form id="checkout-form" method="POST" action="server/place_order.php">

            <p class="text-center" style="color: red;">
                <?php if (isset($_GET['message'])) {echo $_GET['message'];} ?>
                <?php if (isset($_GET['message'])) {?>
                    <a href="login.php" class="btn btn-primary">Login</a>
                <?php } ?>

            </p>

            <div class="form-group checkout-small-element">
                <script>
                    document.getElementById('checkout-form').addEventListener('submit', function(event) {
                        var name = document.getElementById('checkout-name').value;
                        var namePattern = /^[a-zA-Z\s]+$/;
                        if (!namePattern.test(name)) {
                            alert('Name cannot contain numbers or special characters.');
                            event.preventDefault();
                        }
                    });
                </script>
                <label for="name">Name</label>
                <input type="text" class="form-control" id="checkout-name" name="name" placeholder="Name" required>
            </div>
            <div class="form-group checkout-small-element">
                <script>
                    document.getElementById('checkout-form').addEventListener('submit', function(event) {
                        var phone = document.getElementById('checkout-phone').value;
                        var phonePattern = /^[0-9]+$/;
                        if (!phonePattern.test(phone)) {
                            alert('Phone number cannot contain alphabets or special characters.');
                            event.preventDefault();
                        }
                    });
                </script>
                <label for="tel">Phone</label>
                <input type="tel" class="form-control" id="checkout-phone" name="phone" placeholder="Phone" required>
            </div>
            <div class="form-group checkout-small-element">
                <label>City</label>
                <input type="text" class="form-control" id="checkout-city" name="city" placeholder="City" required>
            </div>
            <div class="form-group checkout-small-element">
                <label>Address</label>
                <input type="text" class="form-control" id="checkout-address" name="address" placeholder="Address"
                    required>
            </div>
            <div class="form-group checkout-btn-container">
                <p>Total Amount: Rs.<?php echo $_SESSION['total'] ?></p>
                <input type="submit" class="btn" id="checkout-btn" name="place_order" value="Place Order">
            </div>
        </form>
    </div>

</section>





<!--Footer-->
<?php include('layouts/footer.php') ?>