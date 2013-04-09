@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module OWL

syntax Document
        = 
        ANY localName+ ANY xmlBase+ ANY namespaceDefinition+ ANY statement+
 ;
syntax LocalName
        = 
        ANY name ANY document ANY uriRef+
 ;
syntax Namespace
        = 
        ANY document+ ANY namespaceURIRef ANY namespaceDefinition+
 ;
syntax NamespaceDefinition
        = 
        ANY namespacePrefix ANY document ANY namespace
 ;
syntax RDFSResource
        = 
        ANY uriRef+ ANY subjectStatement+ ANY objectStatement+ ANY label+ ANY type+ ANY comment+ ANY seeAlso+ ANY referringResource+ ANY isDefinedBy+ ANY definedResource+ ANY member+ ANY container+ ANY list+
 ;
syntax RDFGraph
        = 
        ANY graphName ANY statement+
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
syntax RDFProperty
        = 
        ANY predicateStatement+ ANY subPropertyOf+ ANY superProperty+ ANY domain+ ANY range+ ANY propertyRestriction+
 ;
syntax ContainerMembershipProperty
        = 
        ()
 ;
syntax RDFStatement
        = 
        ANY reificationKind ANY graph+ ANY RDFpredicate ANY RDFobject ANY RDFsubject ANY nameForReification+ ANY document+
 ;
syntax ReificationKind
        = none: ()
        | reifiedOnly: ()
        | reified: ()
 ;
syntax URIReferenceNode
        = 
        ()
 ;
syntax BlankNode
        = 
        nodeId: ANY
 ;
syntax RDFSClass
        = 
        ANY subClassOf+ ANY superClass+ ANY typedResource+ ANY propertyForDomain+ ANY propertyForRange+
 ;
syntax RDFSDataType
        = 
        ANY dataRange+
 ;
syntax RDFSLiteral
        = 
        ANY lexicalForm ANY restrictionClass+ ANY dataRange+
 ;
syntax PlainLiteral
        = 
        ANY language ANY labeledResource ANY commentedResource
 ;
syntax TypedLiteral
        = 
        ANY datatypeURI ANY cardinalityRestriction+ ANY minCardinalityRestriction+ ANY maxCardinalityRestriction+
 ;
syntax XMLLiteral
        = 
        ()
 ;
syntax URIReference
        = 
        ANY uri ANY resource ANY literal+ ANY namedGraph ANY reifiedStatement+ ANY fragmentIdentifier ANY namespace
 ;
syntax UniformResourceIdentifier
        = 
        ANY name ANY uriRef+
 ;
syntax OWLOntology
        = 
        ANY owlUniverse+ ANY OWLPriorVersion+ ANY newerOntology+ ANY OWLIncompatibleWith+ ANY incompatibleOntology+ ANY OWLImports+ ANY importingOntology+ ANY owlGraph+ ANY owlStatement+ ANY versionInfo+
 ;
syntax OWLGraph
        = 
        ANY ontology+ ANY owlStatement+
 ;
syntax OWLStatement
        = 
        ANY ontology+ ANY owlGraph+
 ;
syntax OWLUniverse
        = 
        ANY ontology+
 ;
syntax OWLClass
        = 
        ANY isDeprecated ANY OWLequivalentClass+ ANY equivalentClass+ ANY OWLdisjointWith+ ANY disjointClass+ ANY intersectionClass+ ANY unionClass+ ANY complementClass+ ANY allValuesFromRestrictionClass+ ANY someValuesFromRestrictionClass+
 ;
syntax IntersectionClass
        = 
        ANY OWLIntersectionOf+
 ;
syntax UnionClass
        = 
        ANY OWLUnionOf+
 ;
syntax ComplementClass
        = 
        ANY OWLComplementOf+
 ;
syntax EnumeratedClass
        = 
        ANY OWLOneOf+
 ;
syntax OWLRestriction
        = 
        OWLOnProperty: ANY
 ;
syntax HasValueRestriction
        = 
        ANY OWLHasLiteralValue ANY OWLHasIndividualValue
 ;
syntax AllValuesFromRestriction
        = 
        ANY OWLAllValuesFromDataRange ANY OWLAllValuesFromClass
 ;
syntax SomeValuesFromRestriction
        = 
        ANY OWLSomeValuesFromClass ANY OWLSomeValuesFromDataRange
 ;
syntax CardinalityRestriction
        = 
        OWLCardinality: ANY
 ;
syntax MaxCardinalityRestriction
        = 
        OWLMaxCardinality: ANY
 ;
syntax MinCardinalityRestriction
        = 
        OWLMinCardinality: ANY
 ;
syntax OWLAnnotationProperty
        = 
        ()
 ;
syntax OWLOntologyProperty
        = 
        ()
 ;
syntax Property
        = 
        ()
 ;
syntax FunctionalProperty
        = 
        ANY isDeprecated ANY OWLEquivalentProperty+ ANY equivalentProperty+
 ;
syntax OWLDatatypeProperty
        = 
        ANY isDeprecated ANY OWLEquivalentProperty+ ANY equivalentProperty+
 ;
syntax OWLObjectProperty
        = 
        ANY OWLInverseOf ANY inverseProperty+
 ;
syntax InverseFunctionalProperty
        = 
        ()
 ;
syntax SymmetricProperty
        = 
        ()
 ;
syntax TransitiveProperty
        = 
        ()
 ;
syntax Individual
        = 
        ANY OWLDifferentFrom+ ANY differentIndividual+ ANY OWLSameAs+ ANY sameIndividual+ ANY allDifferent+ ANY enumeratedClass+ ANY restrictionClass+
 ;
syntax OWLAllDifferent
        = 
        OWLDistinctMembers: ANY
 ;
syntax OWLDataRange
        = 
        ANY datatype ANY OWLOneOf+ ANY someValuesFromRestrictionClass ANY allValuesFromRestrictionClass
 ;
