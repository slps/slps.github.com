@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HierarchicalSignalFlow

syntax Port
        = 
        ANY asso_Port_Signalsrc ANY asso_Port_Signaldst
 ;
syntax Signal
        = 
        ANY base ANY asso_Port_Signal
 ;
syntax Base
        = 
        ANY compound ANY inputPort+ ANY outputPort+ ANY signal+
 ;
syntax Compound
        = 
        ANY localPort+ ANY base+
 ;
syntax InputPort
        = 
        base: ANY
 ;
syntax OutputPort
        = 
        base: ANY
 ;
syntax LocalPort
        = 
        compound: ANY
 ;
syntax Primitive
        = 
        ()
 ;
syntax Asso_Port_Signal
        = 
        ANY src+ ANY dst+ ANY signal
 ;
