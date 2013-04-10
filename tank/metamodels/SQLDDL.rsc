@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SQLDDL

syntax LocatedElement
        = NamedElement
        | TableElement
        | Value
 ;
syntax NamedElement
        = Database
        | Table
        | Type
        | Parameter
 ;
syntax Database
        = 
        Table tables+
 ;
syntax Table
        = 
        Database database ForeignKey referencedBy+ TableElement elements+ Parameter parameters+
 ;
syntax TableElement
        = Column
        | Key
 ;
syntax Column
        = 
        ForeignKey referencedBy+ String name Type type Boolean canBeNull Value default Key keys+
 ;
syntax Key
        = SimpleKey
        | PrimaryKey
        | ForeignKey
 ;
syntax SimpleKey
        = 
        Boolean isUnique String name Column columns+
 ;
syntax PrimaryKey
        = 
        Boolean isUnique String name Column columns+
 ;
syntax ForeignKey
        = 
        Table referencedTable Column referencedColumns+
 ;
syntax Type
        = 
        Integer length Boolean isUnsigned
 ;
syntax Parameter
        = 
        Table table Value value
 ;
syntax Value
        = IntegerVal
        | NullVal
        | StringVal
 ;
syntax IntegerVal
        = 
        value: Integer
 ;
syntax NullVal
        = 
        ()
 ;
syntax StringVal
        = 
        value: String
 ;
