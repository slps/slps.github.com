@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RDFS

syntax Resource
        = Graph
        | List
        | Container
        | Property
        | Statement
        | URIReferenceNode
        | BlankNode
        | Class
        | Literal
        | Graph graph URIReference uriRef+ Statement subjectStatement+ Statement objectStatement+ PlainLiteral label+ Class type+ Resource seeAlso+ Resource referringResource+ Resource member+ Resource container+ List list+
 ;
syntax Graph
        = 
        URIReference graphName Resource resources+
 ;
syntax List
        = 
        Resource first List rest List originalList+
 ;
syntax Container
        = Alt
        | Bag
        | Seq
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
        Statement predicateStatement+ Property subPropertyOf+ Property superProperty+ Class domain+ Class range+
 ;
syntax ContainerMembershipProperty
        = 
        ()
 ;
syntax Statement
        = 
        Property predicate Resource object Resource subject Boolean isReifiedOnly Boolean isReified URIReference nameForReification+
 ;
syntax URIReferenceNode
        = 
        Graph graph URIReference uriRef+ Statement subjectStatement+ Statement objectStatement+ PlainLiteral label+ Class type+ Resource seeAlso+ Resource referringResource+ Resource member+ Resource container+ List list+
 ;
syntax BlankNode
        = 
        nodeId: String
 ;
syntax Class
        = Datatype
        | Class subClassOf+ Class superClass+ Resource typedResource+ Property propertyForDomain+ Property propertyForRange+
 ;
syntax Datatype
        = 
        Class subClassOf+ Class superClass+ Resource typedResource+ Property propertyForDomain+ Property propertyForRange+
 ;
syntax Literal
        = PlainLiteral
        | TypedLiteral
        | lexicalForm: String
 ;
syntax PlainLiteral
        = 
        String language Resource labeledResource
 ;
syntax TypedLiteral
        = RDFXMLLiteral
        | datatypeURI: URIReference
 ;
syntax RDFXMLLiteral
        = 
        datatypeURI: URIReference
 ;
syntax URIReference
        = UniformResourceIdentifier
        | UniformResourceIdentifier uri Resource resource TypedLiteral literal Graph namedGraph Statement reifiedStatement+
 ;
syntax UniformResourceIdentifier
        = 
        String name URIReference uriRef+
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
