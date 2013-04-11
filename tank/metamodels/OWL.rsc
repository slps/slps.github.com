@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module OWL

syntax Document
        = 
        LocalName localName+ Namespace xmlBase+ NamespaceDefinition namespaceDefinition+ RDFStatement statement+
 ;
syntax LocalName
        = 
        String name Document document URIReference uriRef+
 ;
syntax Namespace
        = 
        Document document+ URIReference namespaceURIRef NamespaceDefinition namespaceDefinition+
 ;
syntax NamespaceDefinition
        = 
        String namespacePrefix Document document Namespace namespace
 ;
syntax RDFSResource
        = Document
        | RDFGraph
        | List
        | Container
        | RDFProperty
        | RDFStatement
        | URIReferenceNode
        | BlankNode
        | RDFSClass
        | RDFSLiteral
        | OWLOntology
        | OWLUniverse
        | Individual
        | URIReference uriRef+ RDFStatement subjectStatement+ RDFStatement objectStatement+ PlainLiteral label+ RDFSClass type+ PlainLiteral comment+ RDFSResource seeAlso+ RDFSResource referringResource+ RDFSResource isDefinedBy+ RDFSResource definedResource+ RDFSResource member+ RDFSResource container+ List list+
 ;
syntax RDFGraph
        = OWLGraph
        | URIReference graphName RDFStatement statement+
 ;
syntax List
        = 
        RDFSResource first List rest List originalList+
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
syntax RDFProperty
        = OWLAnnotationProperty
        | OWLOntologyProperty
        | Property
        | RDFStatement predicateStatement+ RDFProperty subPropertyOf+ RDFProperty superProperty+ RDFSClass domain+ RDFSClass range+ OWLRestriction propertyRestriction+
 ;
syntax ContainerMembershipProperty
        = 
        ()
 ;
syntax RDFStatement
        = OWLStatement
        | ReificationKind reificationKind RDFGraph graph+ RDFProperty RDFpredicate RDFSResource RDFobject RDFSResource RDFsubject URIReference nameForReification+ Document document+
 ;
syntax ReificationKind
        = none: ()
        | reifiedOnly: ()
        | reified: ()
 ;
syntax URIReferenceNode
        = 
        URIReference uriRef+ RDFStatement subjectStatement+ RDFStatement objectStatement+ PlainLiteral label+ RDFSClass type+ PlainLiteral comment+ RDFSResource seeAlso+ RDFSResource referringResource+ RDFSResource isDefinedBy+ RDFSResource definedResource+ RDFSResource member+ RDFSResource container+ List list+
 ;
syntax BlankNode
        = 
        nodeId: String
 ;
syntax RDFSClass
        = RDFSDataType
        | OWLClass
        | OWLDataRange
        | RDFSClass subClassOf+ RDFSClass superClass+ RDFSResource typedResource+ RDFProperty propertyForDomain+ RDFProperty propertyForRange+
 ;
syntax RDFSDataType
        = 
        OWLDataRange dataRange+
 ;
syntax RDFSLiteral
        = PlainLiteral
        | TypedLiteral
        | String lexicalForm HasValueRestriction restrictionClass+ OWLDataRange dataRange+
 ;
syntax PlainLiteral
        = 
        String language RDFSResource labeledResource RDFSResource commentedResource
 ;
syntax TypedLiteral
        = XMLLiteral
        | URIReference datatypeURI CardinalityRestriction cardinalityRestriction+ MinCardinalityRestriction minCardinalityRestriction+ MaxCardinalityRestriction maxCardinalityRestriction+
 ;
syntax XMLLiteral
        = 
        URIReference datatypeURI CardinalityRestriction cardinalityRestriction+ MinCardinalityRestriction minCardinalityRestriction+ MaxCardinalityRestriction maxCardinalityRestriction+
 ;
syntax URIReference
        = UniformResourceIdentifier
        | UniformResourceIdentifier uri RDFSResource resource TypedLiteral literal+ RDFGraph namedGraph RDFStatement reifiedStatement+ LocalName fragmentIdentifier Namespace namespace
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
syntax OWLOntology
        = 
        OWLUniverse owlUniverse+ OWLOntology OWLPriorVersion+ OWLOntology newerOntology+ OWLOntology OWLIncompatibleWith+ OWLOntology incompatibleOntology+ OWLOntology OWLImports+ OWLOntology importingOntology+ OWLGraph owlGraph+ OWLStatement owlStatement+ RDFSLiteral versionInfo+
 ;
syntax OWLGraph
        = 
        OWLOntology ontology+ OWLStatement owlStatement+
 ;
syntax OWLStatement
        = 
        OWLOntology ontology+ OWLGraph owlGraph+
 ;
syntax OWLUniverse
        = OWLClass
        | OWLAnnotationProperty
        | OWLOntologyProperty
        | Property
        | Individual
        | OWLDataRange
        | OWLOntology ontology+
 ;
syntax OWLClass
        = IntersectionClass
        | UnionClass
        | ComplementClass
        | EnumeratedClass
        | OWLRestriction
        | OWLAllDifferent
        | Boolean isDeprecated OWLClass OWLequivalentClass+ OWLClass equivalentClass+ OWLClass OWLdisjointWith+ OWLClass disjointClass+ IntersectionClass intersectionClass+ UnionClass unionClass+ ComplementClass complementClass+ AllValuesFromRestriction allValuesFromRestrictionClass+ SomeValuesFromRestriction someValuesFromRestrictionClass+
 ;
syntax IntersectionClass
        = 
        OWLClass OWLIntersectionOf+
 ;
syntax UnionClass
        = 
        OWLClass OWLUnionOf+
 ;
syntax ComplementClass
        = 
        OWLClass OWLComplementOf+
 ;
syntax EnumeratedClass
        = 
        Individual OWLOneOf+
 ;
syntax OWLRestriction
        = HasValueRestriction
        | AllValuesFromRestriction
        | SomeValuesFromRestriction
        | CardinalityRestriction
        | MaxCardinalityRestriction
        | MinCardinalityRestriction
        | OWLOnProperty: RDFProperty
 ;
syntax HasValueRestriction
        = 
        RDFSLiteral OWLHasLiteralValue Individual OWLHasIndividualValue
 ;
syntax AllValuesFromRestriction
        = 
        OWLDataRange OWLAllValuesFromDataRange OWLClass OWLAllValuesFromClass
 ;
syntax SomeValuesFromRestriction
        = 
        OWLClass OWLSomeValuesFromClass OWLDataRange OWLSomeValuesFromDataRange
 ;
syntax CardinalityRestriction
        = 
        OWLCardinality: TypedLiteral
 ;
syntax MaxCardinalityRestriction
        = 
        OWLMaxCardinality: TypedLiteral
 ;
syntax MinCardinalityRestriction
        = 
        OWLMinCardinality: TypedLiteral
 ;
syntax OWLAnnotationProperty
        = 
        RDFStatement predicateStatement+ RDFProperty subPropertyOf+ RDFProperty superProperty+ RDFSClass domain+ RDFSClass range+ OWLRestriction propertyRestriction+ OWLOntology ontology+
 ;
syntax OWLOntologyProperty
        = 
        RDFStatement predicateStatement+ RDFProperty subPropertyOf+ RDFProperty superProperty+ RDFSClass domain+ RDFSClass range+ OWLRestriction propertyRestriction+ OWLOntology ontology+
 ;
syntax Property
        = FunctionalProperty
        | OWLDatatypeProperty
        | OWLObjectProperty
 ;
syntax FunctionalProperty
        = 
        Boolean isDeprecated Property OWLEquivalentProperty+ Property equivalentProperty+
 ;
syntax OWLDatatypeProperty
        = 
        Boolean isDeprecated Property OWLEquivalentProperty+ Property equivalentProperty+
 ;
syntax OWLObjectProperty
        = InverseFunctionalProperty
        | SymmetricProperty
        | TransitiveProperty
        | OWLObjectProperty OWLInverseOf OWLObjectProperty inverseProperty+
 ;
syntax InverseFunctionalProperty
        = 
        OWLObjectProperty OWLInverseOf OWLObjectProperty inverseProperty+
 ;
syntax SymmetricProperty
        = 
        OWLObjectProperty OWLInverseOf OWLObjectProperty inverseProperty+
 ;
syntax TransitiveProperty
        = 
        OWLObjectProperty OWLInverseOf OWLObjectProperty inverseProperty+
 ;
syntax Individual
        = 
        Individual OWLDifferentFrom+ Individual differentIndividual+ Individual OWLSameAs+ Individual sameIndividual+ OWLAllDifferent allDifferent+ EnumeratedClass enumeratedClass+ HasValueRestriction restrictionClass+
 ;
syntax OWLAllDifferent
        = 
        OWLDistinctMembers: Individual
 ;
syntax OWLDataRange
        = 
        RDFSDataType datatype RDFSLiteral OWLOneOf+ SomeValuesFromRestriction someValuesFromRestrictionClass AllValuesFromRestriction allValuesFromRestrictionClass
 ;
