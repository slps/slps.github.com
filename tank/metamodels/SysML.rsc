@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SysML

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Entity
        = NamedElement
        | Comment
        | Property
        | DataType
        | ConnectorEnd
        | Interface
        | Classifier
        | InformationFlow
        | Parameter
        | ActivityEdge
        | ParameterSet
        | InstanceSpecification
        | ValueSpecification
        | Behavior
        | Operation
        | ObjectNode
        | Abstraction
        | ActivityPartition
        | Trace
        | Realization
 ;
syntax NamedElement
        = Dependency
        | Package
        | Allocated
        | RequirementRelated
 ;
syntax Dependency
        = 
        Conform
 ;
syntax Conform
        = 
        Viewpoint target View source
 ;
syntax Package
        = 
        View
 ;
syntax View
        = 
        conformsTo: Viewpoint
 ;
syntax Class
        = Viewpoint
        | Block
        | Requirement
        | name: String
 ;
syntax Viewpoint
        = 
        String stakeholders+ String purpose String concerns+ String languages+ String methods+
 ;
syntax Comment
        = Rationale
        | Problem
        | content: String
 ;
syntax Rationale
        = 
        content: String
 ;
syntax Problem
        = 
        content: String
 ;
syntax Block
        = ConstraintBlock
        | isEncapsulated: Boolean
 ;
syntax ConstraintBlock
        = 
        isEncapsulated: Boolean
 ;
syntax Property
        = BlockProperty
        | Port
        | FlowProperty
 ;
syntax BlockProperty
        = ConstraintProperty
        | DistributedProperty
 ;
syntax ConstraintProperty
        = 
        ()
 ;
syntax DistributedProperty
        = BasicInterval
        | Normal
 ;
syntax DataType
        = 
        ValueType
 ;
syntax ValueType
        = Unit
        | Dimension
        | Unit unit Dimension dimension
 ;
syntax Unit
        = 
        Unit unit Dimension dimension
 ;
syntax Dimension
        = 
        Unit unit Dimension dimension
 ;
syntax ConnectorEnd
        = 
        NestedConnectorEnd
 ;
syntax NestedConnectorEnd
        = 
        propertyPath: Property
 ;
syntax Port
        = FlowPort
        | isBehavior: Boolean
 ;
syntax FlowPort
        = 
        Boolean isAtomic FlowDirection direction Boolean isConjugated
 ;
syntax FlowProperty
        = 
        direction: FlowDirection
 ;
syntax Interface
        = 
        FlowSpecification
 ;
syntax FlowSpecification
        = 
        FlowProperty ownedFlowProperty+
 ;
syntax FlowDirection
        = in: ()
        | out: ()
        | inout: ()
 ;
syntax Classifier
        = Class
        | InformationItem
 ;
syntax InformationItem
        = 
        Classifier represented+
 ;
syntax InformationFlow
        = ItemFlow
        | Classifier conveyed+ NamedElement source+ NamedElement target+
 ;
syntax ItemFlow
        = 
        itemProperty: BlockProperty
 ;
syntax Parameter
        = Optional
        | Rate
 ;
syntax ActivityEdge
        = Probability
        | Rate
        | ()
 ;
syntax ParameterSet
        = Probability
        | ()
 ;
syntax Optional
        = 
        ()
 ;
syntax Rate
        = Continous
        | Discrete
        | instance: InstanceSpecification
 ;
syntax InstanceSpecification
        = 
        ()
 ;
syntax Continous
        = 
        instance: InstanceSpecification
 ;
syntax Discrete
        = 
        instance: InstanceSpecification
 ;
syntax Probability
        = 
        probability: ValueSpecification
 ;
syntax ValueSpecification
        = 
        ()
 ;
syntax Behavior
        = ControlOperation
        | TestCase
        | ()
 ;
syntax Operation
        = ControlOperation
        | TestCase
        | ()
 ;
syntax ControlOperation
        = 
        ()
 ;
syntax ObjectNode
        = NoBuffer
        | Overwrite
 ;
syntax NoBuffer
        = 
        ()
 ;
syntax Overwrite
        = 
        ()
 ;
syntax Abstraction
        = 
        Allocate
 ;
syntax Allocate
        = 
        ()
 ;
syntax Allocated
        = 
        NamedElement allocatedFrom+ NamedElement allocatedTo+
 ;
syntax ActivityPartition
        = 
        AllocateActivityPartition
 ;
syntax AllocateActivityPartition
        = 
        ()
 ;
syntax Trace
        = DeriveReqt
        | Verify
        | Copy
 ;
syntax DeriveReqt
        = 
        ()
 ;
syntax Verify
        = 
        ()
 ;
syntax Copy
        = 
        ()
 ;
syntax Realization
        = 
        Satisfy
 ;
syntax Satisfy
        = 
        ()
 ;
syntax Requirement
        = 
        String text String id Requirement derived+ Requirement derivedFrom+ NamedElement satisfiedBy+ NamedElement refinedBy+ NamedElement tracedTo+ TestCase verifiedBy+ Requirement master
 ;
syntax TestCase
        = 
        ()
 ;
syntax RequirementRelated
        = 
        Requirement verifies+ Requirement tracedFrom+ Requirement satisfies+ Requirement refines+
 ;
syntax BasicInterval
        = Interval
        | Uniform
        | Integer min Integer max
 ;
syntax Interval
        = 
        Integer min Integer max
 ;
syntax Uniform
        = 
        Integer min Integer max
 ;
syntax Normal
        = 
        Integer mean Integer standardDeviation
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
