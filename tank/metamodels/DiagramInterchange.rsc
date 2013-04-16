@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DiagramInterchange

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Dimension
        = 
        Double width Double heigth
 ;
syntax Point
        = BezierPoint
        | Double x Double y
 ;
syntax BezierPoint
        = 
        controls: Point
 ;
syntax Property
        = 
        String key String value
 ;
syntax DiagramElement
        = Reference
        | GraphElement
        | LeafElement
 ;
syntax Reference
        = 
        Boolean isIndividualRepresentation DiagramElement referenced
 ;
syntax GraphElement
        = GraphEdge
        | GraphNode
 ;
syntax GraphEdge
        = 
        Point waypoints GraphConnector anchors
 ;
syntax GraphNode
        = Diagram
        | size: Dimension
 ;
syntax GraphConnector
        = 
        Point position GraphElement gc_graphElement GraphEdge graphEdges+
 ;
syntax DiagramLink
        = 
        Double zoom Point viewPort GraphElement dl_graphElement Diagram dl_diagram
 ;
syntax SemanticModelBridge
        = SimpleSemanticModelElement
        | UML1SemanticModelBridge
        | CoreSemanticModelBridge
 ;
syntax Diagram
        = 
        String name Double zoom Point viewPort DiagramLink diagramLinks+ SemanticModelBridge namespace
 ;
syntax SimpleSemanticModelElement
        = 
        typeInfo: String
 ;
syntax UML1SemanticModelBridge
        = 
        element: CoreElement
 ;
syntax CoreSemanticModelBridge
        = 
        element: ElementsElement
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
        = TextElement
        | Image
        | GraphicPrimitive
 ;
syntax TextElement
        = 
        text: String
 ;
syntax Image
        = 
        String uri String mimeType
 ;
syntax GraphicPrimitive
        = Polyline
        | Ellipse
 ;
syntax Polyline
        = 
        Point waypoints Boolean closed
 ;
syntax Ellipse
        = 
        Point center Double radiusX Double radiusY Double rotation Double startAngle Double endAngle
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
