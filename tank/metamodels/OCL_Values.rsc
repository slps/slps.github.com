@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module OCL_Values

syntax Value
        = 
        ()
 ;
syntax Type
        = 
        ()
 ;
syntax BasicValue
        = 
        ()
 ;
syntax IntegerValue
        = 
        val: ANY
 ;
syntax RealValue
        = 
        val: ANY
 ;
syntax StringValue
        = 
        val: ANY
 ;
syntax BooleanValue
        = 
        val: ANY
 ;
syntax ObjectValue
        = 
        object: ANY
 ;
syntax Object
        = 
        objectValue: ANY
 ;
syntax EnumValue
        = 
        enumLiteral: ANY
 ;
syntax EnumLiteral
        = 
        enumValue: ANY
 ;
syntax UndefinedValue
        = 
        ANY type ANY bagValue+ ANY sequenceValue+ ANY setValue+
 ;
syntax CollectionValue
        = 
        ()
 ;
syntax BagValue
        = 
        ANY elements+
 ;
syntax SequenceValue
        = 
        ANY elements+
 ;
syntax SetValue
        = 
        ANY elements+
 ;
syntax Count
        = 
        num: ANY
 ;
