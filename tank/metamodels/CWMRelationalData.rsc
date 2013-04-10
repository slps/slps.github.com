@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CWMRelationalData

syntax QueryExpression
        = 
        expresssion: String
 ;
syntax CheckConstraint
        = 
        Column constraintElements+ Table constrainedElements+
 ;
syntax Column
        = 
        Integer precision Integer scale Boolean isNullable Integer length String collectionName String characterSetName CheckConstraint column_constraints+ SQLDataType type ColumnSet owner NamedColumnSet optionScopeColumnSet
 ;
syntax ColumnSet
        = NamedColumnSet
        | QueryColumnSet
        | Column features+
 ;
syntax NamedColumnSet
        = Table
        | View
        | Column optionScopeColumn Trigger triggers+
 ;
syntax QueryColumnSet
        = 
        query: QueryExpression
 ;
syntax Table
        = 
        Boolean isTemporary String temporaryScope Boolean isSystem CheckConstraint table_constraints+
 ;
syntax View
        = 
        Boolean isReadOnly Boolean checkOption QueryExpression queryExpression
 ;
syntax Trigger
        = 
        namedColumnSet: NamedColumnSet
 ;
syntax SQLDataType
        = SQLDistinctType
        | SQLSimpleType
        | Integer typeNumber Column structuralFeatures+
 ;
syntax SQLDistinctType
        = 
        Integer length Integer precision Integer scale SQLSimpleType sqlSimpleType
 ;
syntax SQLSimpleType
        = 
        Integer characterMaximumLength Integer characterOctetLength Integer numericPrecision Integer numericPrecisionRadix Integer numericScale Integer dateTimePrecision SQLDistinctType sqlDistinctTypes+
 ;
