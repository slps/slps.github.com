@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ODP_EV

syntax EnterpriseObject
        = ODPSystem
        | Party
        | CommunityObject
        | Community eoConfigurations+ Role eoRoles+ Action eoArtefactActions+ Action eoResourceActions+ Action eoActorActions+ Policy eoPolicy+ EO_A_R eoEOAR+ EO_P_D eoEOPD
 ;
syntax ODPSystem
        = 
        Scope odpBehaviour Objective odpObjectives+ EnterpriseSpecification odpSpecifier
 ;
syntax Party
        = 
        AccountableAction ptyAccountableAction+ EO_P_D ptyEOPD
 ;
syntax Objective
        = 
        ODPSystem objFulfiller Contract objSpecifier Objective objRefiners+ Objective objRefinement Process objAchievers+ Behaviour objFulfillers+
 ;
syntax Scope
        = 
        scOdpSystem: ODPSystem
 ;
syntax EnterpriseSpecification
        = 
        ODPSystem esDescribedSystems+ FieldOfApplication esContext
 ;
syntax FieldOfApplication
        = 
        faEnterpriseSpecifications: EnterpriseSpecification
 ;
syntax Policy
        = PolicyEnvelope
        | PolicyValue
        | AssigmentPolicy
        | Contract poSpecifier Community poOwner Process poProcess+ Behaviour poBehaviour+ Behaviour poChanger+ Role poRole+ EnterpriseObject poEnterpriseObject+
 ;
syntax PolicyEnvelope
        = 
        Behaviour pePolicySetter Behaviour peBehaviour PolicyValue peValues+ PolicyValue peCurrentValue
 ;
syntax PolicyValue
        = 
        pvValue: PolicyEnvelope
 ;
syntax AssigmentPolicy
        = 
        EO_A_R apEOAR+
 ;
syntax Contract
        = 
        Policy ctPolicies Objective ctObjective Behaviour ctBehaviours+
 ;
syntax Process
        = 
        Objective prObjectives+ Step prDetails+ Step prRefinement Policy prConstrainer+
 ;
syntax Step
        = Action
        | Process stGraphs+ Process stAbstraction
 ;
syntax Action
        = AccountableAction
        | Behaviour actBehaviours+ EnterpriseObject actArtefactRoleFillers+ EnterpriseObject actResourceRoleFillers+ EnterpriseObject actActorRoleFillers+
 ;
syntax AccountableAction
        = Prescription
        | Commitment
        | Declaration
        | Evaluation
        | Delegation
 ;
syntax Prescription
        = 
        Party aaAccountableParty+
 ;
syntax Commitment
        = 
        Party aaAccountableParty+
 ;
syntax Declaration
        = 
        Party aaAccountableParty+
 ;
syntax Evaluation
        = 
        Party aaAccountableParty+
 ;
syntax Delegation
        = 
        dlgEOPD: EO_P_D
 ;
syntax Behaviour
        = Violation
        | Objective beObjectives+ Contract beSpecifiers+ Action beActions+ Role beIdentifier PolicyEnvelope bePolicyEnvelope PolicyEnvelope beConstrainer Policy bePolicyConstrainer+ Policy bePolicy+
 ;
syntax Community
        = 
        CommunityObject coAbstraction EnterpriseObject coMembers+ Role coCommunityRoles+ Policy coPolicy+
 ;
syntax CommunityObject
        = 
        cobjRefinement: Community
 ;
syntax Role
        = InterfaceRole
        | Behaviour roleBehaviour Community roleSpecifier EnterpriseObject rolefillers+ Policy roleConstrainer+ EO_A_R roleEOAR+
 ;
syntax InterfaceRole
        = 
        ()
 ;
syntax Violation
        = 
        vioProhibitor: Rule
 ;
syntax Rule
        = Obligation
        | Authorisation
        | Permission
        | Prohibition
 ;
syntax Obligation
        = 
        Violation ruViolation+
 ;
syntax Authorisation
        = 
        Violation ruViolation+
 ;
syntax Permission
        = 
        Violation ruViolation+
 ;
syntax Prohibition
        = 
        Violation ruViolation+
 ;
syntax EO_A_R
        = 
        EnterpriseObject eoarSubject+ Role eoarSubjectRole+ AssigmentPolicy eoarGovernor+
 ;
syntax EO_P_D
        = 
        EnterpriseObject eopdAgent Party eopdPrincipal Delegation eopdAction
 ;
