@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SQLDML

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        | ColumnExp
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
        | ColumnExp
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
