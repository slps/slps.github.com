@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DTMP

syntax State
        = 
        String name Boolean isStart Boolean isEnd Boolean isFail Transition incoming+ Transition outGoing+ Parameter formalParam+
 ;
syntax Transition
        = 
        String transProb+ State to State from
 ;
syntax Parameter
        = 
        String name+ String type+ State state
 ;
