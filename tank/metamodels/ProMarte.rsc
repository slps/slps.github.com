@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ProMarte

syntax TimeBase
        = 
        ()
 ;
syntax Instant
        = 
        ()
 ;
syntax TimeValue
        = 
        ()
 ;
syntax TimeInterval
        = 
        ()
 ;
syntax Interval
        = 
        ()
 ;
syntax SingleTimeBase
        = 
        ANY currentValue ANY maximumValue ANY currentInstant
 ;
syntax SingleInstant
        = 
        coPoint: ANY
 ;
syntax SingleInterval
        = 
        ANY first ANY last ANY members+
 ;
syntax SingleTimeValue
        = 
        ANY denotedInstant+ ANY ref
 ;
syntax SingleTimeInterval
        = 
        ANY start ANY end
 ;
syntax DiscreteTimeBase
        = 
        refEvent: ANY
 ;
syntax DiscreteInstant
        = 
        ANY next ANY previous ANY refOcc
 ;
syntax Event
        = 
        ()
 ;
syntax EventOccurence
        = 
        ()
 ;
syntax PhysicalTime
        = 
        ()
 ;
syntax PhysicalInstant
        = 
        ()
 ;
syntax Duration
        = 
        ()
 ;
syntax MultipleTimeBase
        = 
        ANY bases+
 ;
syntax CoincidencePoint
        = 
        ANY coincidenceInstants+
 ;
syntax MultipleInterval
        = 
        ANY first+ ANY last+
 ;
syntax MultipleTimeValue
        = 
        ANY values+
 ;
syntax MetricTimeValue
        = 
        ()
 ;
syntax DiscreteTimeValue
        = 
        ANY denotedInstant+ ANY ref
 ;
syntax MetricTimeInterval
        = 
        ()
 ;
syntax DiscreteTimeInterval
        = 
        ANY endValues ANY denotedInterval+
 ;
syntax SimultaneousEventOccurrence
        = 
        ANY at ANY occurence
 ;
syntax TimedEvent
        = 
        ANY timestamp+
 ;
syntax TimedEventOccurence
        = 
        ANY at ANY timestamp
 ;
syntax TimedAction
        = 
        ANY duration+ ANY start+ ANY end+
 ;
syntax Delay
        = 
        ()
 ;
syntax TimingMechanism
        = 
        ANY stability ANY drift ANY skew ANY origin ANY resolution ANY refClock ANY state
 ;
syntax Clock
        = 
        ANY accuracy ANY offset ANY generatedInterrupt+
 ;
syntax Timer
        = 
        ANY isPeriodic ANY duration ANY genratedTimeOuts+
 ;
syntax TimeOut
        = 
        ()
 ;
syntax ClockInterrupt
        = 
        ()
 ;
syntax System
        = 
        ANY dimension+
 ;
syntax Model
        = 
        ANY ownes+
 ;
syntax AnnotatedModel
        = 
        ANY conformsTo+ ANY import+
 ;
syntax ModelElement
        = 
        owner: ANY
 ;
syntax AnnotatedModelElement
        = 
        ANY annotation+
 ;
syntax NFP
        = 
        ANY measurementQuantity ANY storedBy+ ANY groupedBy
 ;
syntax NFPLibrary
        = 
        ANY refersTo+ ANY usedNFP+
 ;
syntax NFPCategory
        = 
        ANY setOf+ ANY ownes+ ANY owner
 ;
syntax ModelingConcern
        = 
        ANY relevantQuantity+ ANY annotedModel
 ;
syntax AnalysisConcern
        = 
        ()
 ;
syntax DesignConcern
        = 
        ()
 ;
syntax Quantity
        = 
        ()
 ;
syntax BasicQuantity
        = 
        ()
 ;
syntax DerivedQuantity
        = 
        ()
 ;
syntax QualitativeNFP
        = 
        ANY parameter+
 ;
syntax QuantitativeNFP
        = 
        ANY sampleSet+ ANY measure+
 ;
syntax Realization
        = 
        ANY function+ ANY owner
 ;
syntax Measure
        = 
        ANY appliesTo+ ANY owner
 ;
syntax ComplexNFP
        = 
        ANY parent+ ANY child+ ANY ownes+
 ;
syntax BasicNFP
        = 
        ANY statisticalQualifier ANY directon ANY typedBy ANY valuedBy+ ANY dimensionOf+
 ;
syntax NFPType
        = 
        ANY valueSpecificationLanguage ANY source ANY constrainedSpec+
 ;
syntax NFPInstantType
        = 
        ANY value ANY unit
 ;
syntax NFPurationType
        = 
        ANY value ANY unit
 ;
syntax NFPRateType
        = 
        ANY value ANY unit
 ;
syntax NFPProbabilityType
        = 
        ANY value ANY unit
 ;
syntax NFPSizeType
        = 
        ANY value ANY unit
 ;
syntax NFPValueSpecification
        = 
        ANY constrainedBy+ ANY expression
 ;
syntax NFPConstant
        = 
        ownerList: ANY
 ;
syntax NFPListConstant
        = 
        ANY listElements+
 ;
syntax NFPStringConstant
        = 
        body: ANY
 ;
syntax NFPIntegerConstant
        = 
        body: ANY
 ;
syntax NFPRealConstant
        = 
        ANY bodyBeforeComa ANY bodyAfterComa
 ;
syntax NFPBooleanConstant
        = 
        body: ANY
 ;
syntax NFPVariable
        = 
        varName: ANY
 ;
syntax NFPExpression
        = 
        ANY body+ ANY operand+
 ;
syntax SourceKinds
        = est: ()
        | meas: ()
        | req: ()
        | implicit: ()
        | calc: ()
 ;
syntax DirectionKinds
        = increasing: ()
        | decreasing: ()
        | undefined: ()
 ;
syntax StatisticalQualifierKinds
        = max: ()
        | min: ()
        | range: ()
        | mean: ()
        | variance: ()
        | standardDeviation: ()
        | percentil: ()
        | frequency: ()
        | moment: ()
        | distribution: ()
        | instantaneous: ()
 ;
syntax InstantUnitKinds
        = TAI: ()
        | UT0: ()
        | UT1: ()
        | UTC: ()
        | TT: ()
        | TDB: ()
        | TCG: ()
        | TCB: ()
        | Sideral: ()
        | Local: ()
 ;
syntax DurationUnitKinds
        = ns: ()
        | us: ()
        | ms: ()
        | s: ()
        | min: ()
        | hrs: ()
        | dys: ()
        | wks: ()
        | mos: ()
        | yrs: ()
 ;
syntax RateUnitKinds
        = kbs: ()
        | MIPS: ()
 ;
syntax ProbabilityUnitKinds
        = us: ()
        | s: ()
 ;
syntax SizeUnitKinds
        = bits: ()
        | bytes: ()
        | Mb: ()
        | MB: ()
 ;
syntax Classifier
        = 
        ()
 ;
syntax ResourceClassifier
        = 
        ()
 ;
syntax ResourceServiceClassifier
        = 
        ()
 ;
syntax InstanceSpecification
        = 
        ()
 ;
syntax ResourceInstanceSpecification
        = 
        ()
 ;
syntax ResourceServiceInstanceSpecification
        = 
        ()
 ;
syntax Hardware
        = 
        ANY owner ANY containH+ ANY containHL+ ANY containHE+ ANY deploymentConfiguration+
 ;
syntax HardwareLibrary
        = 
        owner: ANY
 ;
syntax HardwareEntity
        = 
        owner: ANY
 ;
syntax HardwareDeployment
        = 
        ANY owner ANY contain+
 ;
syntax HardwareEntityInstance
        = 
        owner: ANY
 ;
syntax ECUInstance
        = 
        ANY composedOf+
 ;
syntax ChannelInstance
        = 
        gateInstances: ANY
 ;
syntax ECUGateInstance
        = 
        channel: ANY
 ;
syntax ECU
        = 
        ANY contain+
 ;
syntax ECUGate
        = 
        ANY owner ANY kindOf
 ;
syntax Channel
        = 
        specify: ANY
 ;
syntax AnalysisContext
        = 
        ANY global+ ANY workload ANY behavior ANY usedResources+
 ;
syntax Workload
        = 
        ANY transaction+
 ;
syntax Transaction
        = 
        ANY workload+ ANY trigger+ ANY response
 ;
syntax Trigger
        = 
        ANY arrivalPattern ANY effect+
 ;
syntax Response
        = 
        ANY efficiency ANY endToEndLatency ANY cause+ ANY behavior+
 ;
syntax Behavior
        = 
        ANY scenario+
 ;
syntax Scenario
        = 
        ANY behavior+ ANY scenarionLatency+ ANY steps+ ANY root ANY endToEndResponse
 ;
syntax Step
        = 
        ANY predecessor+ ANY successor+ ANY stepLatency+ ANY usedResourceService+
 ;
syntax Resource
        = 
        ()
 ;
syntax BasicResource
        = 
        ()
 ;
syntax StructuredResource
        = 
        basicResource: ANY
 ;
syntax ProcessingResource
        = 
        ANY links+ ANY components+
 ;
syntax Link
        = 
        ()
 ;
syntax ProcessResource
        = 
        ANY components+
 ;
syntax Component
        = 
        ANY process+ ANY interfaces+
 ;
syntax StructuredComponent
        = 
        ()
 ;
syntax BasicComponent
        = 
        ()
 ;
syntax LogicalResource
        = 
        ()
 ;
syntax ServerResource
        = 
        ANY services+
 ;
syntax Service
        = 
        ANY resource ANY interface
 ;
syntax Interface
        = 
        service: ANY
 ;
