// Enable the visual refresh
google.maps.visualRefresh = true;

var map;

function schoolformInitialize() {
  var kremlinCenter = new google.maps.LatLng(40.722736512395284, -73.93933206796646)
  var mapOptions = {
    zoom: 5,
    center: kremlinCenter,
    mapTypeId: google.maps.MapTypeId.ROADMAP

  };

  map = new google.maps.Map(document.getElementById('school_form_map'),
      mapOptions);

  schoolPin = new google.maps.MarkerImage("http://kremlin-app.s3.amazonaws.com/blackpin.png", new google.maps.Size(32, 32), new google.maps.Point(0, 0), new google.maps.Point(16, 32));

  var marker = new google.maps.Marker({
    position: map.getCenter(),
    icon: schoolPin,
    map: map,
  });

  google.maps.event.addListener(map, 'click', function(ev) {
    $("#school_longitude").val(ev.latLng.lng());
    $("#school_latitude").val(ev.latLng.lat());
    marker.setPosition(ev.latLng);
    map.panTo(ev.latLng);
  });

}

google.maps.event.addDomListener(window, 'load', schoolformInitialize);