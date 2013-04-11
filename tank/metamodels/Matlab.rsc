@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Matlab

syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Matlab
        = 
        Model model+
 ;
syntax BlockDefaults
        = Block
        | String blockDefaults Model model
 ;
syntax Model
        = 
        String name Matlab matlab AnnotationDefaults annotationDefaults+ System system+ BlockDefaults blockDefaults+ LineDefaults lineDefaults+ Simulink simulink
 ;
syntax AnnotationDefaults
        = Annotation
        | String annotationDefaults Model model
 ;
syntax LineDefaults
        = Line
        | String lineDefaults Model model
 ;
syntax System
        = 
        String name Block blocks+ Line lines+ Annotation annotations+ Model model Subsystem parentSubsystem
 ;
syntax Subsystem
        = Masked
        | Normal
        | system: System
 ;
syntax Block
        = Subsystem
        | Primitive
        | Reference
        | String name String blockType String description String priority String tag String position System mySystem Port ports+
 ;
syntax Annotation
        = 
        String position String text System system
 ;
syntax Line
        = DirectLine
        | BranchedLine
        | String points String id OutputPort srcPort System system
 ;
syntax DirectLine
        = 
        destPort1: InputPort
 ;
syntax InputPort
        = 
        DirectLine owningDirectLine DirectBranch owningDirectBranch
 ;
syntax Branch
        = DirectBranch
        | NestedBranch
        | String points BranchedLine branchedLine NestedBranch nestedBranch
 ;
syntax BranchedLine
        = 
        Branch branchs+
 ;
syntax Primitive
        = 
        String id Parameter parameters+ Port refPort
 ;
syntax Port
        = InputPort
        | OutputPort
        | String id String number Block portBlock Primitive primitive
 ;
syntax Reference
        = 
        String sourceType String sourceBlock Parameter parameters+
 ;
syntax Masked
        = 
        system: System
 ;
syntax Normal
        = 
        system: System
 ;
syntax Parameter
        = Type
        | Double
        | INteger
        | Enumeration
        | BOolean
        | Text
        | Vector
        | String name Reference le_reference Primitive primitive
 ;
syntax OutputPort
        = 
        owningLine: Line
 ;
syntax Type
        = 
        value: String
 ;
syntax Double
        = 
        value: String
 ;
syntax INteger
        = 
        value: String
 ;
syntax Enumeration
        = 
        value: String
 ;
syntax BOolean
        = 
        value: TrueFalse
 ;
syntax TrueFalse
        = True: ()
        | False: ()
 ;
syntax Text
        = 
        value: String
 ;
syntax Vector
        = 
        value: String
 ;
syntax DirectBranch
        = 
        String id InputPort destPort
 ;
syntax NestedBranch
        = 
        Branch branchs+
 ;
syntax Machine
        = 
        String name String id Event events+ Data data+ Instance instances+ Target targets+ StateFlow stateFlow
 ;
syntax Junction
        = 
        String _id String id String type String position State state Chart chart
 ;
syntax Transition
        = 
        String _id String dataLimites String id String trigger String condition String conditionAction String action Chart chart State state
 ;
syntax Event
        = 
        String name String id String scope String description String trigger Machine machine Chart chart State state
 ;
syntax Data
        = 
        String name String id String scope String description String units String dataType Props props+ State state Chart chart Machine machine
 ;
syntax Instance
        = 
        String _id String id String name Machine machine
 ;
syntax Target
        = 
        String name String id String codeCommand String description String makeCommand String codeFlags String checksumOld Machine machine
 ;
syntax Chart
        = 
        String name String id String _id String decomposotion String updateMethode String sampleTime Junction junctions+ Event events+ Transition transitions+ Data data+ State states+
 ;
syntax State
        = 
        String name String id String _id String type String entryAction String exitAction String duringAction String eventActions String decomposition String position Junction junctions+ Event events+ Transition transitions+ Data data+ Chart chart State states+
 ;
syntax Props
        = 
        String initialValue Array arrays+ Range ranges+ Data data
 ;
syntax Range
        = 
        String maximum String minimum Props props
 ;
syntax Array
        = 
        String firstIndex String size Props props
 ;
syntax StateFlow
        = 
        String stateFlow Machine machines+ Simulink simulink
 ;
syntax TransitionTerminal
        = 
        _id: String
 ;
syntax Simulink
        = 
        String simulink StateFlow stateFlows+ Model models+
 ;
