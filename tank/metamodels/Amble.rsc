@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Amble

syntax Boolean
        = "true"
        | "false"
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Element
        = Program
        | Process
        | State
        | Guard
        | Action
        | Network
        | Channel
        | Message
        | Variable
 ;
syntax Program
        = 
        Process processes+ Network networks+
 ;
syntax Process
        = 
        Integer minId Integer maxId Integer instancesNb State states+ Transition transitions+ Action initial Variable variables+ Network connectedTo+
 ;
syntax State
        = 
        Boolean isInitial Transition incoming+ Transition outgoing+
 ;
syntax Transition
        = Trans
        | Strans
        | Transall
 ;
syntax Trans
        = 
        waitFor: Message
 ;
syntax Strans
        = 
        Guard guard Action action State source State target
 ;
syntax Transall
        = 
        waitFor: Message
 ;
syntax Guard
        = 
        name: String
 ;
syntax Action
        = 
        name: String
 ;
syntax Network
        = 
        Channel channels+
 ;
syntax Channel
        = 
        Message messages+ Process source Process target
 ;
syntax Message
        = 
        name: String
 ;
syntax Variable
        = 
        String type String initValue
 ;
