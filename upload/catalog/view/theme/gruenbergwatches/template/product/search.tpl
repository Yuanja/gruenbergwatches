<?php echo $header; ?>
<div class="mdl-layout__content bannerWrap">
  <div class="banner">
    <div class="searchNav">
      <div class="mdl-grid wrapper">
        <div class="mdl-cell mdl-cell--1-col subHeader">sort by</div>
        <div class="mdl-cell mdl-cell--1-col"><a href="<?php echo $brandasc_link ?>">brands a-z</a></div>
        <div class="mdl-cell mdl-cell--1-col"><a href="<?php echo $newest_link ?>">newest</a></div>
        <div class="mdl-cell mdl-cell--1-col"><a href="<?php echo $price_asc_link ?>">$-$$$</a></div>
        <div class="mdl-cell mdl-cell--1-col"><a href="<?php echo $price_desc_link ?>">$$$-$</a></div>
      </div>
    </div>
  </div>
</div>
<div class="mdl-layout-spacer product searchSpcr"></div>
<?php if ($products) { ?>
<?php 
	$chunkBy3Products = array_chunk($products, 4);

	foreach ($chunkBy3Products as $productChunk) { 
?> 
    <div class="mdl-grid watchesSrch">
<?php 	foreach ($productChunk as $product) { ?>
  <div class="mdl-cell mdl-cell--3-col mdl-cell--12-col-tablet">
    <image src="<?php echo $product['thumb']; ?>">
  </div>
<?php   } ?>
		</div>
<?php
	} 
}
?>
</div>
<?php echo $footer; ?>