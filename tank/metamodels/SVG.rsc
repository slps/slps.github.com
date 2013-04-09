@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SVG

syntax Element
        = 
        ()
 ;
syntax StructuralElement
        = 
        ()
 ;
syntax Image
        = 
        ANY referee+
 ;
syntax Svg
        = 
        ANY owner_SVG+ ANY children+ ANY namespace ANY version ANY baseProfile
 ;
syntax GroupingElement
        = 
        ()
 ;
syntax G
        = 
        name: ANY
 ;
syntax Defs
        = 
        ANY groupContent+
 ;
syntax Symbol
        = 
        ANY groupContent+
 ;
syntax Use
        = 
        ANY use+
 ;
syntax GraphicalElement
        = 
        ()
 ;
syntax Shape
        = 
        ()
 ;
syntax TextElement
        = 
        ()
 ;
syntax Rect
        = 
        ANY rx ANY ry
 ;
syntax Circle
        = 
        
 ;
syntax Ellipse
        = 
        
 ;
syntax Line
        = 
        ANY between ANY markerEnd ANY markerStart
 ;
syntax Polyline
        = 
        ANY waypoints+ ANY strokeDashArray ANY markerEnd ANY markerStart
 ;
syntax Polygon
        = 
        ANY waypoints+ ANY markerEnd ANY markerStart
 ;
syntax Path
        = 
        ANY pathLength ANY d ANY markerEnd ANY markerStart
 ;
syntax Point
        = 
        
 ;
syntax Marker
        = 
        ANY markerUnits ANY refX ANY refY ANY markerWidth ANY markerHeight ANY orient ANY drawing+
 ;
syntax Text
        = 
        ANY lengthAdjust ANY content
 ;
syntax Tspan
        = 
        content: ANY
 ;
syntax Tref
        = 
        xlinkHref: ANY
 ;
syntax Attribute
        = 
        ()
 ;
syntax Transform
        = 
        ()
 ;
syntax Scale
        = 
        ANY sx ANY sy
 ;
syntax Translate
        = 
        ANY tx ANY ty
 ;
syntax Rotate
        = 
        ANY angle ANY cx ANY cy
 ;
syntax Visibility
        = 
        visible: ANY
 ;
syntax FontWeight
        = 
        bold: ANY
 ;
syntax FontStyle
        = 
        italic: ANY
 ;
syntax Dimension
        = 
        ANY width ANY height
 ;
syntax Coordinates
        = 
        ()
 ;
syntax RelativeCoord
        = 
        ANY x ANY y
 ;
syntax AbsoluteCoord
        = 
        ANY x ANY y
 ;
syntax ReferencedFile
        = 
        ()
 ;
syntax SvgFile
        = 
        ANY tag ANY elements+
 ;
