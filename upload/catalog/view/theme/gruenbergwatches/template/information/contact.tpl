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
    <div id='map'>
      <iframe width="600" height="450" frameborder="0" style="border:0"
src="https://www.google.com/maps/embed/v1/place?q=Gruenberg%20watches&key=AIzaSyAOdsBVfKQDLtN1chi5mo2clR6SMh5bGgk" allowfullscreen></iframe>
    </div>
  </div>  
</div>
<?php echo $footer; ?>
<script>
function initMap() {
  var myLatLng = {lat: -25.363, lng: 131.044};

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 4,
    center: myLatLng
  });

  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'Hello World!'
  });
}
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOdsBVfKQDLtN1chi5mo2clR6SMh5bGgk&callback=initMap"></script>