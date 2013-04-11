@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module AnyLogic

syntax ModelElement
        = VisualModelElement
        | Model
        | ActiveObjectClass
        | Experiment
        | Integer id String name Boolean excludeFromBuild
 ;
syntax VisualModelElement
        = Connector
        | EmbeddedObject
        | Shape
        | Control
        | Point position Point label Boolean publicFlag Boolean presentationFlag Boolean showLabel
 ;
syntax Point
        = 
        Integer x Integer y
 ;
syntax Model
        = 
        Integer engineVersion String javaPackageName ActiveObjectClass activeObjectClasses+ Experiment experiments+
 ;
syntax ActiveObjectClass
        = 
        Point clientAreaTopLeft Boolean presentationTopGroupPersistent Boolean iconTopGroupPersistent Boolean generic String genericParameters Boolean agent Boolean environmentDefinesInitialLocation Connector connectors+ EmbeddedObject embeddedObjects+ Shape shapes+
 ;
syntax Connector
        = 
        EmbeddedObject sourceEmbeddedObject String sourceConnectableName EmbeddedObject targetEmbeddedObject String targetConnectableName Point points+
 ;
syntax EmbeddedObject
        = 
        EmbeddedObjectPresentation presentation ActiveObjectClassRef activeObjectClass String genericParametersSubstitute Parameter parameters+
 ;
syntax ActiveObjectClassRef
        = 
        String packageName String className
 ;
syntax Parameter
        = 
        String name String value
 ;
syntax Shape
        = EmbeddedObjectPresentation
        | Text
        | Boolean asObject Boolean embeddedIcon Double rotation
 ;
syntax EmbeddedObjectPresentation
        = 
        Boolean asObject Boolean embeddedIcon Double rotation
 ;
syntax Experiment
        = 
        SimulationExperiment
 ;
syntax SimulationExperiment
        = 
        ActiveObjectClass activeObjectClass Point clientAreaTopLeft Boolean presentationTopGroupPersistent Boolean iconTopGroupPersistent Frame frame String commandLineArguments Integer maximumMemory Boolean randomSeed Integer seedValue String vmArgs Double absoluteAccuracy Double relativeAccuracy Double timeAccuracy Double fixedTimeStep Shape shapes+ Control controls+ Parameter parameters+ Boolean enableAdaptiveFrameManagement Boolean enableAntiAliasing Boolean enablePanning Boolean enableZoom String executionMode String cpuRatio String title String framesPerSecond String realTimeScale Parameter uiProperties+ Boolean useCalendar String stopOption String initialDate String initialTime String finalDate String finalTime String modelTimeUnit
 ;
syntax Control
        = Button
        | Integer width Integer height Boolean asObject Boolean embeddedIcon Integer fillColor Integer textColor String enableExpression String actionCode String labelText Font font
 ;
syntax Button
        = 
        Integer width Integer height Boolean asObject Boolean embeddedIcon Integer fillColor Integer textColor String enableExpression String actionCode String labelText Font font
 ;
syntax Frame
        = 
        Integer x Integer y Integer width Integer height
 ;
syntax Text
        = 
        Integer color String text Font font String alignment
 ;
syntax Font
        = 
        String name Integer size Integer style
 ;
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
