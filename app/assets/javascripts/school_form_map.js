// Enable the visual refresh
google.maps.visualRefresh = true;

var map;

function schoolformInitialize() {
  var kremlinCenter = new google.maps.LatLng(40.722736512395284, -73.93933206796646)
  var mapOptions = {
    zoom: 5,
    center: kremlinCenter,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    styles: [

        // WATER

        {
          featureType: 'water',
          elementType: 'geometry',
          stylers: [{
            color: '#a2daf2'
          }]
        },

        // LANDSCAPE

        {
          featureType: 'landscape.man_made',
          elementType: 'geometry',
          stylers: [{
            color: '#f7f1df'
          }]
        },

        {
          featureType: 'landscape.natural',
          elementType: 'geometry',
          stylers: [{
            color: '#d0e3b4'
          }]
        },

        {
          featureType: 'landscape.natural.terrain',
          elementType: 'geometry',
          stylers: [{
            visibility: 'off'
          }]
        },

        // POINTS OF INTEREST

        {
          featureType: 'poi.park',
          elementType: 'geometry',
          stylers: [{
            color: '#bde6ab'
          }]
        },

        {
          featureType: 'poi.medical',
          elementType: 'geometry',
          stylers: [{
            color: '#fbd3da'
          }]
        },

        {
          featureType: 'poi.business',
          stylers: [{
            visibility: 'off'
          }]
        },

        // ROADS

        {
          featureType: 'road.highway',
          elementType: 'geometry.fill',
          stylers: [{
            color: '#f1e577'
          }]
        },


        {
          featureType: 'road.highway',
          elementType: 'geometry.stroke',
          stylers: [{
            color: '#efd151'
          }]
        },

        {
          featureType: 'road.highway.controlled_access',
          elementType: 'labels.text',
          stylers: [{
            visibility: 'off'
          }]
        },

        {
          featureType: 'road.arterial',
          elementType: 'geometry.fill',
          stylers: [{
            color: '#ffffff'
          }]
        },

        {
          featureType: 'road.local',
          elementType: 'geometry.fill',
          stylers: [{
            color: 'black'
          }]
        },

        // TRANSIT

        {
          featureType: 'transit.station.airport',
          elementType: 'geometry.fill',
          stylers: [{
            color: '#cfb2db'
          }]
        }

      ]

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

  var transitLayer = new google.maps.TransitLayer();
  transitLayer.setMap(map);

}

google.maps.event.addDomListener(window, 'load', schoolformInitialize);