@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Values

syntax Value
        = BasicValue
        | ObjectValue
        | EnumValue
        | UndefinedValue
        | CollectionValue
 ;
syntax BasicValue
        = IntegerValue
        | RealValue
        | StringValue
        | BooleanValue
 ;
syntax IntegerValue
        = 
        val: Integer
 ;
syntax RealValue
        = 
        val: Double
 ;
syntax StringValue
        = 
        val: String
 ;
syntax BooleanValue
        = 
        val: Boolean
 ;
syntax ObjectValue
        = 
        object: Object
 ;
syntax Object
        = 
        objectValue: ObjectValue
 ;
syntax EnumValue
        = 
        enumLiteral: EnumLiteral
 ;
syntax EnumLiteral
        = 
        enumValue: EnumValue
 ;
syntax UndefinedValue
        = 
        Type type BagValue bagValue+ SequenceValue sequenceValue+ SetValue setValue+
 ;
syntax BagValue
        = 
        Value elements+
 ;
syntax SequenceValue
        = 
        Value elements+
 ;
syntax SetValue
        = 
        Value elements+
 ;
syntax Count
        = 
        num: Integer
 ;
