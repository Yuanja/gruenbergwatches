
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
<div id="searchoutput">
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
	} ?>
<?php
}
?>
</div>
</div>
<?php echo $footer; ?>
<script type="text/javascript">
var nextpage = <?php echo $page ?>;
$(document).ready(function() {
	$(window).scroll(function() {
	   if($(window).scrollTop() + $(window).height() == $(document).height()) {
		   //var nextpage = parseInt($(".pagenum:last").val())+1;
		   $.ajax(
		      {
			      url: 'index.php?route=product/search',
			   	  type: 'get',
			      data: {minoutput : '1',
			    	  sort : '<?php echo $sort ?>',
			    	  order : '<?php echo $order ?>',
			    	  page : nextpage},
			      complete: function() {
			    	nextpage = nextpage + 1;
			      },
			      success: function(output) {
			    	$('#searchoutput').append(output); 
			      }
		      }
	       );
	   }
	});
});
</script>
