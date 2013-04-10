@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Operations

syntax OperationExp
        = PropertyOperation
        | OclOperation
        | ConstExp
 ;
syntax PropertyOperation
        = AttributeExp
        | NaviguationExp
        | ClassifierOperation
        | Boolean isMarkedPre OclExpression source
 ;
syntax OclOperation
        = 
        arguments: OclExpression
 ;
syntax ConstExp
        = IntegerConstExp
        | StringConstExp
        | RealConstExp
 ;
syntax IntegerConstExp
        = 
        value: Integer
 ;
syntax StringConstExp
        = 
        value: String
 ;
syntax RealConstExp
        = 
        value: Double
 ;
syntax AttributeExp
        = 
        attr: Attribute
 ;
syntax Attribute
        = 
        AttributeExp attrExp+
 ;
syntax NaviguationExp
        = 
        AssocationEnd assEnd OclExpression qualifierValues
 ;
syntax AssocationEnd
        = 
        NaviguationExp navExp+
 ;
syntax ClassifierOperation
        = 
        Operation op OclExpression arguments
 ;
syntax Operation
        = 
        ClassifierOperation classOp+
 ;
