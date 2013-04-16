@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module FiniteStateMachine

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
