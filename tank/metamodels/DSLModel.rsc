@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DSLModel

syntax Model
        = 
        ANY domainModel ANY contents+
 ;
syntax Element
        = 
        ()
 ;
syntax ModelElement
        = 
        ANY parentLink ANY properties+ ANY embeddinglinks+ ANY referencelinks+
 ;
syntax ModelElementLink
        = 
        ANY links+
 ;
syntax EmbeddingLink
        = 
        ANY owner ANY elements+
 ;
syntax ReferenceLink
        = 
        ANY owner ANY modelElement ANY roles
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Property
        = 
        ANY owner ANY value
 ;
syntax Role
        = 
        ANY element ANY owner
 ;
syntax Value
        = 
        ()
 ;
syntax IntegerValue
        = 
        value: ANY
 ;
syntax DoubleValue
        = 
        value: ANY
 ;
syntax BooleanValue
        = 
        value: ANY
 ;
syntax StringValue
        = 
        value: ANY
 ;
