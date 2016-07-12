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

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
  var geocoder;
  var map;
  var address ="Beverly Hills, CA";
  
  $(document).ready(function() {
      initialize();
  });
  
  function initialize() {
    geocoder = new google.maps.Geocoder();
    var latlng = new google.maps.LatLng(-34.397, 150.644);
    var myOptions = {
      zoom: 8,
      center: latlng,
    mapTypeControl: true,
    mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
    navigationControl: true,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    if (geocoder) {
      geocoder.geocode( { 'address': address}, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
          if (status != google.maps.GeocoderStatus.ZERO_RESULTS) {
          map.setCenter(results[0].geometry.location);

            var infowindow = new google.maps.InfoWindow(
                { content: '<b>'+address+'</b>',
                  size: new google.maps.Size(150,50)
                });

            var marker = new google.maps.Marker({
                position: results[0].geometry.location,
                map: map, 
                title:address
            }); 
            google.maps.event.addListener(marker, 'click', function() {
                infowindow.open(map,marker);
            });

          } else {
            alert("No results found");
          }
        } else {
          alert("Geocode was not successful for the following reason: " + status);
        }
      });
    }
  }
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOdsBVfKQDLtN1chi5mo2clR6SMh5bGgk&callback=initMap"></script>