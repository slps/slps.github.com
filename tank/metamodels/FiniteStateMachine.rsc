@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module FiniteStateMachine

syntax MgaObject
        = Transition
        | State
        | StateMachine
        | String name String position
 ;
syntax Transition
        = 
        StateMachine stateMachine AssociationStateState associationStateState
 ;
syntax State
        = 
        StateMachine stateMachine AssociationStateState associationStateStatedst+ AssociationStateState associationStateStatesrc+
 ;
syntax StateMachine
        = 
        RootFolder rootFolder State state+ Transition transition+
 ;
syntax RootFolder
        = 
        String name RootFolder rootFolders+ StateMachine stateMachine+
 ;
syntax AssociationStateState
        = 
        Transition transition State dstTransition+ State srcTransition+
 ;
