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
<?php if ($products) { ?>
<div id="searchoutput" class="mdl-grid watchesSrch">
    <?php foreach ($products as $product) { ?>
      <div class="products">
        <image src="<?php echo $product['thumb']; ?>">
    	  <p><?php echo $product['name'] ?></p>
    	  <p>SKU #<?php echo $product['sku'] ?></p>
    	  <p><?php if ($product['price'] != "$0.00") echo $product['price'] ?></p>
      </div>
    <?php } ?>
<?php } ?>    
</div>
<?php echo $footer; ?>
</body>

<script type="text/javascript">
var nextpage = <?php echo $page ?>;
$(document).ready(function() {
	$(window).scroll(function() {
	   if(parseFloat($(window).scrollTop()) + parseFloat($(window).height()) == parseFloat($(document).height())) {
		   $.ajax(
		      {
			      url: 'index.php?route=product/search',
			   	  type: 'get',
			      data: {minoutput : '1',
			          tag : '<?php echo $tag ?>',
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
