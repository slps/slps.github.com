@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ODP_CV

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax EnvironmentContract
        = 
        Action ec_to_a+ ComputationalTemplate specifier_ec
 ;
syntax ComputationalTemplate
        = ComputationalObjectTemplate
        | ComputationalInterfaceTemplate
 ;
syntax ComputationalObject
        = BindingObject
        | Interface co_to_i+ Behaviour co_to_bh ComputationalObjectTemplate specifier_co State co_to_st
 ;
syntax BindingObject
        = 
        Interface co_to_i+ Behaviour co_to_bh ComputationalObjectTemplate specifier_co State co_to_st
 ;
syntax ComputationalObjectTemplate
        = 
        ComputationalObject cot_to_co+ ComputationalInterfaceTemplate part_provide+ ComputationalInterfaceTemplate part_request+
 ;
syntax ComputationalInterfaceTemplate
        = 
        Interface cit_to_i+ ComputationalObjectTemplate aggregate_provide+ ComputationalObjectTemplate aggregate_request+ InterfaceSignature cit_to_intsig
 ;
syntax Interface
        = SignalInterface
        | OperationInterface
        | StreamInterface
 ;
syntax Binding
        = 
        bd_to_i: Interface
 ;
syntax SignalInterface
        = 
        ComputationalObject owner_i Binding i_to_bd ComputationalInterfaceTemplate specifier_i Interaction i_to_ina+
 ;
syntax OperationInterface
        = 
        ComputationalObject owner_i Binding i_to_bd ComputationalInterfaceTemplate specifier_i Interaction i_to_ina+
 ;
syntax StreamInterface
        = 
        ComputationalObject owner_i Binding i_to_bd ComputationalInterfaceTemplate specifier_i Interaction i_to_ina+
 ;
syntax InterfaceSignature
        = SignalInterfaceSignature
        | OperationInterfaceSignature
        | StreamInterfaceSignature
 ;
syntax SignalInterfaceSignature
        = 
        SignalSignature sgisig_to_ssig+
 ;
syntax OperationInterfaceSignature
        = 
        AnnouncementSignature optisig_to_ansig+ InterrogationSignature optisig_to_intsig+
 ;
syntax StreamInterfaceSignature
        = 
        FlowSignature strisig_to_fsig+
 ;
syntax InteractionSignature
        = AnnouncementSignature
        | InterrogationSignature
        | TerminationSignature
        | SignalSignature
        | FlowSignature
 ;
syntax Parameter
        = 
        param_to_isig: InteractionSignature
 ;
syntax AnnouncementSignature
        = 
        ansig_to_optisig: OperationInterfaceSignature
 ;
syntax InterrogationSignature
        = 
        OperationInterfaceSignature intsig_to_optisig TerminationSignature intsig_to_tersig+
 ;
syntax TerminationSignature
        = 
        tersig_to_intsig: InterrogationSignature
 ;
syntax SignalSignature
        = 
        ssig_to_sgisig: SignalInterfaceSignature
 ;
syntax FlowSignature
        = 
        fsig_to_strisig: StreamInterfaceSignature
 ;
syntax ActionTemplate
        = 
        Action at_to_a+ InteractionSignature at_to_isig
 ;
syntax Behaviour
        = 
        ComputationalTemplate specifier_bh ComputationalObject owner_bh Action bh_to_a+
 ;
syntax Action
        = InternalAction
        | Interaction
        | EnvironmentContract constrainer_ec+ State changedState+ ActionTemplate specifier_a Behaviour a_to_bh
 ;
syntax State
        = 
        State startState State endState Action changer+ ComputationalObject st_to_co
 ;
syntax InternalAction
        = 
        EnvironmentContract constrainer_ec+ State changedState+ ActionTemplate specifier_a Behaviour a_to_bh
 ;
syntax Interaction
        = Flow
        | Signal
        | Operation
        | Invocation
        | Termination
 ;
syntax Flow
        = 
        ina_to_i: Interface
 ;
syntax Signal
        = 
        ina_to_i: Interface
 ;
syntax Operation
        = Announcement
        | Interrogation
 ;
syntax Announcement
        = 
        opt_to_inv: Invocation
 ;
syntax Interrogation
        = 
        int_to_ter: Termination
 ;
syntax Invocation
        = 
        Termination inv_to_ter Operation inv_to_opt
 ;
syntax Termination
        = 
        Interrogation owner_ter Invocation ter_to_inv
 ;
