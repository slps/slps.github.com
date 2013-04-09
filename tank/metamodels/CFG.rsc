@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CFG

syntax AbstractNode
        = 
        ()
 ;
syntax Node
        = 
        ANY inNode ANY outNode
 ;
syntax ConditionalNode
        = 
        ANY trueConditionNode ANY falseConditionNode
 ;
syntax Expression
        = 
        expressionName: ANY
 ;
