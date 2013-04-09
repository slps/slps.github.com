@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PathExp

syntax Element
        = 
        ()
 ;
syntax PathExp
        = 
        ANY states+ ANY transitions+
 ;
syntax State
        = 
        ANY incoming+ ANY outgoing+
 ;
syntax Transition
        = 
        ANY source ANY target
 ;
