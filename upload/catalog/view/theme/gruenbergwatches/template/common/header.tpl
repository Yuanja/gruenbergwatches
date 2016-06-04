<!DOCTYPE html>
<!-- JJY -->
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>

<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">

<!-- Page styles -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
<link rel="stylesheet" href="catalog/view/theme/gruenbergwatches/stylesheet/material.css">
<script src="catalog/view/theme/gruenbergwatches/stylesheet/material.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/gruenbergwatches/stylesheet/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/gruenbergwatches/stylesheet/slick/slick-theme.css"/>
<link rel="stylesheet" href="catalog/view/theme/gruenbergwatches/stylesheet/test.css">
<script src="catalog/view/theme/gruenbergwatches/stylesheet/test.js"></script>
<script type="text/javascript" src="catalog/view/theme/gruenbergwatches/stylesheet/slick/slick.min.js"></script>
<style>
#view-source {
  position: fixed;
  display: block;
  right: 0;
  bottom: 0;
  margin-right: 40px;
  margin-bottom: 40px;
  z-index: 900;
}
</style>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script src="catalog/view/javascript/common.js" type="text/javascript"></script>

<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>

<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

</head>
<body>
<div class="mdl-layout mdl-js-layout mdl-layout--no-desktop-drawer-button mdl-layout--fixed-header">
	<div class="mdl-layout--fixed-header">
		<div class="mdl-layout__header-row mdl-header">
			<div aria-expanded="false" role="button" tabindex="0" class="mdl-layout__drawer-button"><i class="material-icons"></i></div>
		        <div class="mdl-textfield mdl-js-textfield">
		            <input type="text" name="search" id="header-search" class="mdl-textfield__input" />
		            <label class="mdl-textfield__label" for="search"><img src="catalog/view/theme/gruenbergwatches/images/search.png"></label>
		        </div>
		    <nav>
		    	<span class="title mdl-layout-title">
		    		Donald E. Gruenberg
    			</span>
	    		<ul>
	              <li><a class="mdl-navigation__link" href="">Our Story</a></li>
	              <li><a class="mdl-navigation__link" href="<?php echo $newarrivals; ?>">New Arrivals</a></li>
	              <li><a class="mdl-navigation__link" href="<?php echo $watches; ?>">Watches</a></li>
	              <li><a class="mdl-navigation__link" href="">Jewelry</a></li>
	              <li><a class="mdl-navigation__link" href="">Contact</a></li>
	            </ul>
		    </nav>
		    <button class="mdl-button mdl-button--colored mdl-js-button sell">Sell Your Watch or Jewelry</button>
        </div>
        	<!-- Add spacer, to align navigation to the right in desktop -->
        <div class="header-spacer mdl-layout-spacer"></div>
        	<!-- Navigation -->
		<div class="mdl-layout__drawer">
			<nav class="mdl-navigation">
		      <a class="mdl-navigation__link" href="">Our Story</a>
		      <a class="mdl-navigation__link" href="<?php echo $newarrivals; ?>">New Arrivals</a>
		      <a class="mdl-navigation__link" href="<?php echo $watches; ?>">Watches</a>
		      <a class="mdl-navigation__link" href="">Jewelry</a>
		      <a class="mdl-navigation__link" href="">Contact</a>
		    </nav>
		</div>
	</div>