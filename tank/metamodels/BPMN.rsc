@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BPMN

syntax Activity
        = 
        ANY orderedMessages+ ANY incomingMessages+ ANY outgoingMessages+ ANY groups+ ANY activityType ANY eventHandlerFor ANY lane ANY looping
 ;
syntax ActivityType
        = SubProcess: ()
        | EventEndMultiple: ()
        | EventEndMessage: ()
        | EventIntermediateMessage: ()
        | EventStartMultiple: ()
        | EventIntermediateMultiple: ()
        | GatewayParallel: ()
        | EventStartTimer: ()
        | EventStartEmpty: ()
        | EventIntermediateCancel: ()
        | EventEndError: ()
        | EventStartRule: ()
        | EventEndTerminate: ()
        | EventStartLink: ()
        | EventIntermediateLink: ()
        | EventEndCancel: ()
        | EventEndLink: ()
        | EventIntermediateEmpty: ()
        | EventIntermediateCompensation: ()
        | Task: ()
        | GatewayDataBasedExclusive: ()
        | GatewayComplex: ()
        | EventEndEmpty: ()
        | EventIntermediateError: ()
        | EventIntermediateTimer: ()
        | EventEndCompensation: ()
        | EventStartMessage: ()
        | GatewayDataBasedInclusive: ()
        | GatewayEventBasedExclusive: ()
        | EventIntermediateRule: ()
 ;
syntax Artifact
        = 
        ANY associations+ ANY artifactsContainer
 ;
syntax ArtifactsContainer
        = 
        ANY artifacts+
 ;
syntax Association
        = 
        ANY direction ANY source ANY target
 ;
syntax BpmnDiagram
        = 
        ANY pools+ ANY messages+ ANY author ANY title
 ;
syntax DataObject
        = 
        ()
 ;
syntax DirectionType
        = Both: ()
        | From: ()
        | To: ()
        | None: ()
 ;
syntax Graph
        = 
        ANY vertices+ ANY sequenceEdges+
 ;
syntax Group
        = 
        ANY activities+
 ;
syntax Identifiable
        = 
        iD: ANY
 ;
syntax IdentifiableNode
        = 
        ANY associations+
 ;
syntax Lane
        = 
        ANY activities+ ANY pool
 ;
syntax MessagingEdge
        = 
        ANY bpmnDiagram ANY source ANY target
 ;
syntax NamedBpmnObject
        = 
        ANY documentation ANY name ANY ncname
 ;
syntax Pool
        = 
        ANY lanes+ ANY bpmnDiagram
 ;
syntax SequenceEdge
        = 
        ANY graph ANY isDefault ANY source ANY target
 ;
syntax SubProcess
        = 
        ANY eventHandlers+ ANY isTransaction
 ;
syntax TextAnnotation
        = 
        ()
 ;
syntax Vertex
        = 
        ANY outgoingEdges+ ANY incomingEdges+ ANY graph
 ;
