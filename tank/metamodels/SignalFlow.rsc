@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SignalFlow

syntax RootFolder
        = 
        CompoundComponent compoundComponent+
 ;
syntax CompoundComponent
        = 
        RootFolder rootFolder BaseComponent baseComponent+ LocalPort localPort+
 ;
syntax PrimitiveComponent
        = 
        ()
 ;
syntax BaseComponent
        = CompoundComponent
        | PrimitiveComponent
        | String name String position Signal signal+ OutputPort outputPort+ InputPort inputPort+ CompoundComponent compoundComponent
 ;
syntax InputPort
        = 
        baseComponent: BaseComponent
 ;
syntax LocalPort
        = 
        compoundComponent: CompoundComponent
 ;
syntax OutputPort
        = 
        baseComponent: BaseComponent
 ;
syntax PortBase
        = InputPort
        | LocalPort
        | OutputPort
        | String name String position AssociationPortBase_PortBase associationPortBase_PortBasesrc AssociationPortBase_PortBase associationPortBase_PortBasedst
 ;
syntax Signal
        = 
        String name String position BaseComponent baseComponent AssociationPortBase_PortBase associationPortBase_PortBase
 ;
syntax AssociationPortBase_PortBase
        = 
        PortBase srcPortBase+ PortBase dstPortBase+ Signal signal
 ;
