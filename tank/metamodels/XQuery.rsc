@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XQuery

syntax XQueryProgram
        = 
        ANY expressions+
 ;
syntax Expression
        = 
        ANY parentNode ANY returnEx
 ;
syntax ExecutableExpression
        = 
        ANY xQueryProgram ANY functionDeclaration
 ;
syntax Node
        = 
        name: ANY
 ;
syntax FLWOR
        = 
        ANY for ANY let ANY where ANY orderBy ANY return
 ;
syntax FunctionCall
        = 
        ANY name ANY parameters+
 ;
syntax FunctionDeclaration
        = 
        ANY name ANY expression+
 ;
syntax ElementNode
        = 
        ANY nodes+
 ;
syntax AttributeNode
        = 
        value: ANY
 ;
syntax TextNode
        = 
        ()
 ;
syntax ReturnXPath
        = 
        value: ANY
 ;
syntax XPath
        = 
        ANY functionCall ANY for ANY let
 ;
syntax BooleanExp
        = 
        where: ANY
 ;
syntax For
        = 
        ANY var ANY flwor ANY expression
 ;
syntax Let
        = 
        ANY var ANY flwor ANY expression
 ;
syntax Where
        = 
        ANY flwor ANY expression
 ;
syntax OrderBy
        = 
        flwor: ANY
 ;
syntax Return
        = 
        ANY flwor ANY expressions+
 ;
