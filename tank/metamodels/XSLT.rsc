@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XSLT

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
        ()
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
