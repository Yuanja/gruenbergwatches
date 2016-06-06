<?php echo $header; ?>
<div class="mdl-layout__content products">
  <div class="banner">
    <img src="catalog/view/theme/gruenbergwatches/images/watches-page-banner.png">
  </div>
<?php if ($products) { ?>
<?php 
	$chunkBy3Products = array_chunk($products, 3);

	foreach ($chunkBy3Products as $productChunk) { 
?> 
		<div class="mdl-grid watchesSrch">
<?php 	foreach ($productChunk as $product) { ?>
			<div class="mdl-cell mdl-cell--3-col"><image src="<?php echo $product['thumb']; ?>"></div>
<?php   } ?>
		</div>
<?php
	} 
}
?>
</div>
<?php echo $footer; ?>