@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Graphml

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = Root
        | Element
        | Port
        | EndPoint
        | Data
 ;
syntax Root
        = 
        Key keys+ Graph graphs+
 ;
syntax Element
        = Key
        | Graph
        | Edge
        | HyperEdge
        | Node
        | String id Data datas+
 ;
syntax Key
        = 
        ElemType for String attrName AttrType type String defValue
 ;
syntax Graph
        = 
        Element contents+ EdgeType edgeDefault
 ;
syntax Edge
        = 
        Node source Node target Port sourceport Port targetport
 ;
syntax HyperEdge
        = 
        EndPoint endpoints+
 ;
syntax Node
        = 
        Graph subgraph Port ports+
 ;
syntax Port
        = 
        name: String
 ;
syntax EndPoint
        = 
        Node node Port port
 ;
syntax Data
        = 
        String key String value
 ;
syntax ElemType
        = edge: ()
        | node: ()
        | graph: ()
 ;
syntax AttrType
        = double: ()
        | string: ()
        | integer: ()
        | boolean: ()
 ;
syntax EdgeType
        = directed: ()
        | undirected: ()
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
