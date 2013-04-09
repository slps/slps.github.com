@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HierarchicalStateMachine

syntax MgaObject
        = 
        ANY name ANY position
 ;
syntax StateBase
        = 
        ANY defaultTransition ANY marked ANY associationStateStatedst+ ANY associationStateStatesrc+ ANY data+ ANY associationDataStateBase
 ;
syntax DataVar
        = 
        ANY stateBase+ ANY orState ANY associationDataStateBase
 ;
syntax Transition
        = 
        ANY guard ANY trigger ANY action ANY isSync ANY orState ANY associationStateState
 ;
syntax StateDateRelation
        = 
        ANY value ANY color
 ;
syntax RootFolder
        = 
        ANY name ANY rootFolders+ ANY orState+
 ;
syntax OrState
        = 
        ANY rootFolder ANY state+ ANY init ANY dataVar+ ANY stateDataRelation+ ANY transition+ ANY compoundState+
 ;
syntax AndState
        = 
        ANY compoundState+
 ;
syntax CompoundState
        = 
        ANY andState ANY orState
 ;
syntax PrimitiveState
        = 
        ()
 ;
syntax Init
        = 
        orState: ANY
 ;
syntax State
        = 
        orState: ANY
 ;
syntax StateDataRelation
        = 
        ANY value ANY color ANY orState ANY associationDataStateBase1
 ;
syntax AssociationStateState
        = 
        ANY transition ANY dstTransition+ ANY srcTransition+
 ;
syntax AssociationDataStateBase
        = 
        ANY stateDataRelation ANY dataVar+ ANY stateBase+
 ;
