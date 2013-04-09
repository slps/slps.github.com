@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PDG

syntax MProgramDependenceGraph
        = 
        node: ANY
 ;
syntax EnterNode
        = 
        ANY name ANY controlDependenceNodes+
 ;
syntax ExpressionNode
        = 
        ANY name ANY expression ANY dataDependenceNodes+ ANY controlDependenceNodes+
 ;
syntax Expression
        = 
        ANY name ANY isIdentifier ANY innerExpressions+
 ;
