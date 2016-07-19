<?php echo $header; ?>
<div class="mdl-layout__content">
  <div class="mdl-grid  mdl-cell mdl-cell--11-col mdl-cell--12-col-tablet">
    <div class="section__block section-block--content-titles mdl-cell mdl-cell--4-col mdl-cell--12-col-tablet">
      <p>344 North Beverly Drive</p>
      <p>Beverly Hills, CA 90210</p>
      <p>310-273-4577</p>
      <hr>
      <p>Monday - Friday 10am - 5pm</p>
      <p>Saturday 11am - 6pm</p>
    </div>
    <div id='map_canvas'>
    </div>
  </div>  
</div>
<?php echo $footer; ?>
</body>

<script type="text/javascript">
  var marker;
  var map;

  function initMap() {
      var myOptions = {
              zoom: 20,
              center: {lat: 34.0695232, lng: -118.4014034}, 
              mapTypeId: google.maps.MapTypeId.ROADMAP
            };
      var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
      var marker = new google.maps.Marker({
          position: {lat: 34.0695232, lng: -118.4014034},
          map: map, 
          title:"Gruenberg Watches"
        });
  }
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOdsBVfKQDLtN1chi5mo2clR6SMh5bGgk&callback=initMap"></script>