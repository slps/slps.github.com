@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Doux

syntax LocatedElement
        = 
        NamedElement
 ;
syntax NamedElement
        = Graph
        | GraphElement
        | Node
 ;
syntax Graph
        = SubGraph
        | String type String rankDir Integer dim GraphElement contents+
 ;
syntax GraphElement
        = DirectedArc
        | Constraint
        | Node
        | SubGraph
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
        String type String rankDir Integer dim GraphElement contents+ String label String color Integer z Graph graph
 ;
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
