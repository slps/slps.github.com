@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module AnyLogic

syntax ModelElement
        = 
        ANY id ANY name ANY excludeFromBuild
 ;
syntax VisualModelElement
        = 
        ANY position ANY label ANY publicFlag ANY presentationFlag ANY showLabel
 ;
syntax Point
        = 
        ANY x ANY y
 ;
syntax Model
        = 
        ANY engineVersion ANY javaPackageName ANY activeObjectClasses+ ANY experiments+
 ;
syntax ActiveObjectClass
        = 
        ANY clientAreaTopLeft ANY presentationTopGroupPersistent ANY iconTopGroupPersistent ANY generic ANY genericParameters ANY agent ANY environmentDefinesInitialLocation ANY connectors+ ANY embeddedObjects+ ANY shapes+
 ;
syntax Connector
        = 
        ANY sourceEmbeddedObject ANY sourceConnectableName ANY targetEmbeddedObject ANY targetConnectableName ANY points+
 ;
syntax EmbeddedObject
        = 
        ANY presentation ANY activeObjectClass ANY genericParametersSubstitute ANY parameters+
 ;
syntax ActiveObjectClassRef
        = 
        ANY packageName ANY className
 ;
syntax Parameter
        = 
        ANY name ANY value
 ;
syntax Shape
        = 
        ANY asObject ANY embeddedIcon ANY rotation
 ;
syntax EmbeddedObjectPresentation
        = 
        ()
 ;
syntax Experiment
        = 
        ()
 ;
syntax SimulationExperiment
        = 
        ANY activeObjectClass ANY clientAreaTopLeft ANY presentationTopGroupPersistent ANY iconTopGroupPersistent ANY frame ANY commandLineArguments ANY maximumMemory ANY randomSeed ANY seedValue ANY vmArgs ANY absoluteAccuracy ANY relativeAccuracy ANY timeAccuracy ANY fixedTimeStep ANY shapes+ ANY controls+ ANY parameters+ ANY enableAdaptiveFrameManagement ANY enableAntiAliasing ANY enablePanning ANY enableZoom ANY executionMode ANY cpuRatio ANY title ANY framesPerSecond ANY realTimeScale ANY uiProperties+ ANY useCalendar ANY stopOption ANY initialDate ANY initialTime ANY finalDate ANY finalTime ANY modelTimeUnit
 ;
syntax Control
        = 
        ANY width ANY height ANY asObject ANY embeddedIcon ANY fillColor ANY textColor ANY enableExpression ANY actionCode ANY labelText ANY font
 ;
syntax Button
        = 
        ()
 ;
syntax Frame
        = 
        ANY x ANY y ANY width ANY height
 ;
syntax Text
        = 
        ANY color ANY text ANY font ANY alignment
 ;
syntax Font
        = 
        ANY name ANY size ANY style
 ;
