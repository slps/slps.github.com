@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SysML

syntax Entity
        = 
        ()
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Dependency
        = 
        ANY name
 ;
syntax Conform
        = 
        ANY target ANY source
 ;
syntax Package
        = 
        ANY name
 ;
syntax View
        = 
        conformsTo: ANY
 ;
syntax Class
        = 
        name: ANY
 ;
syntax Viewpoint
        = 
        ANY stakeholders+ ANY purpose ANY concerns+ ANY languages+ ANY methods+
 ;
syntax Comment
        = 
        content: ANY
 ;
syntax Rationale
        = 
        ()
 ;
syntax Problem
        = 
        ()
 ;
syntax Block
        = 
        isEncapsulated: ANY
 ;
syntax ConstraintBlock
        = 
        ()
 ;
syntax Property
        = 
        
 ;
syntax BlockProperty
        = 
        ()
 ;
syntax ConstraintProperty
        = 
        ()
 ;
syntax DistributedProperty
        = 
        ()
 ;
syntax DataType
        = 
        
 ;
syntax ValueType
        = 
        ANY unit ANY dimension
 ;
syntax Unit
        = 
        ()
 ;
syntax Dimension
        = 
        ()
 ;
syntax ConnectorEnd
        = 
        
 ;
syntax NestedConnectorEnd
        = 
        propertyPath: ANY
 ;
syntax Port
        = 
        isBehavior: ANY
 ;
syntax FlowPort
        = 
        ANY isAtomic ANY direction ANY isConjugated
 ;
syntax FlowProperty
        = 
        direction: ANY
 ;
syntax Interface
        = 
        
 ;
syntax FlowSpecification
        = 
        ANY ownedFlowProperty+
 ;
syntax FlowDirection
        = in: ()
        | out: ()
        | inout: ()
 ;
syntax Classifier
        = 
        
 ;
syntax InformationItem
        = 
        ANY represented+
 ;
syntax InformationFlow
        = 
        ANY conveyed+ ANY source+ ANY target+
 ;
syntax ItemFlow
        = 
        itemProperty: ANY
 ;
syntax Parameter
        = 
        
 ;
syntax ActivityEdge
        = 
        
 ;
syntax ParameterSet
        = 
        
 ;
syntax Optional
        = 
        ()
 ;
syntax Rate
        = 
        instance: ANY
 ;
syntax InstanceSpecification
        = 
        
 ;
syntax Continous
        = 
        ()
 ;
syntax Discrete
        = 
        ()
 ;
syntax Probability
        = 
        probability: ANY
 ;
syntax ValueSpecification
        = 
        
 ;
syntax Behavior
        = 
        
 ;
syntax Operation
        = 
        
 ;
syntax ControlOperation
        = 
        ()
 ;
syntax ObjectNode
        = 
        
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
        
 ;
syntax Allocate
        = 
        ()
 ;
syntax Allocated
        = 
        ANY allocatedFrom+ ANY allocatedTo+
 ;
syntax ActivityPartition
        = 
        
 ;
syntax AllocateActivityPartition
        = 
        ()
 ;
syntax Trace
        = 
        
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
        
 ;
syntax Satisfy
        = 
        ()
 ;
syntax Requirement
        = 
        ANY text ANY id ANY derived+ ANY derivedFrom+ ANY satisfiedBy+ ANY refinedBy+ ANY tracedTo+ ANY verifiedBy+ ANY master
 ;
syntax TestCase
        = 
        ()
 ;
syntax RequirementRelated
        = 
        ANY verifies+ ANY tracedFrom+ ANY satisfies+ ANY refines+
 ;
syntax BasicInterval
        = 
        ANY min ANY max
 ;
syntax Interval
        = 
        ()
 ;
syntax Uniform
        = 
        ()
 ;
syntax Normal
        = 
        ANY mean ANY standardDeviation
 ;
