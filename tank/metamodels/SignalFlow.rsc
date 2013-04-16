@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SignalFlow

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        String name String position Signal signal+ OutputPort outputPort+ InputPort inputPort+ CompoundComponent compoundComponent
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
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
