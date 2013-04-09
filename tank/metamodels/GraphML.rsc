@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GraphML

syntax LocatedElement
        = 
        ()
 ;
syntax Root
        = 
        ANY keys+ ANY graphs+
 ;
syntax Element
        = 
        ANY id ANY datas+
 ;
syntax Key
        = 
        ANY for ANY attrName ANY type ANY defValue
 ;
syntax Graph
        = 
        ANY contents+ ANY edgeDefault
 ;
syntax Edge
        = 
        ANY source ANY target ANY sourceport ANY targetport
 ;
syntax HyperEdge
        = 
        ANY endpoints+
 ;
syntax Node
        = 
        ANY subgraph ANY ports+
 ;
syntax Port
        = 
        name: ANY
 ;
syntax EndPoint
        = 
        ANY node ANY port
 ;
syntax Data
        = 
        ANY key ANY value
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
