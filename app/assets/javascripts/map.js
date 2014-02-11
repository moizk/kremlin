// Enable the visual refresh
google.maps.visualRefresh = true;

var map;

function initialize() {
  var markers;
  var moizApartment = new google.maps.LatLng(40.722736512395284, -73.93933206796646)
  var mapOptions = {
    zoom: 5,
    center: moizApartment,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map = new google.maps.Map(document.getElementById('school_index_map'),
      mapOptions);

  schoolPin = new google.maps.MarkerImage("http://kremlin-app.s3.amazonaws.com/blackpin.png", new google.maps.Size(32, 32), new google.maps.Point(0, 0), new google.maps.Point(16, 32));

  markers = [];
  $(".school_card").each(function() {
    var schoolId, schoolLatitude, listingLongitude, schoolLongitude, schoolName, schoolInfowindow;
    schoolId = $(this).data('id');
    schoolLatitude = $(this).data("latitude");
    schoolLongitude = $(this).data("longitude");
    schoolName = $(this).data("name");

    marker = new google.maps.Marker({
      position: new google.maps.LatLng(schoolLatitude, schoolLongitude),
      icon: schoolPin,
      map: map
    });

    markers.push(marker);
    $(this).data('marker', marker);

    contentString = schoolName;
    schoolInfowindow = new google.maps.InfoWindow({
      content: contentString,
      maxWidth: 1000
    });

    google.maps.event.addListener(marker, 'click', function() {
       schoolInfowindow.open(map, this);
    });
  });
}

google.maps.event.addDomListener(window, 'load', initialize);