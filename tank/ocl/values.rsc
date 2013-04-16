@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Values

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
