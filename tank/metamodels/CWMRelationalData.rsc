@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CWMRelationalData

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
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
