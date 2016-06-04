<?php echo $header; ?>
<div class="mdl-layout__content products">
<?php 
	$chunkBy3Products = array_chunk($products, 4);

	foreach ($chunkBy3Products as $productChunk) { 
?>
		<div class="mdl-grid watches">
<?php 	foreach ($productChunk as $product) { ?>
			<div class="mdl-cell mdl-cell--3-col"><image src="<?php echo $product['thumb']; ?>"></div>
<?php   } ?>
		</div>
<?php
	} 
?>
</div>
<?php echo $footer; ?>
