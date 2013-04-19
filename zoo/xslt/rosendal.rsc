@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Rosendal

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
syntax Node
        = ElementNode
        | AttributeNode
 ;
syntax ElementNode
        = RootNode
        | TextNode
        | XSLTNode
        | Node nodes+
 ;
syntax AttributeNode
        = 
        String name ElementNode parentNode
 ;
syntax RootNode
        = XSLTRootNode
        | document: Document
 ;
syntax TextNode
        = 
        value: String
 ;
syntax XSLTNode
        = ApplyTemplates
        | If
        | Template
        | ValueOf
        | When
        | Choose
        | Otherwise
        | Sort
 ;
syntax XSLTRootNode
        = 
        document: Document
 ;
syntax Document
        = 
        String documentName RootNode document
 ;
syntax ApplyTemplates
        = 
        select: String
 ;
syntax If
        = 
        test: String
 ;
syntax Template
        = 
        match: String
 ;
syntax ValueOf
        = 
        select: String
 ;
syntax When
        = 
        test: String
 ;
syntax Choose
        = 
        When when Otherwise otherwise
 ;
syntax Otherwise
        = 
        ()
 ;
syntax Sort
        = 
        select: String
 ;
