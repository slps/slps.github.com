@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CFG

syntax AbstractNode
        = Node
        | ConditionalNode
 ;
syntax Node
        = 
        Node inNode Node outNode
 ;
syntax ConditionalNode
        = 
        Node trueConditionNode Node falseConditionNode
 ;
syntax Expression
        = 
        expressionName: String
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
