@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DSLModel

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
