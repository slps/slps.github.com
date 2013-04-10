@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HierarchicalSignalFlow

syntax Port
        = InputPort
        | OutputPort
        | LocalPort
        | Asso_Port_Signal asso_Port_Signalsrc Asso_Port_Signal asso_Port_Signaldst
 ;
syntax Signal
        = 
        Base base Asso_Port_Signal asso_Port_Signal
 ;
syntax Base
        = Compound
        | Primitive
        | Compound compound InputPort inputPort+ OutputPort outputPort+ Signal signal+
 ;
syntax Compound
        = 
        LocalPort localPort+ Base base+
 ;
syntax InputPort
        = 
        base: Base
 ;
syntax OutputPort
        = 
        base: Base
 ;
syntax LocalPort
        = 
        compound: Compound
 ;
syntax Primitive
        = 
        ()
 ;
syntax Asso_Port_Signal
        = 
        Port src+ Port dst+ Signal signal
 ;
