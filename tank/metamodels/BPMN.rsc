@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BPMN

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax Activity
        = SubProcess
        | MessagingEdge orderedMessages+ MessagingEdge incomingMessages+ MessagingEdge outgoingMessages+ Group groups+ ActivityType activityType SubProcess eventHandlerFor Lane lane Boolean looping
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
        = BpmnDiagram
        | Graph
        | Artifact artifacts+
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
        Association associations+ ArtifactsContainer artifactsContainer
 ;
syntax DirectionType
        = Both: ()
        | From: ()
        | To: ()
        | None: ()
 ;
syntax Graph
        = Pool
        | SubProcess
        | Vertex vertices+ SequenceEdge sequenceEdges+
 ;
syntax Group
        = 
        Activity activities+
 ;
syntax Identifiable
        = IdentifiableNode
        | Artifact
        | BpmnDiagram
        | Lane
        | MessagingEdge
        | SequenceEdge
        | iD: ID
 ;
syntax IdentifiableNode
        = Vertex
        | Graph
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
        | Activity
        | Artifact
        | Lane
        | MessagingEdge
        | Pool
        | SequenceEdge
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
        Association associations+ ArtifactsContainer artifactsContainer
 ;
syntax Vertex
        = Activity
        | SequenceEdge outgoingEdges+ SequenceEdge incomingEdges+ Graph graph
 ;
