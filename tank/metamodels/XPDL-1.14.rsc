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
        = 
        ()
 ;
syntax Package
        = 
        ANY script ANY externalPackages+ ANY typeDeclarations+ ANY participants+ ANY applications+ ANY dataFields+ ANY pools+ ANY messageFlows+ ANY associations+ ANY artifacts+ ANY workflowProcesses+
 ;
syntax MessageFlow
        = 
        ANY targetActivity ANY sourceActivity ANY targetPool ANY sourcePool ANY object
 ;
syntax Association
        = 
        ANY associationDirection ANY targetArtifact ANY sourceArtifact ANY targetPool ANY sourcePool ANY targetActivity ANY sourceActivity ANY object
 ;
syntax Pool
        = 
        ANY orientation ANY boundaryVisible ANY lanes+ ANY object ANY participant ANY process
 ;
syntax Lane
        = 
        ANY object ANY parentLane ANY parentPool
 ;
syntax Participant
        = 
        ANY id ANY name
 ;
syntax Artifact
        = 
        ANY textAnnotation ANY group ANY object ANY dataObject
 ;
syntax DataObject
        = 
        ANY state ANY requiredForStart ANY producedAtCompletion ANY dataFields+
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
        ANY id ANY name
 ;
syntax Application
        = 
        ANY id ANY name
 ;
syntax ParametrizedApplication
        = 
        ()
 ;
syntax ReferencedApplication
        = 
        externalReference: ANY
 ;
syntax Activity
        = 
        ANY isStartActivity ANY status ANY startMode ANY finishMode ANY startQuantity ANY isATransaction ANY dataFields+ ANY object
 ;
syntax Task
        = 
        ()
 ;
syntax TaskService
        = 
        implementation: ANY
 ;
syntax TaskReceive
        = 
        ANY instantiate ANY implementation
 ;
syntax TaskManual
        = 
        
 ;
syntax TaskReference
        = 
        taskRef: ANY
 ;
syntax TaskScript
        = 
        script: ANY
 ;
syntax TaskSend
        = 
        implementation: ANY
 ;
syntax TaskUser
        = 
        implementation: ANY
 ;
syntax TaskApplication
        = 
        packageRef: ANY
 ;
syntax Route
        = 
        ANY gatewayType ANY instantiate ANY markerVisiable
 ;
syntax SubFlow
        = 
        ANY execution ANY instanceDataField ANY packageRef ANY startActivitySet ANY startActivity
 ;
syntax BlockActivity
        = 
        ANY activitySet ANY startActivity
 ;
syntax Event
        = 
        ()
 ;
syntax Trigger
        = 
        ()
 ;
syntax ResultCompensation
        = 
        activity: ANY
 ;
syntax ResultError
        = 
        errorCode: ANY
 ;
syntax ResultMultiple
        = 
        
 ;
syntax TriggerResultLink
        = 
        processRef: ANY
 ;
syntax TriggerResultMessage
        = 
        
 ;
syntax TriggerIntermediateMultiple
        = 
        
 ;
syntax TriggerMultiple
        = 
        
 ;
syntax TriggerRule
        = 
        ruleName: ANY
 ;
syntax TriggerTimer
        = 
        ANY timeDate ANY timeCycle
 ;
syntax StartEvent
        = 
        ANY triggerKind ANY implementation ANY trigger
 ;
syntax IntermediateEvent
        = 
        target: ANY
 ;
syntax EndEvent
        = 
        ANY triggerKind ANY implementation ANY trigger
 ;
syntax Gateway
        = 
        ()
 ;
syntax Process
        = 
        ANY accessLevel ANY processType ANY status ANY suppressJoinFailure ANY enableInstanceCompensation ANY adHoc ANY adHocOrdering ANY adHocCompletionCondition ANY participant+ ANY applications+ ANY dataField ANY activitySets+ ANY activities+ ANY transitions+ ANY object ANY defaultStartActivitySet ANY defaultStartActivity
 ;
syntax Transition
        = 
        ANY quantity ANY object ANY to ANY from
 ;
syntax ActivitySet
        = 
        ANY adHoc ANY adHocOrdering ANY adHocCompletionCondition ANY defaultStartActivity ANY activities+ ANY transitions+ ANY object
 ;
syntax ExternalReference
        = 
        ANY xref ANY location ANY namespace
 ;
syntax Object
        = 
        ANY categories+
 ;
syntax ExternalPackage
        = 
        href: ANY
 ;
syntax Category
        = 
        ANY id ANY name
 ;
syntax DataField
        = 
        ANY isArray ANY correlation ANY dataType
 ;
syntax Script
        = 
        ANY type ANY version ANY grammar
 ;
