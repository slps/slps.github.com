@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DTMP

syntax State
        = 
        ANY name ANY isStart ANY isEnd ANY isFail ANY incoming+ ANY outGoing+ ANY formalParam+
 ;
syntax Transition
        = 
        ANY transProb+ ANY to ANY from
 ;
syntax Parameter
        = 
        ANY name+ ANY type+ ANY state
 ;
