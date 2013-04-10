@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BPMN

syntax Activity
        = 
        MessagingEdge orderedMessages+ MessagingEdge incomingMessages+ MessagingEdge outgoingMessages+ Group groups+ ActivityType activityType SubProcess eventHandlerFor Lane lane Boolean looping
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
        = DataObject
        | Group
        | TextAnnotation
        | Association associations+ ArtifactsContainer artifactsContainer
 ;
syntax ArtifactsContainer
        = 
        Artifact artifacts+
 ;
syntax Association
        = 
        DirectionType direction Artifact source IdentifiableNode target
 ;
syntax BpmnDiagram
        = 
        Pool pools+ MessagingEdge messages+ String author String title
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
        Vertex vertices+ SequenceEdge sequenceEdges+
 ;
syntax Group
        = 
        Activity activities+
 ;
syntax Identifiable
        = IdentifiableNode
        | iD: ID
 ;
syntax IdentifiableNode
        = Vertex
        | Association associations+
 ;
syntax Lane
        = 
        Activity activities+ Pool pool
 ;
syntax MessagingEdge
        = 
        BpmnDiagram bpmnDiagram Activity source Activity target
 ;
syntax NamedBpmnObject
        = ArtifactsContainer
        | String documentation String name String ncname
 ;
syntax Pool
        = 
        Lane lanes+ BpmnDiagram bpmnDiagram
 ;
syntax SequenceEdge
        = 
        Graph graph Boolean isDefault Vertex source Vertex target
 ;
syntax SubProcess
        = 
        Activity eventHandlers+ Boolean isTransaction
 ;
syntax TextAnnotation
        = 
        ()
 ;
syntax Vertex
        = 
        SequenceEdge outgoingEdges+ SequenceEdge incomingEdges+ Graph graph
 ;
