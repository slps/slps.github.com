@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XPDL_1_14

syntax AssociationDirectionKind
        = None: ()
        | To: ()
        | From: ()
        | Both: ()
 ;
syntax OrientationKind
        = Horizontal: ()
        | Vertical: ()
 ;
syntax AccessLevelKind
        = Public: ()
        | Private: ()
 ;
syntax ProcessTypeKind
        = None: ()
        | Private: ()
        | Abstract: ()
        | Collaboration: ()
 ;
syntax StatusKind
        = None: ()
        | Ready: ()
        | Active: ()
        | Cancelled: ()
        | Aborting: ()
        | Aborted: ()
        | Completing: ()
        | Completed: ()
 ;
syntax AdHocOrderingKind
        = Sequential: ()
        | Parallel: ()
 ;
syntax ModeKind
        = Automatic: ()
        | Manual: ()
 ;
syntax GatewayTypeKind
        = Xor: ()
        | Or: ()
        | Complex: ()
        | And: ()
 ;
syntax ExecutionKind
        = Asynchr: ()
        | Synchr: ()
 ;
syntax TriggerKind
        = None: ()
        | Message: ()
        | Timer: ()
        | Rule: ()
        | Link: ()
        | Error: ()
        | Cancel: ()
        | Compensation: ()
        | Terminate: ()
        | Multiple: ()
 ;
syntax ImplementationKind
        = WebService: ()
        | Other: ()
        | Unspecified: ()
 ;
syntax Element
        = Package
        | MessageFlow
        | Association
        | Pool
        | Lane
        | Participant
        | Artifact
        | TypeDeclaration
        | Application
        | Activity
        | Process
        | Transition
        | ActivitySet
        | Object
        | ExternalPackage
        | Category
        | DataField
 ;
syntax Package
        = 
        Script script ExternalPackage externalPackages+ TypeDeclaration typeDeclarations+ Participant participants+ Application applications+ DataField dataFields+ Pool pools+ MessageFlow messageFlows+ Association associations+ Artifact artifacts+ Process workflowProcesses+
 ;
syntax MessageFlow
        = 
        Activity targetActivity Activity sourceActivity Pool targetPool Pool sourcePool Object object
 ;
syntax Association
        = 
        AssociationDirectionKind associationDirection Artifact targetArtifact Artifact sourceArtifact Pool targetPool Pool sourcePool Activity targetActivity Activity sourceActivity Object object
 ;
syntax Pool
        = 
        OrientationKind orientation Boolean boundaryVisible Lane lanes+ Object object Participant participant Process process
 ;
syntax Lane
        = 
        Object object Lane parentLane Pool parentPool
 ;
syntax Participant
        = 
        String id String name
 ;
syntax Artifact
        = DataObject
        | Group
        | Annotation
        | String textAnnotation String group Object object DataObject dataObject
 ;
syntax DataObject
        = 
        String state Boolean requiredForStart Boolean producedAtCompletion DataField dataFields+
 ;
syntax Group
        = 
        ()
 ;
syntax Annotation
        = 
        ()
 ;
syntax TypeDeclaration
        = 
        String id String name
 ;
syntax Application
        = ParametrizedApplication
        | ReferencedApplication
 ;
syntax ParametrizedApplication
        = 
        ()
 ;
syntax ReferencedApplication
        = 
        externalReference: ExternalReference
 ;
syntax Activity
        = Task
        | Route
        | SubFlow
        | BlockActivity
        | Event
        | Boolean isStartActivity StatusKind status ModeKind startMode ModeKind finishMode Integer startQuantity Boolean isATransaction DataField dataFields+ Object object
 ;
syntax Task
        = TaskService
        | TaskReceive
        | TaskManual
        | TaskReference
        | TaskScript
        | TaskSend
        | TaskUser
        | TaskApplication
 ;
syntax TaskService
        = 
        implementation: ImplementationKind
 ;
syntax TaskReceive
        = 
        Boolean instantiate ImplementationKind implementation
 ;
syntax TaskManual
        = 
        ()
 ;
syntax TaskReference
        = 
        taskRef: Task
 ;
syntax TaskScript
        = 
        script: Script
 ;
syntax TaskSend
        = 
        implementation: ImplementationKind
 ;
syntax TaskUser
        = 
        implementation: ImplementationKind
 ;
syntax TaskApplication
        = 
        packageRef: Package
 ;
syntax Route
        = Gateway
        | GatewayTypeKind gatewayType Boolean instantiate Boolean markerVisiable
 ;
syntax SubFlow
        = 
        ExecutionKind execution String instanceDataField Package packageRef ActivitySet startActivitySet Activity startActivity
 ;
syntax BlockActivity
        = 
        ActivitySet activitySet Activity startActivity
 ;
syntax Event
        = StartEvent
        | IntermediateEvent
        | EndEvent
 ;
syntax Trigger
        = ResultCompensation
        | ResultError
        | ResultMultiple
        | TriggerResultLink
        | TriggerResultMessage
        | TriggerIntermediateMultiple
        | TriggerMultiple
        | TriggerRule
        | TriggerTimer
 ;
syntax ResultCompensation
        = 
        activity: Activity
 ;
syntax ResultError
        = 
        errorCode: String
 ;
syntax ResultMultiple
        = 
        ()
 ;
syntax TriggerResultLink
        = 
        processRef: Process
 ;
syntax TriggerResultMessage
        = 
        ()
 ;
syntax TriggerIntermediateMultiple
        = 
        ()
 ;
syntax TriggerMultiple
        = 
        ()
 ;
syntax TriggerRule
        = 
        ruleName: String
 ;
syntax TriggerTimer
        = 
        String timeDate String timeCycle
 ;
syntax StartEvent
        = 
        TriggerKind triggerKind ImplementationKind implementation Trigger trigger
 ;
syntax IntermediateEvent
        = 
        target: Activity
 ;
syntax EndEvent
        = 
        TriggerKind triggerKind ImplementationKind implementation Trigger trigger
 ;
syntax Gateway
        = 
        ()
 ;
syntax Process
        = 
        AccessLevelKind accessLevel ProcessTypeKind processType StatusKind status Boolean suppressJoinFailure Boolean enableInstanceCompensation Boolean adHoc AdHocOrderingKind adHocOrdering String adHocCompletionCondition Participant participant+ Application applications+ DataField dataField ActivitySet activitySets+ Activity activities+ Transition transitions+ Object object ActivitySet defaultStartActivitySet Activity defaultStartActivity
 ;
syntax Transition
        = 
        Integer quantity Object object Activity to Activity from
 ;
syntax ActivitySet
        = 
        Boolean adHoc AdHocOrderingKind adHocOrdering String adHocCompletionCondition Activity defaultStartActivity Activity activities+ Transition transitions+ Object object
 ;
syntax ExternalReference
        = 
        String xref String location String namespace
 ;
syntax Object
        = 
        Category categories+
 ;
syntax ExternalPackage
        = 
        href: String
 ;
syntax Category
        = 
        String id String name
 ;
syntax DataField
        = 
        Boolean isArray Boolean correlation TypeDeclaration dataType
 ;
syntax Script
        = 
        String type String version String grammar
 ;
