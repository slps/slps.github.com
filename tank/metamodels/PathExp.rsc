@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PathExp

syntax String
        = 
        String
 ;
syntax Element
        = PathExp
        | Transition
 ;
syntax PathExp
        = 
        State states+ Transition transitions+
 ;
syntax State
        = 
        Transition incoming+ Transition outgoing+
 ;
syntax Transition
        = 
        State source State target
 ;
