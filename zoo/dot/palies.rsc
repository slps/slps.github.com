@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Palies

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Label
        = SimpleLabel
        | ComplexLabel
 ;
syntax SimpleLabel
        = 
        content: String
 ;
syntax ComplexLabel
        = 
        Compartment compartments+
 ;
syntax Compartment
        = VerticalCompartment
        | HorizontalCompartment
        | SimpleCompartment
 ;
syntax VerticalCompartment
        = 
        ComplexLabel complexLabel Compartment compartments Anchor anchor
 ;
syntax HorizontalCompartment
        = 
        ComplexLabel complexLabel Compartment compartments Anchor anchor
 ;
syntax SimpleCompartment
        = 
        content: String
 ;
syntax Anchor
        = 
        String name Compartment source
 ;
syntax GraphElement
        = Graph
        | Layer
        | Nodelike
        | Arc
        | Shape
 ;
syntax Graph
        = 
        String type String rankDir String labeljust String labelloc Boolean concentrate Nodelike nodes+ String boundingBox Boolean compound Layer layers+ Double nodeSeparation String ordering String size String ratio Boolean center
 ;
syntax Layer
        = 
        Nodelike nodes+ Arc arcs+ Graph graph String layerSeparator
 ;
syntax Nodelike
        = SubGraph
        | Node
 ;
syntax SubGraph
        = 
        Nodelike nodes+ String labelloc
 ;
syntax Node
        = 
        Boolean fixedSize String fontname Integer fontsize Integer height Integer width NodeShape shape
 ;
syntax Arc
        = DirectedArc
        | UndirectedArc
 ;
syntax DirectedArc
        = 
        ArrowShape arrowHead Label headlabel Label taillabel ArrowShape arrowTail Double tail_lp Double head_lp
 ;
syntax UndirectedArc
        = 
        Nodelike fromNode Nodelike toNode Layer layers+ Boolean constraint String group Integer minlen String sameHead String sameTail Nodelike lhead Nodelike ltail Boolean decorate
 ;
syntax Shape
        = NodeShape
        | ArrowShape
 ;
syntax NodeShape
        = SimpleNodeShape
        | PointNodeShape
        | ComplexNodeShape
 ;
syntax SimpleNodeShape
        = 
        ()
 ;
syntax PointNodeShape
        = 
        ()
 ;
syntax ComplexNodeShape
        = PolygonNodeShape
        | MNodeShape
        | RecordNodeShape
 ;
syntax PolygonNodeShape
        = 
        Integer sides Integer skew Integer distortion Boolean isRegular Integer orientation
 ;
syntax MNodeShape
        = 
        Label toplabel Label bottomlabel
 ;
syntax RecordNodeShape
        = 
        ()
 ;
syntax ArrowShape
        = 
        String clipping Boolean isPlain Integer size
 ;
