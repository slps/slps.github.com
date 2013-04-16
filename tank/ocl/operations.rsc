@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Operations

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
