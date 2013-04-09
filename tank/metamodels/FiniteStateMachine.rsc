@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module FiniteStateMachine

syntax MgaObject
        = 
        ANY name ANY position
 ;
syntax Transition
        = 
        ANY stateMachine ANY associationStateState
 ;
syntax State
        = 
        ANY stateMachine ANY associationStateStatedst+ ANY associationStateStatesrc+
 ;
syntax StateMachine
        = 
        ANY rootFolder ANY state+ ANY transition+
 ;
syntax RootFolder
        = 
        ANY name ANY rootFolders+ ANY stateMachine+
 ;
syntax AssociationStateState
        = 
        ANY transition ANY dstTransition+ ANY srcTransition+
 ;
