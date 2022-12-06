function createMarker(L,lat,lon) {
  var marker = L.marker([lat,lon]).addTo(map);
  marker.bindPopup("<b>Hello world!</b><br>I am a popup.").openPopup();
}

for (i = 0; i < resources.length; i++) {
  console.log("hi");
  r = resources[i];
  createMarker(L,r.gps_lat,r.gps_lon);
}
