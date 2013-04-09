@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DOT

syntax Label
        = 
        ()
 ;
syntax SimpleLabel
        = 
        content: ANY
 ;
syntax ComplexLabel
        = 
        ANY compartments+
 ;
syntax Compartment
        = 
        ()
 ;
syntax VerticalCompartment
        = 
        ANY complexLabel ANY compartments ANY anchor
 ;
syntax HorizontalCompartment
        = 
        ANY complexLabel ANY compartments ANY anchor
 ;
syntax SimpleCompartment
        = 
        content: ANY
 ;
syntax Anchor
        = 
        ANY name ANY source
 ;
syntax GraphElement
        = 
        ()
 ;
syntax Graph
        = 
        ANY type ANY rankDir ANY labeljust ANY labelloc ANY concentrate ANY nodes+ ANY boundingBox ANY compound ANY layers+ ANY nodeSeparation ANY ordering ANY size ANY ratio ANY center
 ;
syntax Layer
        = 
        ANY nodes+ ANY arcs+ ANY graph ANY layerSeparator
 ;
syntax Nodelike
        = 
        ()
 ;
syntax SubGraph
        = 
        ANY nodes+ ANY labelloc
 ;
syntax Node
        = 
        ANY fixedSize ANY fontname ANY fontsize ANY height ANY width ANY shape
 ;
syntax Arc
        = 
        ()
 ;
syntax DirectedArc
        = 
        ANY arrowHead ANY headlabel ANY taillabel ANY arrowTail ANY tail_lp ANY head_lp
 ;
syntax UndirectedArc
        = 
        ANY fromNode ANY toNode ANY layers+ ANY constraint ANY group ANY minlen ANY sameHead ANY sameTail ANY lhead ANY ltail ANY decorate
 ;
syntax Shape
        = 
        ()
 ;
syntax NodeShape
        = 
        ()
 ;
syntax SimpleNodeShape
        = 
        
 ;
syntax PointNodeShape
        = 
        
 ;
syntax ComplexNodeShape
        = 
        ()
 ;
syntax PolygonNodeShape
        = 
        ANY sides ANY skew ANY distortion ANY isRegular ANY orientation
 ;
syntax MNodeShape
        = 
        ANY toplabel ANY bottomlabel
 ;
syntax RecordNodeShape
        = 
        
 ;
syntax ArrowShape
        = 
        ANY clipping ANY isPlain ANY size
 ;
