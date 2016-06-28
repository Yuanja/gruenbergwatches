<?php if ($products) { ?>
<?php 
	$chunkBy3Products = array_chunk($products, 4);
	foreach ($chunkBy3Products as $productChunk) { 
?> 
    <div class="mdl-grid watchesSrch">
<?php 	
		foreach ($productChunk as $product) { ?>
		  <div class="mdl-cell mdl-cell--3-col mdl-cell--12-col-tablet">
		    <image src="<?php echo $product['thumb']; ?>">
		    <p><?php echo $product['name'] ?></p>
		    <p><?php if ($product['price'] != "$0.00") echo $product['price'] ?></p>
		  </div>
<?php   } ?>
	</div>
<?php
	} 
}
?>