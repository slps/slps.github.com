@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XSLT

syntax Node
        = 
        ()
 ;
syntax ElementNode
        = 
        ANY nodes+
 ;
syntax AttributeNode
        = 
        ANY name ANY parentNode
 ;
syntax RootNode
        = 
        document: ANY
 ;
syntax TextNode
        = 
        value: ANY
 ;
syntax XSLTNode
        = 
        ()
 ;
syntax XSLTRootNode
        = 
        ()
 ;
syntax Document
        = 
        ANY documentName ANY document
 ;
syntax ApplyTemplates
        = 
        select: ANY
 ;
syntax If
        = 
        test: ANY
 ;
syntax Template
        = 
        match: ANY
 ;
syntax ValueOf
        = 
        select: ANY
 ;
syntax When
        = 
        test: ANY
 ;
syntax Choose
        = 
        ANY when ANY otherwise
 ;
syntax Otherwise
        = 
        
 ;
syntax Sort
        = 
        select: ANY
 ;
