<?php echo $header; ?>
<div class="mdl-layout__content products">
  <div class="banner">
    <img src="catalog/view/theme/gruenbergwatches/images/watches-page-banner.png">
    <div class="mdl-grid searchNav">
      <div class="mdl-cell mdl-cell--3-col"><a href="<?php echo $brandasc_link ?>">brands a-z</div>
      <div class="mdl-cell mdl-cell--3-col"><a href="<?php echo $newest_link ?>">newest</a></div>
      <div class="mdl-cell mdl-cell--3-col"><a href="<?php echo $price_asc_link ?>">$-$$$</a></div>
      <div class="mdl-cell mdl-cell--3-col"><a href="<?php echo $price_desc_link ?>">$$$-$</a></div>
    </div>
  </div>
<?php if ($products) { ?>
<?php 
	$chunkBy3Products = array_chunk($products, 4);

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