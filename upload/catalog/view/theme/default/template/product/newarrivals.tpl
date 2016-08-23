<?php echo $header; ?>
<div class="mdl-layout__content products">
	<div class="mdl-grid watches">
<?php 	foreach ($products as $product) { ?>
			<image src="<?php echo $product['thumb']; ?>" />
<?php   } ?>
    </div>
</div>
<?php echo $footer; ?>
