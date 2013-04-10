@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DSLModel

syntax Model
        = 
        PrimitiveTypes/String domainModel ModelElement contents+
 ;
syntax Element
        = ModelElement
        | ReferenceLink
 ;
syntax ModelElement
        = ModelElementLink
        | EmbeddingLink parentLink Property properties+ EmbeddingLink embeddinglinks+ ReferenceLink referencelinks+
 ;
syntax ModelElementLink
        = 
        ReferenceLink links+
 ;
syntax EmbeddingLink
        = 
        ModelElement owner ModelElement elements+
 ;
syntax ReferenceLink
        = 
        ModelElement owner ModelElementLink modelElement Role roles
 ;
syntax NamedElement
        = EmbeddingLink
        | Property
        | Role
 ;
syntax Property
        = 
        ModelElement owner Value value
 ;
syntax Role
        = 
        ModelElement element ReferenceLink owner
 ;
syntax Value
        = IntegerValue
        | DoubleValue
        | BooleanValue
        | StringValue
 ;
syntax IntegerValue
        = 
        value: PrimitiveTypes/Integer
 ;
syntax DoubleValue
        = 
        value: PrimitiveTypes/Double
 ;
syntax BooleanValue
        = 
        value: PrimitiveTypes/Boolean
 ;
syntax StringValue
        = 
        value: PrimitiveTypes/String
 ;
