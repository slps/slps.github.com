@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PDG

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax Boolean
        = "true"
        | "false"
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
