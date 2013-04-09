@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SignalFlow

syntax RootFolder
        = 
        ANY compoundComponent+
 ;
syntax CompoundComponent
        = 
        ANY rootFolder ANY baseComponent+ ANY localPort+
 ;
syntax PrimitiveComponent
        = 
        ()
 ;
syntax BaseComponent
        = 
        ANY name ANY position ANY signal+ ANY outputPort+ ANY inputPort+ ANY compoundComponent
 ;
syntax InputPort
        = 
        baseComponent: ANY
 ;
syntax LocalPort
        = 
        compoundComponent: ANY
 ;
syntax OutputPort
        = 
        baseComponent: ANY
 ;
syntax PortBase
        = 
        ANY name ANY position ANY associationPortBase_PortBasesrc ANY associationPortBase_PortBasedst
 ;
syntax Signal
        = 
        ANY name ANY position ANY baseComponent ANY associationPortBase_PortBase
 ;
syntax AssociationPortBase_PortBase
        = 
        ANY srcPortBase+ ANY dstPortBase+ ANY signal
 ;
