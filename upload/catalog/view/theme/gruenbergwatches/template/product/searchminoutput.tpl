<?php if ($products) { ?>
    <?php foreach ($products as $product) { ?>
      <div class="products">
    	  <image src="<?php echo $product['thumb']; ?>">
    	  <p><?php echo $product['name'] ?></p>
    	  <p>SKU #<?php echo $product['sku'] ?></p>
    	  <?php if ($product['stock_status'] == 'Out Of Stock'){ ?>
          <p>Sold    
          <?php } elseif ($product['stock_status'] == '2-3 Days'){ ?>
              <p>On Memo
          <?php } ?>
          <p><?php if ($product['price'] != "$0.00") echo $product['price'] ?></p>
      </div>
    <?php } ?>
<?php } ?>