@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Kml

syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax Node
        = ElementNode
        | AttributeNode
 ;
syntax ElementNode
        = RootNode
        | TextNode
        | KMLNode
 ;
syntax AttributeNode
        = 
        value: String
 ;
syntax RootNode
        = 
        KMLRootNode
 ;
syntax TextNode
        = 
        Node nodes+
 ;
syntax KMLNode
        = Address
        | AltitudeMode
        | BalloonStyle
        | Color
        | ColorMode
        | Cookie
        | Coordinates
        | Coordinate
        | Description
        | Document
        | DrawOrder
        | East
        | Extrude
        | Fill
        | FlyToView
        | Folder
        | GroundOverlay
        | H
        | Heading
        | Href
        | Icon
        | IconStyle
        | InnerBoundaryIs
        | Key
        | LabelStyle
        | Latitude
        | LatLonBox
        | LinearRing
        | LineString
        | LineStyle
        | LinkDescription
        | LinkName
        | Longitude
        | LookAt
        | Message
        | MinRefreshPeriod
        | MultiGeometry
        | Name
        | NetworkLink
        | NetworkLinkControl
        | North
        | ObjArrayField
        | ObjField
        | Open
        | OuterBoundaryIs
        | Outline
        | OverlayXY
        | Pair
        | Parent
        | Placemark
        | Point
        | Polygon
        | PolyStyle
        | Range
        | RefreshInterval
        | RefreshMode
        | RefreshVisibility
        | Rotation
        | Schema
        | Scale
        | ScreenOverlay
        | ScreenXY
        | SimpleArrayField
        | SimpleField
        | Size
        | South
        | Snippet
        | Style
        | StyleMap
        | StyleUrl
        | Tessellate
        | Text
        | TextColor
        | Tilt
        | Type
        | Url
        | ViewBoundScale
        | ViewRefreshMode
        | ViewRefreshTime
        | ViewFormat
        | Visibility
        | W
        | West
        | Width
        | X
        | Y
 ;
syntax KMLRootNode
        = 
        ()
 ;
syntax Address
        = 
        value: String
 ;
syntax AltitudeMode
        = 
        value: AltitudeModeValue
 ;
syntax AltitudeModeValue
        = clampedToGround: ()
        | relativeToGround: ()
        | absolute: ()
 ;
syntax BalloonStyle
        = 
        ()
 ;
syntax Color
        = 
        value: String
 ;
syntax ColorMode
        = 
        value: ColorModeValue
 ;
syntax ColorModeValue
        = normal: ()
        | random: ()
 ;
syntax Cookie
        = 
        value: String
 ;
syntax Coordinates
        = 
        ()
 ;
syntax Coordinate
        = 
        ()
 ;
syntax Description
        = 
        value: String
 ;
syntax Document
        = 
        ()
 ;
syntax DrawOrder
        = 
        value: Integer
 ;
syntax East
        = 
        value: Double
 ;
syntax Extrude
        = 
        value: Boolean
 ;
syntax Fill
        = 
        value: Boolean
 ;
syntax FlyToView
        = 
        value: Boolean
 ;
syntax Folder
        = 
        ()
 ;
syntax GroundOverlay
        = 
        ()
 ;
syntax H
        = 
        value: Integer
 ;
syntax Heading
        = 
        value: Double
 ;
syntax Href
        = 
        value: String
 ;
syntax Icon
        = 
        ()
 ;
syntax IconStyle
        = 
        ()
 ;
syntax InnerBoundaryIs
        = 
        ()
 ;
syntax Key
        = 
        value: String
 ;
syntax LabelStyle
        = 
        ()
 ;
syntax Latitude
        = 
        value: Double
 ;
syntax LatLonBox
        = 
        ()
 ;
syntax LinearRing
        = 
        ()
 ;
syntax LineString
        = 
        ()
 ;
syntax LineStyle
        = 
        id: String
 ;
syntax LinkDescription
        = 
        value: String
 ;
syntax LinkName
        = 
        value: String
 ;
syntax Longitude
        = 
        value: Double
 ;
syntax LookAt
        = 
        ()
 ;
syntax Message
        = 
        ()
 ;
syntax MinRefreshPeriod
        = 
        value: String
 ;
syntax MultiGeometry
        = 
        ()
 ;
syntax Name
        = 
        value: String
 ;
syntax NetworkLink
        = 
        ()
 ;
syntax NetworkLinkControl
        = 
        ()
 ;
syntax North
        = 
        value: Double
 ;
syntax ObjArrayField
        = 
        ()
 ;
syntax ObjField
        = 
        ()
 ;
syntax Open
        = 
        value: String
 ;
syntax OuterBoundaryIs
        = 
        ()
 ;
syntax Outline
        = 
        value: String
 ;
syntax OverlayXY
        = 
        String x String y String xunits String yunits
 ;
syntax Pair
        = 
        ()
 ;
syntax Parent
        = 
        value: String
 ;
syntax Placemark
        = 
        ()
 ;
syntax Point
        = 
        ()
 ;
syntax Polygon
        = 
        ()
 ;
syntax PolyStyle
        = 
        ()
 ;
syntax Range
        = 
        value: String
 ;
syntax RefreshInterval
        = 
        value: String
 ;
syntax RefreshMode
        = 
        value: String
 ;
syntax RefreshVisibility
        = 
        value: String
 ;
syntax Rotation
        = 
        value: String
 ;
syntax Schema
        = 
        ()
 ;
syntax Scale
        = 
        value: String
 ;
syntax ScreenOverlay
        = 
        id: String
 ;
syntax ScreenXY
        = 
        String x String y String xunits String yunits
 ;
syntax SimpleArrayField
        = 
        ()
 ;
syntax SimpleField
        = 
        ()
 ;
syntax Size
        = 
        String x String y String xunits String yunits
 ;
syntax South
        = 
        value: Double
 ;
syntax Snippet
        = 
        ()
 ;
syntax Style
        = 
        id: String
 ;
syntax StyleMap
        = 
        ()
 ;
syntax StyleUrl
        = 
        value: String
 ;
syntax Tessellate
        = 
        value: String
 ;
syntax Text
        = 
        ()
 ;
syntax TextColor
        = 
        value: String
 ;
syntax Tilt
        = 
        value: String
 ;
syntax Type
        = 
        value: String
 ;
syntax Url
        = 
        ()
 ;
syntax ViewBoundScale
        = 
        value: String
 ;
syntax ViewRefreshMode
        = 
        value: String
 ;
syntax ViewRefreshTime
        = 
        value: Integer
 ;
syntax ViewFormat
        = 
        value: String
 ;
syntax Visibility
        = 
        value: String
 ;
syntax W
        = 
        value: Integer
 ;
syntax West
        = 
        value: Double
 ;
syntax Width
        = 
        value: Double
 ;
syntax X
        = 
        value: Integer
 ;
syntax Y
        = 
        value: Integer
 ;
