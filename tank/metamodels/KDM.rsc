@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module KDM

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax ActionElement
        = 
        Core/String kind Code/AbstractCodeElement codeElement+ Action/AbstractActionRelationship actionRelation+
 ;
syntax ControlFlow
        = 
        Action/ActionElement to Action/ActionElement from
 ;
syntax Calls
        = 
        Code/ControlElement to Action/ActionElement from
 ;
syntax Creates
        = 
        Code/Datatype to Action/ActionElement from
 ;
syntax Reads
        = 
        Code/DataElement to Action/ActionElement from
 ;
syntax Writes
        = 
        Code/DataElement to Action/ActionElement from
 ;
syntax CompliesTo
        = 
        Code/CodeItem to Action/ActionElement from
 ;
syntax Flow
        = 
        ()
 ;
syntax TrueFlow
        = 
        ()
 ;
syntax FalseFlow
        = 
        ()
 ;
syntax GuardedFlow
        = 
        ()
 ;
syntax UsesType
        = 
        Code/Datatype to Action/ActionElement from
 ;
syntax Addresses
        = 
        Code/ComputationalObject to Action/ActionElement from
 ;
syntax ActionRelationship
        = 
        Core/KDMEntity to Action/ActionElement from
 ;
syntax Throws
        = 
        Code/DataElement to Action/ActionElement from
 ;
syntax Dispatches
        = 
        Code/DataElement to Action/ActionElement from
 ;
syntax EntryFlow
        = 
        Action/ActionElement to Code/ControlElement from
 ;
syntax BlockUnit
        = 
        ()
 ;
syntax ExceptionUnit
        = 
        ()
 ;
syntax TryUnit
        = 
        ()
 ;
syntax FinallyUnit
        = 
        ()
 ;
syntax CatchUnit
        = 
        ()
 ;
syntax ExitFlow
        = 
        Action/ActionElement to Action/ActionElement from
 ;
syntax ExceptionFlow
        = 
        Action/ActionElement to Action/ActionElement from
 ;
syntax BuildResource
        = 
        Core/KDMEntity implementation+ Build/AbstractBuildElement groupedBuild+ Build/AbstractBuildElement buildElement+
 ;
syntax BuildDescription
        = 
        Source/SourceRef source+ Core/String text
 ;
syntax SymbolicLink
        = 
        ()
 ;
syntax LinksTo
        = 
        Build/AbstractBuildElement to Build/SymbolicLink from
 ;
syntax Consumes
        = 
        Build/AbstractBuildElement to Build/BuildStep from
 ;
syntax BuildModel
        = 
        Build/AbstractBuildElement buildElement+
 ;
syntax BuildComponent
        = 
        ()
 ;
syntax Supplier
        = 
        ()
 ;
syntax Tool
        = 
        ()
 ;
syntax BuildElement
        = 
        ()
 ;
syntax BuildRelationship
        = 
        Core/KDMEntity to Build/AbstractBuildElement from
 ;
syntax SuppliedBy
        = 
        Build/Supplier to Build/AbstractBuildElement from
 ;
syntax Library
        = 
        ()
 ;
syntax BuildStep
        = 
        ()
 ;
syntax Produces
        = 
        Build/AbstractBuildElement to Build/BuildStep from
 ;
syntax SupportedBy
        = 
        Build/Tool to Build/BuildStep from
 ;
syntax BuildProduct
        = 
        ()
 ;
syntax DescribedBy
        = 
        Build/BuildDescription to Build/BuildStep from
 ;
syntax ControlElement
        = 
        Code/Datatype type Action/EntryFlow entryFlow+ Code/AbstractCodeElement codeElement+
 ;
syntax MethodUnit
        = 
        Code/MethodKind kind Code/ExportKind export
 ;
syntax Module
        = 
        Code/AbstractCodeElement codeElement+
 ;
syntax CodeAssembly
        = 
        ()
 ;
syntax CallableUnit
        = 
        kind: Code/CallableKind
 ;
syntax TemplateUnit
        = 
        Code/CodeItem codeElement+
 ;
syntax TemplateParameter
        = 
        ()
 ;
syntax InstanceOf
        = 
        Code/TemplateUnit to Code/AbstractCodeElement from
 ;
syntax CompilationUnit
        = 
        ()
 ;
syntax CodeModel
        = 
        Code/AbstractCodeElement codeElement+
 ;
syntax DerivedType
        = 
        itemUnit: Code/ItemUnit
 ;
syntax ArrayType
        = 
        Core/Integer size Code/IndexUnit indexUnit
 ;
syntax PrimitiveType
        = 
        ()
 ;
syntax BooleanType
        = 
        ()
 ;
syntax CharType
        = 
        ()
 ;
syntax ClassUnit
        = 
        Core/Boolean isAbstract Code/CodeItem codeElement+
 ;
syntax CompositeType
        = 
        Code/ItemUnit itemUnit+
 ;
syntax RecordType
        = 
        ()
 ;
syntax EnumeratedType
        = 
        Code/Value value+
 ;
syntax Extends
        = 
        Code/Datatype to Code/Datatype from
 ;
syntax ScaledType
        = 
        ()
 ;
syntax FloatType
        = 
        ()
 ;
syntax HasType
        = 
        Code/Datatype to Code/CodeItem from
 ;
syntax ImplementationOf
        = 
        Code/CodeItem to Code/CodeItem from
 ;
syntax Implements
        = 
        Code/CodeItem to Code/CodeItem from
 ;
syntax IntegerType
        = 
        ()
 ;
syntax InterfaceUnit
        = 
        Code/CodeItem codeElement+
 ;
syntax PointerType
        = 
        ()
 ;
syntax TypeUnit
        = 
        ()
 ;
syntax RangeType
        = 
        Core/Integer lower Core/Integer upper
 ;
syntax Signature
        = 
        Code/ParameterUnit parameterUnit+
 ;
syntax DataElement
        = 
        Code/Datatype type Core/String ext Core/Integer size Code/Datatype codeElement+
 ;
syntax StringType
        = 
        ()
 ;
syntax ChoiceType
        = 
        ()
 ;
syntax NamespaceUnit
        = 
        Code/CodeItem groupedCode+
 ;
syntax VisibleIn
        = 
        Code/CodeItem to Code/CodeItem from
 ;
syntax CommentUnit
        = 
        text: Core/String
 ;
syntax SharedUnit
        = 
        ()
 ;
syntax DecimalType
        = 
        ()
 ;
syntax DateType
        = 
        ()
 ;
syntax TimeType
        = 
        ()
 ;
syntax MethodKind
        = operator: ()
        | destructor: ()
        | method: ()
        | abstract: ()
        | virtual: ()
        | unknown: ()
        | constructor: ()
 ;
syntax VoidType
        = 
        ()
 ;
syntax Value
        = 
        ()
 ;
syntax ValueList
        = 
        Code/ValueElement valueElement+
 ;
syntax StorableUnit
        = 
        kind: Code/StorableKind
 ;
syntax MemberUnit
        = 
        export: Code/ExportKind
 ;
syntax ParameterUnit
        = 
        Code/ParameterKind kind Core/Integer pos
 ;
syntax ItemUnit
        = 
        ()
 ;
syntax IndexUnit
        = 
        ()
 ;
syntax SynonymType
        = 
        ()
 ;
syntax SequenceType
        = 
        size: Core/Integer
 ;
syntax BagType
        = 
        size: Core/Integer
 ;
syntax SetType
        = 
        size: Core/Integer
 ;
syntax CodeElement
        = 
        ()
 ;
syntax CodeRelationship
        = 
        Core/KDMEntity to Code/CodeItem from
 ;
syntax ParameterKind
        = byReference: ()
        | unknown: ()
        | exception: ()
        | return: ()
        | byValue: ()
        | catchall: ()
        | byName: ()
        | throws: ()
        | variadic: ()
 ;
syntax ExportKind
        = private: ()
        | unknown: ()
        | public: ()
        | protected: ()
        | final: ()
 ;
syntax LanguageUnit
        = 
        ()
 ;
syntax OrdinalType
        = 
        ()
 ;
syntax BitstringType
        = 
        ()
 ;
syntax OctetType
        = 
        ()
 ;
syntax OctetstringType
        = 
        ()
 ;
syntax BitType
        = 
        ()
 ;
syntax StorableKind
        = global: ()
        | external: ()
        | static: ()
        | unknown: ()
        | register: ()
        | local: ()
 ;
syntax CallableKind
        = external: ()
        | regular: ()
        | stored: ()
        | operator: ()
        | unknown: ()
 ;
syntax Imports
        = 
        Code/CodeItem to Code/CodeItem from
 ;
syntax Package
        = 
        ()
 ;
syntax ParameterTo
        = 
        Code/CodeItem to Code/AbstractCodeElement from
 ;
syntax TemplateType
        = 
        ()
 ;
syntax PreprocessorDirective
        = 
        Code/AbstractCodeElement codeElement+
 ;
syntax MacroDirective
        = 
        ()
 ;
syntax MacroUnit
        = 
        kind: Code/MacroKind
 ;
syntax ConditionalDirective
        = 
        ()
 ;
syntax IncludeDirective
        = 
        ()
 ;
syntax MacroKind
        = external: ()
        | unknown: ()
        | option: ()
        | undefined: ()
        | regular: ()
 ;
syntax VariantTo
        = 
        Code/PreprocessorDirective to Code/PreprocessorDirective from
 ;
syntax Expands
        = 
        Code/PreprocessorDirective to Code/PreprocessorDirective from
 ;
syntax Redefines
        = 
        Code/PreprocessorDirective to Code/PreprocessorDirective from
 ;
syntax GeneratedFrom
        = 
        Code/PreprocessorDirective to Code/AbstractCodeElement from
 ;
syntax Includes
        = 
        Code/AbstractCodeElement to Code/PreprocessorDirective from
 ;
syntax HasValue
        = 
        Code/CodeItem to Code/CodeItem from
 ;
syntax ConceptualModel
        = 
        Conceptual/AbstractConceptualElement conceptualElement+
 ;
syntax TermUnit
        = 
        ()
 ;
syntax ConceptualContainer
        = 
        Conceptual/AbstractConceptualElement conceptualElement+
 ;
syntax FactUnit
        = 
        ()
 ;
syntax ConceptualRelationship
        = 
        Core/KDMEntity to Conceptual/AbstractConceptualElement from
 ;
syntax BehaviorUnit
        = 
        ()
 ;
syntax RuleUnit
        = 
        ()
 ;
syntax ScenarioUnit
        = 
        ()
 ;
syntax ConceptualFlow
        = 
        Conceptual/ConceptualContainer to Conceptual/ConceptualContainer from
 ;
syntax ConceptualElement
        = 
        ()
 ;
syntax ConceptualRole
        = 
        conceptualElement: Conceptual/AbstractConceptualElement
 ;
syntax AggregatedRelationship
        = 
        Core/KDMEntity from Core/KDMEntity to Core/KDMRelationship relation+ Core/Integer density
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax DataModel
        = 
        Data/AbstractDataElement dataElement+
 ;
syntax DataResource
        = 
        ()
 ;
syntax IndexElement
        = 
        Code/ItemUnit implementation+
 ;
syntax UniqueKey
        = 
        ()
 ;
syntax Index
        = 
        ()
 ;
syntax KeyRelation
        = 
        Data/UniqueKey to Data/ReferenceKey from
 ;
syntax ReferenceKey
        = 
        ()
 ;
syntax DataContainer
        = 
        Data/DataResource dataElement+
 ;
syntax Catalog
        = 
        ()
 ;
syntax RelationalSchema
        = 
        Code/CodeItem codeElement+
 ;
syntax ColumnSet
        = 
        Code/ItemUnit itemUnit+
 ;
syntax RelationalTable
        = 
        ()
 ;
syntax RelationalView
        = 
        ()
 ;
syntax RecordFile
        = 
        ()
 ;
syntax DataEvent
        = 
        kind: Core/String
 ;
syntax XMLSchema
        = 
        Data/AbstractContentElement contentElement+
 ;
syntax ComplexContentType
        = 
        Data/AbstractContentElement contentElement+
 ;
syntax AllContent
        = 
        ()
 ;
syntax SeqContent
        = 
        ()
 ;
syntax ChoiceContent
        = 
        ()
 ;
syntax ContentItem
        = 
        Data/ComplexContentType type Data/AbstractContentElement contentElement+
 ;
syntax GroupContent
        = 
        ()
 ;
syntax ContentRestriction
        = 
        Core/String kind Core/String value
 ;
syntax SimpleContentType
        = 
        Data/ComplexContentType type+ Core/String kind
 ;
syntax ExtendedDataElement
        = 
        ()
 ;
syntax DataRelationship
        = 
        Core/KDMEntity to Data/AbstractDataElement from
 ;
syntax MixedContent
        = 
        ()
 ;
syntax ContentReference
        = 
        ()
 ;
syntax DataAction
        = 
        Core/String kind Action/ActionElement implementation+ Data/DataEvent dataElement+
 ;
syntax ReadsColumnSet
        = 
        Data/ColumnSet to Action/ActionElement from
 ;
syntax ContentAttribute
        = 
        ()
 ;
syntax TypedBy
        = 
        Data/ComplexContentType to Data/ContentItem from
 ;
syntax ReferenceTo
        = 
        Data/ContentItem to Data/ContentItem from
 ;
syntax RestrictionOf
        = 
        Data/ComplexContentType to Data/ComplexContentType from
 ;
syntax ExtensionTo
        = 
        Data/ComplexContentType to Data/ComplexContentType from
 ;
syntax DatatypeOf
        = 
        Code/Datatype to Data/ComplexContentType from
 ;
syntax HasContent
        = 
        Data/AbstractDataElement to Action/ActionElement from
 ;
syntax WritesColumnSet
        = 
        Data/ColumnSet to Action/ActionElement from
 ;
syntax ProducesDataEvent
        = 
        Data/DataEvent to Action/ActionElement from
 ;
syntax DataSegment
        = 
        ()
 ;
syntax ContentElement
        = 
        ()
 ;
syntax ManagesData
        = 
        Data/AbstractDataElement to Action/ActionElement from
 ;
syntax EventModel
        = 
        Event/AbstractEventElement eventElement+
 ;
syntax Event
        = 
        kind: Core/String
 ;
syntax EventRelationship
        = 
        Core/KDMEntity to Event/AbstractEventElement from
 ;
syntax EventResource
        = 
        Event/AbstractEventElement eventElement+
 ;
syntax State
        = 
        ()
 ;
syntax Transition
        = 
        ()
 ;
syntax OnEntry
        = 
        ()
 ;
syntax OnExit
        = 
        ()
 ;
syntax EventAction
        = 
        Core/String kind Event/Event eventElement+
 ;
syntax ReadsState
        = 
        Event/State to Action/ActionElement from
 ;
syntax ProducesEvent
        = 
        Event/Event to Action/ActionElement from
 ;
syntax ConsumesEvent
        = 
        Event/Event to Event/Transition from
 ;
syntax NextState
        = 
        Event/State to Event/Transition from
 ;
syntax InitialState
        = 
        ()
 ;
syntax EventElement
        = 
        ()
 ;
syntax HasState
        = 
        Event/AbstractEventElement to Action/ActionElement from
 ;
syntax SourceRef
        = 
        Source/SourceRegion region+ Core/String language Core/String snippet
 ;
syntax SourceRegion
        = 
        Source/SourceFile file Core/Integer startLine Core/Integer startPosition Core/Integer endLine Core/Integer endPosition Core/String language Core/String path
 ;
syntax InventoryModel
        = 
        Source/AbstractInventoryElement inventoryElement+
 ;
syntax InventoryItem
        = 
        Core/String version Core/String path
 ;
syntax SourceFile
        = 
        Core/String language Core/String encoding
 ;
syntax Image
        = 
        ()
 ;
syntax ResourceDescription
        = 
        ()
 ;
syntax Configuration
        = 
        ()
 ;
syntax InventoryContainer
        = 
        Source/AbstractInventoryElement inventoryElement+
 ;
syntax Directory
        = 
        path: Core/String
 ;
syntax Project
        = 
        ()
 ;
syntax BinaryFile
        = 
        ()
 ;
syntax ExecutableFile
        = 
        ()
 ;
syntax DependsOn
        = 
        Source/AbstractInventoryElement to Source/AbstractInventoryElement from
 ;
syntax InventoryElement
        = 
        ()
 ;
syntax InventoryRelationship
        = 
        Core/KDMEntity to Source/AbstractInventoryElement from
 ;
syntax PlatformModel
        = 
        Platform/AbstractPlatformElement platformElement+
 ;
syntax Requires
        = 
        Platform/AbstractPlatformElement to Platform/DeployedComponent from
 ;
syntax ResourceType
        = 
        Platform/AbstractPlatformElement platformElement+
 ;
syntax NamingResource
        = 
        ()
 ;
syntax MarshalledResource
        = 
        ()
 ;
syntax MessagingResource
        = 
        ()
 ;
syntax FileResource
        = 
        ()
 ;
syntax ExecutionResource
        = 
        ()
 ;
syntax PlatformAction
        = 
        Core/String kind Platform/PlatformEvent platformElement+
 ;
syntax ExternalActor
        = 
        ()
 ;
syntax DataManager
        = 
        ()
 ;
syntax BindsTo
        = 
        Platform/ResourceType to Platform/ResourceType from
 ;
syntax PlatformElement
        = 
        ()
 ;
syntax PlatformRelationship
        = 
        Core/KDMEntity to Platform/AbstractPlatformElement from
 ;
syntax PlatformEvent
        = 
        kind: Core/String
 ;
syntax LockResource
        = 
        ()
 ;
syntax DeployedSoftwareSystem
        = 
        Platform/DeployedComponent groupedComponent+
 ;
syntax Machine
        = 
        Platform/DeployedComponent deployedComponent+ Platform/DeployedResource deployedResource+
 ;
syntax DeployedComponent
        = 
        Code/Module groupedCode+
 ;
syntax DeployedResource
        = 
        Platform/ResourceType platformElement+
 ;
syntax Loads
        = 
        Platform/DeployedComponent to Action/ActionElement from
 ;
syntax Spawns
        = 
        Platform/RuntimeResource to Action/ActionElement from
 ;
syntax RuntimeResource
        = 
        ()
 ;
syntax Thread
        = 
        ()
 ;
syntax Process
        = 
        ()
 ;
syntax ReadsResource
        = 
        Platform/ResourceType to Action/ActionElement from
 ;
syntax WritesResource
        = 
        Platform/ResourceType to Action/ActionElement from
 ;
syntax ManagesResource
        = 
        Platform/ResourceType to Action/ActionElement from
 ;
syntax DefinedBy
        = 
        Code/CodeItem to Action/ActionElement from
 ;
syntax StreamResource
        = 
        ()
 ;
syntax Subsystem
        = 
        ()
 ;
syntax Layer
        = 
        ()
 ;
syntax StructureModel
        = 
        Structure/AbstractStructureElement structureElement+
 ;
syntax Component
        = 
        ()
 ;
syntax SoftwareSystem
        = 
        ()
 ;
syntax StructureRelationship
        = 
        Core/KDMEntity to Structure/AbstractStructureElement from
 ;
syntax ArchitectureView
        = 
        ()
 ;
syntax StructureElement
        = 
        ()
 ;
syntax Audit
        = 
        Core/String description Core/String author Core/String date
 ;
syntax Segment
        = 
        Kdm/Segment segment+ Kdm/KDMModel model+
 ;
syntax Attribute
        = 
        Core/String tag Core/String value
 ;
syntax Annotation
        = 
        text: Core/String
 ;
syntax TagDefinition
        = 
        Core/String tag Core/String type
 ;
syntax Stereotype
        = 
        Kdm/TagDefinition tag+ Core/String name Core/String type
 ;
syntax ExtensionFamily
        = 
        Kdm/Stereotype stereotype+ Core/String name
 ;
syntax TaggedRef
        = 
        reference: Core/ModelElement
 ;
syntax TaggedValue
        = 
        value: Core/String
 ;
syntax UIResource
        = 
        Ui/AbstractUIElement UIElement+
 ;
syntax UIDisplay
        = 
        ()
 ;
syntax Screen
        = 
        ()
 ;
syntax Report
        = 
        ()
 ;
syntax UIModel
        = 
        Ui/AbstractUIElement UIElement+
 ;
syntax UILayout
        = 
        Ui/UIResource to Ui/UIResource from
 ;
syntax UIField
        = 
        ()
 ;
syntax DisplaysImage
        = 
        Source/Image to Action/ActionElement from
 ;
syntax Displays
        = 
        Ui/UIResource to Action/ActionElement from
 ;
syntax UIFlow
        = 
        Ui/AbstractUIElement to Ui/AbstractUIElement from
 ;
syntax UIElement
        = 
        ()
 ;
syntax UIRelationship
        = 
        Core/KDMEntity to Ui/AbstractUIElement from
 ;
syntax UIAction
        = 
        Core/String kind Ui/UIEvent UIElement+
 ;
syntax UIEvent
        = 
        kind: Core/String
 ;
syntax ReadsUI
        = 
        Ui/UIResource to Action/ActionElement from
 ;
syntax WritesUI
        = 
        Ui/UIResource to Action/ActionElement from
 ;
syntax ManagesUI
        = 
        Ui/UIResource to Action/ActionElement from
 ;
