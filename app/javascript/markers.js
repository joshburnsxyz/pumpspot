function createMarker(name,L,lat,lon) {
  var marker = L.marker([lat,lon]).addTo(map);
  marker.bindPopup("<b>"+name+"</b><hr/>Capacity: "+r.capacity+"L").openPopup();
}

for (i = 0; i < resources.length; i++) {
  r = resources[i];
  createMarker(r.title,L,r.gps_lat,r.gps_lon);
}
