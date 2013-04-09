@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RDFS

syntax Resource
        = 
        ANY graph ANY uriRef+ ANY subjectStatement+ ANY objectStatement+ ANY label+ ANY type+ ANY seeAlso+ ANY referringResource+ ANY member+ ANY container+ ANY list+
 ;
syntax Graph
        = 
        ANY graphName ANY resources+
 ;
syntax List
        = 
        ANY first ANY rest ANY originalList+
 ;
syntax Container
        = 
        ()
 ;
syntax Alt
        = 
        ()
 ;
syntax Bag
        = 
        ()
 ;
syntax Seq
        = 
        ()
 ;
syntax Property
        = 
        ANY predicateStatement+ ANY subPropertyOf+ ANY superProperty+ ANY domain+ ANY range+
 ;
syntax ContainerMembershipProperty
        = 
        ()
 ;
syntax Statement
        = 
        ANY predicate ANY object ANY subject ANY isReifiedOnly ANY isReified ANY nameForReification+
 ;
syntax URIReferenceNode
        = 
        ()
 ;
syntax BlankNode
        = 
        nodeId: ANY
 ;
syntax Class
        = 
        ANY subClassOf+ ANY superClass+ ANY typedResource+ ANY propertyForDomain+ ANY propertyForRange+
 ;
syntax Datatype
        = 
        ()
 ;
syntax Literal
        = 
        lexicalForm: ANY
 ;
syntax PlainLiteral
        = 
        ANY language ANY labeledResource
 ;
syntax TypedLiteral
        = 
        datatypeURI: ANY
 ;
syntax RDFXMLLiteral
        = 
        ()
 ;
syntax URIReference
        = 
        ANY uri ANY resource ANY literal ANY namedGraph ANY reifiedStatement+
 ;
syntax UniformResourceIdentifier
        = 
        ANY name ANY uriRef+
 ;
