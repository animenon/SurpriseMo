-- Create a native map view
local myMap = native.newMapView( 20, 20, 1920, 720 )
myMap:setReferencePoint(display.BottomLeftReferencePoint)
myMap.x = display.contentCenterX
myMap.y = display.contentCenterY

-- Display map as vector drawings of streets (other options are "satellite" and "hybrid")
myMap.mapType = "standard"

-- Initialize map to a real location
myMap:setCenter( 37.331692, -122.030456 )

-- Do not allow the user to scroll and zoom the map.
myMap.isScrollEnabled = true
myMap.isZoomEnabled = true

-- Local Options
local options =
{
    title = "Displayed Title",
    subtitle = "Subtitle text",
    listener = markerListener,
    -- This will look in the resources directory for the image file
    imageFile =  "gift.png",
    -- Alternatively, this looks in the specified directory for the image file
    -- imageFile = { filename="someImage.png", baseDir=system.TemporaryDirectory }
}
local result, errorMessage = myMap:addMarker(37.331692, -122.030456, options)
if ( result ) then
  print ("Marker added")
else
  print (errorMessage)
end
