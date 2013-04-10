@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XQuery

syntax XQueryProgram
        = 
        ExecutableExpression expressions+
 ;
syntax Expression
        = ExecutableExpression
        | Node
        | ReturnXPath
        | ElementNode parentNode Return returnEx
 ;
syntax ExecutableExpression
        = FLWOR
        | FunctionCall
        | FunctionDeclaration
        | XQueryProgram xQueryProgram FunctionDeclaration functionDeclaration
 ;
syntax Node
        = ElementNode
        | AttributeNode
        | name: String
 ;
syntax FLWOR
        = 
        For for Let let Where where OrderBy orderBy Return return
 ;
syntax FunctionCall
        = 
        String name XPath parameters+
 ;
syntax FunctionDeclaration
        = 
        String name ExecutableExpression expression+
 ;
syntax ElementNode
        = TextNode
        | Expression nodes+
 ;
syntax AttributeNode
        = 
        value: String
 ;
syntax TextNode
        = 
        ()
 ;
syntax ReturnXPath
        = XPath
        | value: String
 ;
syntax XPath
        = BooleanExp
        | FunctionCall functionCall For for Let let
 ;
syntax BooleanExp
        = 
        where: Where
 ;
syntax For
        = 
        String var FLWOR flwor XPath expression
 ;
syntax Let
        = 
        String var FLWOR flwor XPath expression
 ;
syntax Where
        = 
        FLWOR flwor BooleanExp expression
 ;
syntax OrderBy
        = 
        flwor: FLWOR
 ;
syntax Return
        = 
        FLWOR flwor Expression expressions+
 ;
