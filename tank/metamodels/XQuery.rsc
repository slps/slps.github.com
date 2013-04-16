@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XQuery

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        Expression nodes+
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
