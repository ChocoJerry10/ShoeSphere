<?php include('header.php') ?>

<?php
if (isset($_GET['product_id'])) {

    $product_id = $_GET['product_id'];
    $product_name = $_GET['product_name'];
} else {
    header('location:product.php');
}



?>
<div class="container-fluid">
    <div class="row" style="min-height:1000px;">
        

<?php include('sidemenu.php'); ?>
<main class="col-md-9 ms-sm-auto col-lg-9 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group me-2">


            </div>
        </div>
    </div>

    <h2>Update Product Image</h2>
    <div class="table-responsive">

        <div class="mx-auto container">
            <form id="edit-image-form" enctype="multipart/form-data" method="POST" action="update_images.php">
                <p style="color: red;"><?php if (isset($_GET['error'])) {
                                            echo $_GET['error'];
                                        } ?></p>

                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
                <input type="hidden" name="product_name" value="<?php echo $product_name; ?>">

                <div class="form-group mt-2">
                    <label>Image 1</label>
                    <input type="file" class="form-control" id="image1" name="image1" required>
                </div>
                <div class="form-group mt-2">
                    <label>Image 2</label>
                    <input type="file" class="form-control" id="image2" name="image2" required>
                </div>
                <div class="form-group mt-2">
                    <label>Image 3</label>
                    <input type="file" class="form-control" id="image3" name="image3" required>
                </div>
                <div class="form-group mt-2">
                    <label>Image 4</label>
                    <input type="file" class="form-control" id="image4" name="image4" required>
                </div>
                <div class="form-group mt-3">
                    <input type="submit" name="update_images" class="btn btn-primary" value="Edit">
                </div>
            </form>
        </div>
    </div>
    </main>
    
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.29.2/dist/feather.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

