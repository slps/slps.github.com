@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HierarchicalStateMachine

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax MgaObject
        = StateBase
        | DataVar
        | Transition
        | StateDateRelation
        | String name String position
 ;
syntax StateBase
        = CompoundState
        | PrimitiveState
        | String defaultTransition Boolean marked AssociationStateState associationStateStatedst+ AssociationStateState associationStateStatesrc+ DataVar data+ AssociationDataStateBase associationDataStateBase
 ;
syntax DataVar
        = 
        StateBase stateBase+ OrState orState AssociationDataStateBase associationDataStateBase
 ;
syntax Transition
        = 
        String guard String trigger String action Boolean isSync OrState orState AssociationStateState associationStateState
 ;
syntax StateDateRelation
        = 
        String value String color
 ;
syntax RootFolder
        = 
        String name RootFolder rootFolders+ OrState orState+
 ;
syntax OrState
        = 
        RootFolder rootFolder State state+ Init init DataVar dataVar+ StateDataRelation stateDataRelation+ Transition transition+ CompoundState compoundState+
 ;
syntax AndState
        = 
        CompoundState compoundState+
 ;
syntax CompoundState
        = OrState
        | AndState
        | AndState andState OrState orState
 ;
syntax PrimitiveState
        = Init
        | State
        | StateDataRelation
 ;
syntax Init
        = 
        orState: OrState
 ;
syntax State
        = 
        orState: OrState
 ;
syntax StateDataRelation
        = 
        String value String color OrState orState AssociationDataStateBase associationDataStateBase1
 ;
syntax AssociationStateState
        = 
        Transition transition StateBase dstTransition+ StateBase srcTransition+
 ;
syntax AssociationDataStateBase
        = 
        StateDataRelation stateDataRelation DataVar dataVar+ StateBase stateBase+
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
