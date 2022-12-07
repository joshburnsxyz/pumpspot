function createMarker(L,r) {
  var marker = L.marker([r.lat,r.lon]).addTo(map);
  if (r.salt_water == true) {
    var waterType = "Salt Water"
  } else {
    var waterType = "Fresh Water"
  }
  marker.bindPopup("<b>"+r.title+"</b><hr/>Capacity: "+r.capacity+"L<br/>"+waterType).openPopup();
}

for (i = 0; i < resources.length; i++) {
  r = resources[i];
  createMarker(r.title,L,r);
}
