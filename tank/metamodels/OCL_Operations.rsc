@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module OCL_Operations

syntax OperationExp
        = 
        ()
 ;
syntax PropertyOperation
        = 
        ANY isMarkedPre ANY source
 ;
syntax OclOperation
        = 
        arguments: ANY
 ;
syntax ConstExp
        = 
        
 ;
syntax IntegerConstExp
        = 
        value: ANY
 ;
syntax StringConstExp
        = 
        value: ANY
 ;
syntax RealConstExp
        = 
        value: ANY
 ;
syntax AttributeExp
        = 
        attr: ANY
 ;
syntax Attribute
        = 
        ANY attrExp+
 ;
syntax NaviguationExp
        = 
        ANY assEnd ANY qualifierValues
 ;
syntax AssocationEnd
        = 
        ANY navExp+
 ;
syntax ClassifierOperation
        = 
        ANY op ANY arguments
 ;
syntax Operation
        = 
        ANY classOp+
 ;
syntax OclExpression
        = 
        ()
 ;
