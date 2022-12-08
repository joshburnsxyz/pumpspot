import 'leaflet';

var map = L.map('map').setView([51.505, -0.09], 10);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

function createMarker(L,r) {
  var marker = L.marker([r.gps_lat,r.gps_lon]).addTo(map);
  if (r.salt_water == true) {
    var waterType = "Salt Water"
  } else {
    var waterType = "Fresh Water"
  }
  marker.bindPopup("<b>"+r.title+"</b><hr/>Capacity: "+r.capacity+"ML<br/>"+waterType).openPopup();
}

for (i = 0; i < resources.length; i++) {
  r = resources[i];
  createMarker(L,r);
}
