<?php if ($products) { ?>
    <?php foreach ($products as $product) { ?>
    	<image src="<?php echo $product['thumb']; ?>">
    	<p><?php echo $product['name'] ?></p>
    	<p><?php if ($product['price'] != "$0.00") echo $product['price'] ?></p>
    <?php } ?>
<?php } ?>