@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CWMRelationalData

syntax QueryExpression
        = 
        expresssion: ANY
 ;
syntax CheckConstraint
        = 
        ANY constraintElements+ ANY constrainedElements+
 ;
syntax Column
        = 
        ANY precision ANY scale ANY isNullable ANY length ANY collectionName ANY characterSetName ANY column_constraints+ ANY type ANY owner ANY optionScopeColumnSet
 ;
syntax ColumnSet
        = 
        ANY features+
 ;
syntax NamedColumnSet
        = 
        ANY optionScopeColumn ANY triggers+
 ;
syntax QueryColumnSet
        = 
        query: ANY
 ;
syntax Table
        = 
        ANY isTemporary ANY temporaryScope ANY isSystem ANY table_constraints+
 ;
syntax View
        = 
        ANY isReadOnly ANY checkOption ANY queryExpression
 ;
syntax Trigger
        = 
        namedColumnSet: ANY
 ;
syntax SQLDataType
        = 
        ANY typeNumber ANY structuralFeatures+
 ;
syntax SQLDistinctType
        = 
        ANY length ANY precision ANY scale ANY sqlSimpleType
 ;
syntax SQLSimpleType
        = 
        ANY characterMaximumLength ANY characterOctetLength ANY numericPrecision ANY numericPrecisionRadix ANY numericScale ANY dateTimePrecision ANY sqlDistinctTypes+
 ;
