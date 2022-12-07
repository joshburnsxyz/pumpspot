import 'leaflet';

var map = L.map('map').setView([51.505, -0.09], 10);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

function createMarker(lat,lon) {
  //var marker = L.marker([51.5, -0.09]).addTo(map);
  var marker = L.marker([lat,lon]).addTo(map);
  marker.bindPopup("<b>Hello world!</b><br>I am a popup.").openPopup();
}
