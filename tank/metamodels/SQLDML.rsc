@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SQLDML

syntax LocatedElement
        = 
        ()
 ;
syntax SQLRoot
        = 
        ANY statements+
 ;
syntax Statement
        = 
        ()
 ;
syntax ViewStatement
        = 
        ANY name ANY columns+ ANY query
 ;
syntax InsertStmt
        = 
        ANY tableName ANY values+
 ;
syntax QueryStmt
        = 
        ()
 ;
syntax QueryStmtCol
        = 
        ANY columns+
 ;
syntax QueryStmtAllCol
        = 
        ANY tables+ ANY condition
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Table
        = 
        alias: ANY
 ;
syntax WhereClause
        = 
        expression: ANY
 ;
syntax Expression
        = 
        ()
 ;
syntax BinaryExp
        = 
        ()
 ;
syntax OrExp
        = 
        ANY opName ANY leftExp ANY rightExp
 ;
syntax AndExp
        = 
        ANY opName ANY leftExp ANY rightExp
 ;
syntax NotExp
        = 
        ANY opName ANY valueExp ANY unused
 ;
syntax LikeExp
        = 
        ANY columnName ANY expression
 ;
syntax InExp
        = 
        ANY columnName ANY elements+
 ;
syntax OperationExp
        = 
        optName: ANY
 ;
syntax Predicate
        = 
        ()
 ;
syntax QueryPredicate
        = 
        query: ANY
 ;
syntax ColumnExp
        = 
        ANY alias ANY type
 ;
syntax ValueExp
        = 
        ()
 ;
syntax StringValueExp
        = 
        aValue: ANY
 ;
syntax IntegerValueExp
        = 
        aValue: ANY
 ;
syntax ListExp
        = 
        ANY elements+
 ;
syntax FunctionExp
        = 
        ANY arguments+ ANY name
 ;
syntax DataType
        = 
        ANY name
 ;
