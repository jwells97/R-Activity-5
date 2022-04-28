#Jason Wells
#11/4/2019
#Group:Robert Rayburn
library(tidyverse)
library(htmltools)
misLandmark <- read.csv(textConnection(
  "Name, Mascot, Lat, Long
  Ole Miss, Tony the Landshark, 34.3647, -89.5384
  Mississippi State, Bully the Bulldog, 32.3547, -89.3985
  Southern Mississippi, Golden Eagles, 31.3300, -89.3340"
))
misLandmark %>%
  leaflet(options = leafletOptions(zoomSnap=0.1)) %>%
  setView(lng = -89.3985,lat = 32.3547,zoom=10) %>%
  addTiles() %>%
  addMarkers(~Long,~Lat, popup=misLabel,label = misLabel)