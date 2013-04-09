@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GraphVizDot

syntax LocatedElement
        = 
        ()
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Graph
        = 
        ANY type ANY rankDir ANY dim ANY contents+
 ;
syntax GraphElement
        = 
        ()
 ;
syntax Node
        = 
        ANY shape ANY style
 ;
syntax DirectedArc
        = 
        ANY sourceNode ANY sourcePart ANY targetNode ANY targetPart ANY shape
 ;
syntax Constraint
        = 
        ANY val ANY refers+
 ;
syntax SubGraph
        = 
        ()
 ;
