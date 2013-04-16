@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ProMarte

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax TimeBase
        = SingleTimeBase
        | DiscreteTimeBase
        | MultipleTimeBase
 ;
syntax Instant
        = SingleInstant
        | DiscreteInstant
        | CoincidencePoint
 ;
syntax TimeValue
        = SingleTimeValue
        | MultipleTimeValue
        | DiscreteTimeValue
 ;
syntax TimeInterval
        = SingleTimeInterval
        | DiscreteTimeInterval
 ;
syntax Interval
        = SingleInterval
        | MultipleInterval
 ;
syntax SingleTimeBase
        = 
        SingleTimeValue currentValue SingleTimeValue maximumValue SingleInstant currentInstant
 ;
syntax SingleInstant
        = 
        coPoint: CoincidencePoint
 ;
syntax SingleInterval
        = 
        SingleInstant first SingleInstant last SingleInstant members+
 ;
syntax SingleTimeValue
        = 
        Instant denotedInstant+ TimeBase ref
 ;
syntax SingleTimeInterval
        = 
        SingleTimeValue start SingleTimeValue end
 ;
syntax DiscreteTimeBase
        = Clock
        | refEvent: Event
 ;
syntax DiscreteInstant
        = 
        DiscreteInstant next DiscreteInstant previous EventOccurence refOcc
 ;
syntax EventOccurence
        = 
        TimedEventOccurence
 ;
syntax MultipleTimeBase
        = 
        SingleTimeBase bases+
 ;
syntax CoincidencePoint
        = 
        SingleInstant coincidenceInstants+
 ;
syntax MultipleInterval
        = 
        CoincidencePoint first+ CoincidencePoint last+
 ;
syntax MultipleTimeValue
        = 
        SingleTimeValue values+
 ;
syntax MetricTimeValue
        = 
        ()
 ;
syntax DiscreteTimeValue
        = 
        MetricTimeValue
 ;
syntax MetricTimeInterval
        = 
        ()
 ;
syntax DiscreteTimeInterval
        = 
        MetricTimeInterval
 ;
syntax SimultaneousEventOccurrence
        = 
        Instant at TimedEventOccurence occurence
 ;
syntax TimedEvent
        = 
        MetricTimeValue timestamp+
 ;
syntax TimedEventOccurence
        = 
        Instant at TimeValue timestamp
 ;
syntax TimedAction
        = Delay
        | TimeInterval duration+ TimeValue start+ TimeValue end+
 ;
syntax Delay
        = 
        TimeInterval duration+ TimeValue start+ TimeValue end+
 ;
syntax TimingMechanism
        = Timer
        | Clock
        | String stability String drift String skew TimedEvent origin MetricTimeInterval resolution Clock refClock String state
 ;
syntax Clock
        = 
        MetricTimeInterval accuracy MetricTimeInterval offset ClockInterrupt generatedInterrupt+
 ;
syntax Timer
        = 
        Boolean isPeriodic MetricTimeValue duration TimeOut genratedTimeOuts+
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
        Quantity dimension+
 ;
syntax Model
        = AnnotatedModel
        | ModelElement ownes+
 ;
syntax AnnotatedModel
        = 
        ModelingConcern conformsTo+ NFPLibrary import+
 ;
syntax ModelElement
        = AnnotatedModelElement
        | owner: Model
 ;
syntax AnnotatedModelElement
        = Classifier
        | InstanceSpecification
        | NFP annotation+
 ;
syntax NFP
        = QualitativeNFP
        | QuantitativeNFP
        | ComplexNFP
        | Quantity measurementQuantity NFPLibrary storedBy+ NFPCategory groupedBy
 ;
syntax NFPLibrary
        = 
        NFPLibrary refersTo+ NFP usedNFP+
 ;
syntax NFPCategory
        = 
        NFP setOf+ NFPCategory ownes+ NFPCategory owner
 ;
syntax ModelingConcern
        = AnalysisConcern
        | DesignConcern
        | Quantity relevantQuantity+ AnnotatedModel annotedModel
 ;
syntax AnalysisConcern
        = 
        Quantity relevantQuantity+ AnnotatedModel annotedModel
 ;
syntax DesignConcern
        = 
        Quantity relevantQuantity+ AnnotatedModel annotedModel
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
        NFP parameter+
 ;
syntax QuantitativeNFP
        = 
        Realization sampleSet+ Measure measure+
 ;
syntax Realization
        = 
        Measure function+ QuantitativeNFP owner
 ;
syntax Measure
        = 
        Realization appliesTo+ QuantitativeNFP owner
 ;
syntax ComplexNFP
        = 
        ComplexNFP parent+ ComplexNFP child+ BasicNFP ownes+
 ;
syntax BasicNFP
        = 
        StatisticalQualifierKinds statisticalQualifier DirectionKinds directon NFPType typedBy NFPValueSpecification valuedBy+ ComplexNFP dimensionOf+
 ;
syntax NFPType
        = NFPInstantType
        | NFPurationType
        | NFPRateType
        | NFPProbabilityType
        | NFPSizeType
        | String valueSpecificationLanguage SourceKinds source NFPValueSpecification constrainedSpec+
 ;
syntax NFPInstantType
        = 
        String value InstantUnitKinds unit
 ;
syntax NFPurationType
        = 
        String value DurationUnitKinds unit
 ;
syntax NFPRateType
        = 
        String value RateUnitKinds unit
 ;
syntax NFPProbabilityType
        = 
        String value ProbabilityUnitKinds unit
 ;
syntax NFPSizeType
        = 
        String value SizeUnitKinds unit
 ;
syntax NFPValueSpecification
        = NFPConstant
        | NFPVariable
        | NFPExpression
        | NFPType constrainedBy+ NFPExpression expression
 ;
syntax NFPConstant
        = NFPListConstant
        | NFPStringConstant
        | NFPIntegerConstant
        | NFPRealConstant
        | NFPBooleanConstant
        | ownerList: NFPListConstant
 ;
syntax NFPListConstant
        = 
        NFPConstant listElements+
 ;
syntax NFPStringConstant
        = 
        body: String
 ;
syntax NFPIntegerConstant
        = 
        body: Integer
 ;
syntax NFPRealConstant
        = 
        Integer bodyBeforeComa Integer bodyAfterComa
 ;
syntax NFPBooleanConstant
        = 
        body: Boolean
 ;
syntax NFPVariable
        = 
        varName: String
 ;
syntax NFPExpression
        = 
        String body+ NFPValueSpecification operand+
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
        = ResourceClassifier
        | ResourceServiceClassifier
 ;
syntax InstanceSpecification
        = ResourceInstanceSpecification
        | ResourceServiceInstanceSpecification
 ;
syntax Hardware
        = 
        Hardware owner Hardware containH+ HardwareLibrary containHL+ HardwareEntity containHE+ HardwareDeployment deploymentConfiguration+
 ;
syntax HardwareLibrary
        = 
        owner: Hardware
 ;
syntax HardwareEntity
        = ECU
        | owner: Hardware
 ;
syntax HardwareDeployment
        = 
        Hardware owner HardwareEntityInstance contain+
 ;
syntax HardwareEntityInstance
        = ECUInstance
        | ChannelInstance
        | owner: HardwareDeployment
 ;
syntax ECUInstance
        = 
        ECUGateInstance composedOf+
 ;
syntax ChannelInstance
        = 
        gateInstances: ECUGateInstance
 ;
syntax ECUGateInstance
        = 
        channel: ChannelInstance
 ;
syntax ECU
        = 
        ECUGate contain+
 ;
syntax ECUGate
        = 
        ECU owner Channel kindOf
 ;
syntax Channel
        = 
        specify: ECUGate
 ;
syntax AnalysisContext
        = 
        ComplexNFP global+ Workload workload Behavior behavior Resource usedResources+
 ;
syntax Workload
        = 
        Transaction transaction+
 ;
syntax Transaction
        = 
        Workload workload+ Trigger trigger+ Response response
 ;
syntax Trigger
        = 
        ComplexNFP arrivalPattern Response effect+
 ;
syntax Response
        = 
        ComplexNFP efficiency ComplexNFP endToEndLatency Trigger cause+ Scenario behavior+
 ;
syntax Behavior
        = 
        Scenario scenario+
 ;
syntax Scenario
        = TimedAction
        | Step
        | Behavior behavior+ ComplexNFP scenarionLatency+ Step steps+ Step root Response endToEndResponse
 ;
syntax Step
        = 
        Step predecessor+ Step successor+ ComplexNFP stepLatency+ Service usedResourceService+
 ;
syntax Resource
        = BasicResource
        | StructuredResource
 ;
syntax BasicResource
        = 
        ()
 ;
syntax StructuredResource
        = ProcessingResource
        | ProcessResource
        | LogicalResource
        | ServerResource
        | basicResource: BasicResource
 ;
syntax ProcessingResource
        = 
        Link links+ Component components+
 ;
syntax Link
        = 
        ()
 ;
syntax ProcessResource
        = 
        Component components+
 ;
syntax Component
        = StructuredComponent
        | BasicComponent
        | ProcessResource process+ Interface interfaces+
 ;
syntax StructuredComponent
        = 
        ProcessResource process+ Interface interfaces+
 ;
syntax BasicComponent
        = 
        ProcessResource process+ Interface interfaces+
 ;
syntax LogicalResource
        = 
        basicResource: BasicResource
 ;
syntax ServerResource
        = 
        Service services+
 ;
syntax Service
        = 
        ServerResource resource Interface interface
 ;
syntax Interface
        = 
        service: Service
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
