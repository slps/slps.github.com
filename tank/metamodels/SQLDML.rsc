@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SQLDML

syntax LocatedElement
        = SQLRoot
        | Statement
        | NamedElement
        | WhereClause
        | Expression
 ;
syntax SQLRoot
        = 
        Statement statements+
 ;
syntax Statement
        = ViewStatement
        | InsertStmt
        | QueryStmt
 ;
syntax ViewStatement
        = 
        String name ColumnExp columns+ QueryStmt query
 ;
syntax InsertStmt
        = 
        String tableName Expression values+
 ;
syntax QueryStmt
        = QueryStmtCol
        | QueryStmtAllCol
 ;
syntax QueryStmtCol
        = 
        Expression columns+
 ;
syntax QueryStmtAllCol
        = 
        Table tables+ WhereClause condition
 ;
syntax NamedElement
        = Table
        | DataType
 ;
syntax Table
        = 
        alias: String
 ;
syntax WhereClause
        = 
        expression: Expression
 ;
syntax Expression
        = BinaryExp
        | NotExp
        | LikeExp
        | InExp
        | Predicate
        | QueryPredicate
 ;
syntax BinaryExp
        = OrExp
        | AndExp
        | OperationExp
 ;
syntax OrExp
        = 
        String opName Expression leftExp Expression rightExp
 ;
syntax AndExp
        = 
        String opName Expression leftExp Expression rightExp
 ;
syntax NotExp
        = 
        String opName Expression valueExp Expression unused
 ;
syntax LikeExp
        = 
        String columnName StringValueExp expression
 ;
syntax InExp
        = 
        String columnName Predicate elements+
 ;
syntax OperationExp
        = 
        optName: String
 ;
syntax Predicate
        = ValueExp
        | ListExp
        | FunctionExp
 ;
syntax QueryPredicate
        = 
        query: QueryStmt
 ;
syntax ColumnExp
        = 
        String alias DataType type
 ;
syntax ValueExp
        = StringValueExp
        | IntegerValueExp
 ;
syntax StringValueExp
        = 
        aValue: String
 ;
syntax IntegerValueExp
        = 
        aValue: Integer
 ;
syntax ListExp
        = 
        Expression elements+
 ;
syntax FunctionExp
        = 
        Expression arguments+ String name
 ;
syntax DataType
        = 
        name: String
 ;
