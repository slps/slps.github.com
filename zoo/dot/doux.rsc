@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Doux

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
