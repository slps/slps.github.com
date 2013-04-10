@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SVG

syntax Element
        = StructuralElement
        | GraphicalElement
 ;
syntax StructuralElement
        = Image
        | Svg
        | GroupingElement
        | Use
 ;
syntax Image
        = 
        ReferencedFile referee+
 ;
syntax Svg
        = 
        SvgFile owner_SVG+ Element children+ String namespace String version String baseProfile
 ;
syntax GroupingElement
        = G
        | Defs
        | Symbol
 ;
syntax G
        = 
        name: String
 ;
syntax Defs
        = 
        Element groupContent+
 ;
syntax Symbol
        = 
        Element groupContent+
 ;
syntax Use
        = 
        Element use+
 ;
syntax GraphicalElement
        = Shape
        | TextElement
 ;
syntax Shape
        = Rect
        | Circle
        | Ellipse
        | Line
        | Polyline
        | Polygon
        | Path
        | Point
        | Marker
 ;
syntax TextElement
        = Text
        | Tspan
        | Tref
 ;
syntax Rect
        = 
        Double rx Double ry
 ;
syntax Circle
        = 
        ()
 ;
syntax Ellipse
        = 
        ()
 ;
syntax Line
        = 
        Point between String markerEnd String markerStart
 ;
syntax Polyline
        = 
        Point waypoints+ String strokeDashArray String markerEnd String markerStart
 ;
syntax Polygon
        = 
        Point waypoints+ String markerEnd String markerStart
 ;
syntax Path
        = 
        Double pathLength String d String markerEnd String markerStart
 ;
syntax Point
        = 
        ()
 ;
syntax Marker
        = 
        String markerUnits Double refX Double refY Double markerWidth Double markerHeight String orient Element drawing+
 ;
syntax Text
        = 
        String lengthAdjust String content
 ;
syntax Tspan
        = 
        content: String
 ;
syntax Tref
        = 
        xlinkHref: TextElement
 ;
syntax Attribute
        = Transform
        | Visibility
        | FontWeight
        | FontStyle
 ;
syntax Transform
        = Scale
        | Translate
        | Rotate
 ;
syntax Scale
        = 
        Double sx Double sy
 ;
syntax Translate
        = 
        Double tx Double ty
 ;
syntax Rotate
        = 
        Double angle Double cx Double cy
 ;
syntax Visibility
        = 
        visible: Boolean
 ;
syntax FontWeight
        = 
        bold: Boolean
 ;
syntax FontStyle
        = 
        italic: Boolean
 ;
syntax Dimension
        = 
        Double width Double height
 ;
syntax Coordinates
        = RelativeCoord
        | AbsoluteCoord
 ;
syntax RelativeCoord
        = 
        Double x Double y
 ;
syntax AbsoluteCoord
        = 
        Double x Double y
 ;
syntax ReferencedFile
        = 
        SvgFile
 ;
syntax SvgFile
        = 
        Svg tag Element elements+
 ;
