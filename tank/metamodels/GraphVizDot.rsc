@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GraphVizDot

syntax LocatedElement
        = 
        NamedElement
 ;
syntax NamedElement
        = Graph
        | GraphElement
 ;
syntax Graph
        = 
        String type String rankDir Integer dim GraphElement contents+
 ;
syntax GraphElement
        = DirectedArc
        | Constraint
 ;
syntax Node
        = 
        String shape String style
 ;
syntax DirectedArc
        = 
        String sourceNode String sourcePart String targetNode String targetPart String shape
 ;
syntax Constraint
        = 
        String val String refers+
 ;
syntax SubGraph
        = 
        ()
 ;
