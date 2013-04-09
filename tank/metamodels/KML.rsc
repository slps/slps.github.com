@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module KML

syntax Node
        = 
        ()
 ;
syntax ElementNode
        = 
        ()
 ;
syntax AttributeNode
        = 
        value: ANY
 ;
syntax RootNode
        = 
        ()
 ;
syntax TextNode
        = 
        ANY nodes+
 ;
syntax KMLNode
        = 
        ()
 ;
syntax KMLRootNode
        = 
        
 ;
syntax Address
        = 
        value: ANY
 ;
syntax AltitudeMode
        = 
        value: ANY
 ;
syntax AltitudeModeValue
        = clampedToGround: ()
        | relativeToGround: ()
        | absolute: ()
 ;
syntax BalloonStyle
        = 
        
 ;
syntax Color
        = 
        value: ANY
 ;
syntax ColorMode
        = 
        value: ANY
 ;
syntax ColorModeValue
        = normal: ()
        | random: ()
 ;
syntax Cookie
        = 
        value: ANY
 ;
syntax Coordinates
        = 
        
 ;
syntax Coordinate
        = 
        
 ;
syntax Description
        = 
        value: ANY
 ;
syntax Document
        = 
        
 ;
syntax DrawOrder
        = 
        value: ANY
 ;
syntax East
        = 
        value: ANY
 ;
syntax Extrude
        = 
        value: ANY
 ;
syntax Fill
        = 
        value: ANY
 ;
syntax FlyToView
        = 
        value: ANY
 ;
syntax Folder
        = 
        
 ;
syntax GroundOverlay
        = 
        
 ;
syntax H
        = 
        value: ANY
 ;
syntax Heading
        = 
        value: ANY
 ;
syntax Href
        = 
        value: ANY
 ;
syntax Icon
        = 
        
 ;
syntax IconStyle
        = 
        
 ;
syntax InnerBoundaryIs
        = 
        
 ;
syntax Key
        = 
        value: ANY
 ;
syntax LabelStyle
        = 
        
 ;
syntax Latitude
        = 
        value: ANY
 ;
syntax LatLonBox
        = 
        
 ;
syntax LinearRing
        = 
        
 ;
syntax LineString
        = 
        
 ;
syntax LineStyle
        = 
        id: ANY
 ;
syntax LinkDescription
        = 
        value: ANY
 ;
syntax LinkName
        = 
        value: ANY
 ;
syntax Longitude
        = 
        value: ANY
 ;
syntax LookAt
        = 
        
 ;
syntax Message
        = 
        
 ;
syntax MinRefreshPeriod
        = 
        value: ANY
 ;
syntax MultiGeometry
        = 
        
 ;
syntax Name
        = 
        value: ANY
 ;
syntax NetworkLink
        = 
        
 ;
syntax NetworkLinkControl
        = 
        
 ;
syntax North
        = 
        value: ANY
 ;
syntax ObjArrayField
        = 
        
 ;
syntax ObjField
        = 
        
 ;
syntax Open
        = 
        value: ANY
 ;
syntax OuterBoundaryIs
        = 
        
 ;
syntax Outline
        = 
        value: ANY
 ;
syntax OverlayXY
        = 
        ANY x ANY y ANY xunits ANY yunits
 ;
syntax Pair
        = 
        
 ;
syntax Parent
        = 
        value: ANY
 ;
syntax Placemark
        = 
        
 ;
syntax Point
        = 
        
 ;
syntax Polygon
        = 
        
 ;
syntax PolyStyle
        = 
        
 ;
syntax Range
        = 
        value: ANY
 ;
syntax RefreshInterval
        = 
        value: ANY
 ;
syntax RefreshMode
        = 
        value: ANY
 ;
syntax RefreshVisibility
        = 
        value: ANY
 ;
syntax Rotation
        = 
        value: ANY
 ;
syntax Schema
        = 
        
 ;
syntax Scale
        = 
        value: ANY
 ;
syntax ScreenOverlay
        = 
        id: ANY
 ;
syntax ScreenXY
        = 
        ANY x ANY y ANY xunits ANY yunits
 ;
syntax SimpleArrayField
        = 
        
 ;
syntax SimpleField
        = 
        
 ;
syntax Size
        = 
        ANY x ANY y ANY xunits ANY yunits
 ;
syntax South
        = 
        value: ANY
 ;
syntax Snippet
        = 
        
 ;
syntax Style
        = 
        id: ANY
 ;
syntax StyleMap
        = 
        
 ;
syntax StyleUrl
        = 
        value: ANY
 ;
syntax Tessellate
        = 
        value: ANY
 ;
syntax Text
        = 
        
 ;
syntax TextColor
        = 
        value: ANY
 ;
syntax Tilt
        = 
        value: ANY
 ;
syntax Type
        = 
        value: ANY
 ;
syntax Url
        = 
        
 ;
syntax ViewBoundScale
        = 
        value: ANY
 ;
syntax ViewRefreshMode
        = 
        value: ANY
 ;
syntax ViewRefreshTime
        = 
        value: ANY
 ;
syntax ViewFormat
        = 
        value: ANY
 ;
syntax Visibility
        = 
        value: ANY
 ;
syntax W
        = 
        value: ANY
 ;
syntax West
        = 
        value: ANY
 ;
syntax Width
        = 
        value: ANY
 ;
syntax X
        = 
        value: ANY
 ;
syntax Y
        = 
        value: ANY
 ;
