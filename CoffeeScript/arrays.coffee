storeLocations = [
  'Orlando'
  'Winter Park'
  'Sanford'
]


for location in storeLocations
    alert "Location #{location}"


storeLoc = ("#{loc}, FL" for loc in storeLocations)

geoLocate(loc) for loc in storeLocations when loc isnt 'Sanford'
