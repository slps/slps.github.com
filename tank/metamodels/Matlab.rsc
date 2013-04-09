@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Matlab

syntax Matlab
        = 
        ANY model+
 ;
syntax BlockDefaults
        = 
        ANY blockDefaults ANY model
 ;
syntax Model
        = 
        ANY name ANY matlab ANY annotationDefaults+ ANY system+ ANY blockDefaults+ ANY lineDefaults+ ANY simulink
 ;
syntax AnnotationDefaults
        = 
        ANY annotationDefaults ANY model
 ;
syntax LineDefaults
        = 
        ANY lineDefaults ANY model
 ;
syntax System
        = 
        ANY name ANY blocks+ ANY lines+ ANY annotations+ ANY model ANY parentSubsystem
 ;
syntax Subsystem
        = 
        system: ANY
 ;
syntax Block
        = 
        ANY name ANY blockType ANY description ANY priority ANY tag ANY position ANY mySystem ANY ports+
 ;
syntax Annotation
        = 
        ANY position ANY text ANY system
 ;
syntax Line
        = 
        ANY points ANY id ANY srcPort ANY system
 ;
syntax DirectLine
        = 
        destPort1: ANY
 ;
syntax InputPort
        = 
        ANY owningDirectLine ANY owningDirectBranch
 ;
syntax Branch
        = 
        ANY points ANY branchedLine ANY nestedBranch
 ;
syntax BranchedLine
        = 
        ANY branchs+
 ;
syntax Primitive
        = 
        ANY id ANY parameters+ ANY refPort
 ;
syntax Port
        = 
        ANY id ANY number ANY portBlock ANY primitive
 ;
syntax Reference
        = 
        ANY sourceType ANY sourceBlock ANY parameters+
 ;
syntax Masked
        = 
        ()
 ;
syntax Normal
        = 
        ()
 ;
syntax Parameter
        = 
        ANY name ANY le_reference ANY primitive
 ;
syntax OutputPort
        = 
        owningLine: ANY
 ;
syntax Type
        = 
        value: ANY
 ;
syntax Double
        = 
        value: ANY
 ;
syntax INteger
        = 
        value: ANY
 ;
syntax Enumeration
        = 
        value: ANY
 ;
syntax BOolean
        = 
        value: ANY
 ;
syntax TrueFalse
        = True: ()
        | False: ()
 ;
syntax Text
        = 
        value: ANY
 ;
syntax Vector
        = 
        value: ANY
 ;
syntax DirectBranch
        = 
        ANY id ANY destPort
 ;
syntax NestedBranch
        = 
        ANY branchs+
 ;
syntax Machine
        = 
        ANY name ANY id ANY events+ ANY data+ ANY instances+ ANY targets+ ANY stateFlow
 ;
syntax Junction
        = 
        ANY _id ANY id ANY type ANY position ANY state ANY chart
 ;
syntax Transition
        = 
        ANY _id ANY dataLimites ANY id ANY trigger ANY condition ANY conditionAction ANY action ANY chart ANY state
 ;
syntax Event
        = 
        ANY name ANY id ANY scope ANY description ANY trigger ANY machine ANY chart ANY state
 ;
syntax Data
        = 
        ANY name ANY id ANY scope ANY description ANY units ANY dataType ANY props+ ANY state ANY chart ANY machine
 ;
syntax Instance
        = 
        ANY _id ANY id ANY name ANY machine
 ;
syntax Target
        = 
        ANY name ANY id ANY codeCommand ANY description ANY makeCommand ANY codeFlags ANY checksumOld ANY machine
 ;
syntax Chart
        = 
        ANY name ANY id ANY _id ANY decomposotion ANY updateMethode ANY sampleTime ANY junctions+ ANY events+ ANY transitions+ ANY data+ ANY states+
 ;
syntax State
        = 
        ANY name ANY id ANY _id ANY type ANY entryAction ANY exitAction ANY duringAction ANY eventActions ANY decomposition ANY position ANY junctions+ ANY events+ ANY transitions+ ANY data+ ANY chart ANY states+
 ;
syntax Props
        = 
        ANY initialValue ANY arrays+ ANY ranges+ ANY data
 ;
syntax Range
        = 
        ANY maximum ANY minimum ANY props
 ;
syntax Array
        = 
        ANY firstIndex ANY size ANY props
 ;
syntax StateFlow
        = 
        ANY stateFlow ANY machines+ ANY simulink
 ;
syntax TransitionTerminal
        = 
        _id: ANY
 ;
syntax Simulink
        = 
        ANY simulink ANY stateFlows+ ANY models+
 ;
