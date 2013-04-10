@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PDG

syntax MProgramDependenceGraph
        = 
        node: EnterNode
 ;
syntax EnterNode
        = 
        String name ExpressionNode controlDependenceNodes+
 ;
syntax ExpressionNode
        = 
        String name Expression expression ExpressionNode dataDependenceNodes+ ExpressionNode controlDependenceNodes+
 ;
syntax Expression
        = 
        String name Boolean isIdentifier Expression innerExpressions+
 ;
