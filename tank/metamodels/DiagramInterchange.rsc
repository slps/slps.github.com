@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DiagramInterchange

syntax Dimension
        = 
        ANY width ANY heigth
 ;
syntax Point
        = 
        ANY x ANY y
 ;
syntax BezierPoint
        = 
        controls: ANY
 ;
syntax Property
        = 
        ANY key ANY value
 ;
syntax DiagramElement
        = 
        ()
 ;
syntax Reference
        = 
        ANY isIndividualRepresentation ANY referenced
 ;
syntax GraphElement
        = 
        ()
 ;
syntax GraphEdge
        = 
        ANY waypoints ANY anchors
 ;
syntax GraphNode
        = 
        size: ANY
 ;
syntax GraphConnector
        = 
        ANY position ANY gc_graphElement ANY graphEdges+
 ;
syntax DiagramLink
        = 
        ANY zoom ANY viewPort ANY dl_graphElement ANY dl_diagram
 ;
syntax SemanticModelBridge
        = 
        ()
 ;
syntax Diagram
        = 
        ANY name ANY zoom ANY viewPort ANY diagramLinks+ ANY namespace
 ;
syntax SimpleSemanticModelElement
        = 
        typeInfo: ANY
 ;
syntax UML1SemanticModelBridge
        = 
        element: ANY
 ;
syntax CoreSemanticModelBridge
        = 
        element: ANY
 ;
syntax CoreElement
        = 
        ()
 ;
syntax ElementsElement
        = 
        ()
 ;
syntax LeafElement
        = 
        ()
 ;
syntax TextElement
        = 
        text: ANY
 ;
syntax Image
        = 
        ANY uri ANY mimeType
 ;
syntax GraphicPrimitive
        = 
        ()
 ;
syntax Polyline
        = 
        ANY waypoints ANY closed
 ;
syntax Ellipse
        = 
        ANY center ANY radiusX ANY radiusY ANY rotation ANY startAngle ANY endAngle
 ;
