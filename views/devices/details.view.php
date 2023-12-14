<?php
// Check to make sure the id parameter is specified in the URL
if (isset($_GET['id'])) {
    // Prepare statement and execute, prevents SQL injection
    $stmt = $pdo->prepare('SELECT * FROM produse WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    // Fetch the product from the database and return the result as an Array
    $product = $stmt->fetch(PDO::FETCH_ASSOC);
    // Check if the product exists (array is not empty)
    if (!$product) {
        // Simple error to display if the id for the product doesn't exists (array is empty)
        exit('Product does not exist!');
    }
} else {
    // Simple error to display if the id wasn't specified
    exit('Product does not exist!');
}
?>

<?=template_header('Product')?>

<div class="product content-wrapper">
    <img src="imgs/<?=$product['image']?>" width="500" height="500" alt="<?=$product['titlu']?>">
    <div>
        <h1 class="titlu"><?=$product['titlu']?></h1>
        <span class="pret">
            &dollar;<?=$product['pret']?>
        </span>
        <form action="index.php?page=cart" method="post">
            <input type="hidden" name="product_id" value="<?=$product['id']?>">
            <input type="submit" value="Add To Cart">
        </form>
        <div class="description">
            <?=$product['descriere']?>
        </div>
    </div>
</div>

<?=template_footer()?>