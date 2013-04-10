@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HierarchicalStateMachine

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
