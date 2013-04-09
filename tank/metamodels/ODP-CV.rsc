@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ODP_CV

syntax EnvironmentContract
        = 
        ANY ec_to_a+ ANY specifier_ec
 ;
syntax ComputationalTemplate
        = 
        ()
 ;
syntax ComputationalObject
        = 
        ANY co_to_i+ ANY co_to_bh ANY specifier_co ANY co_to_st
 ;
syntax BindingObject
        = 
        ()
 ;
syntax ComputationalObjectTemplate
        = 
        ANY cot_to_co+ ANY part_provide+ ANY part_request+
 ;
syntax ComputationalInterfaceTemplate
        = 
        ANY cit_to_i+ ANY aggregate_provide+ ANY aggregate_request+ ANY cit_to_intsig
 ;
syntax Interface
        = 
        ()
 ;
syntax Binding
        = 
        bd_to_i: ANY
 ;
syntax SignalInterface
        = 
        ()
 ;
syntax OperationInterface
        = 
        ()
 ;
syntax StreamInterface
        = 
        ()
 ;
syntax InterfaceSignature
        = 
        ()
 ;
syntax SignalInterfaceSignature
        = 
        ANY sgisig_to_ssig+
 ;
syntax OperationInterfaceSignature
        = 
        ANY optisig_to_ansig+ ANY optisig_to_intsig+
 ;
syntax StreamInterfaceSignature
        = 
        ANY strisig_to_fsig+
 ;
syntax InteractionSignature
        = 
        ()
 ;
syntax Parameter
        = 
        param_to_isig: ANY
 ;
syntax AnnouncementSignature
        = 
        ansig_to_optisig: ANY
 ;
syntax InterrogationSignature
        = 
        ANY intsig_to_optisig ANY intsig_to_tersig+
 ;
syntax TerminationSignature
        = 
        tersig_to_intsig: ANY
 ;
syntax SignalSignature
        = 
        ssig_to_sgisig: ANY
 ;
syntax FlowSignature
        = 
        fsig_to_strisig: ANY
 ;
syntax ActionTemplate
        = 
        ANY at_to_a+ ANY at_to_isig
 ;
syntax Behaviour
        = 
        ANY specifier_bh ANY owner_bh ANY bh_to_a+
 ;
syntax Action
        = 
        ANY constrainer_ec+ ANY changedState+ ANY specifier_a ANY a_to_bh
 ;
syntax State
        = 
        ANY startState ANY endState ANY changer+ ANY st_to_co
 ;
syntax InternalAction
        = 
        ()
 ;
syntax Interaction
        = 
        ()
 ;
syntax Flow
        = 
        ()
 ;
syntax Signal
        = 
        ()
 ;
syntax Operation
        = 
        ()
 ;
syntax Announcement
        = 
        ()
 ;
syntax Interrogation
        = 
        int_to_ter: ANY
 ;
syntax Invocation
        = 
        ANY inv_to_ter ANY inv_to_opt
 ;
syntax Termination
        = 
        ANY owner_ter ANY ter_to_inv
 ;
