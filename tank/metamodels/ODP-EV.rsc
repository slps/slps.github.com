@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ODP_EV

syntax EnterpriseObject
        = 
        ANY eoConfigurations+ ANY eoRoles+ ANY eoArtefactActions+ ANY eoResourceActions+ ANY eoActorActions+ ANY eoPolicy+ ANY eoEOAR+ ANY eoEOPD
 ;
syntax ODPSystem
        = 
        ANY odpBehaviour ANY odpObjectives+ ANY odpSpecifier
 ;
syntax Party
        = 
        ANY ptyAccountableAction+ ANY ptyEOPD
 ;
syntax Objective
        = 
        ANY objFulfiller ANY objSpecifier ANY objRefiners+ ANY objRefinement ANY objAchievers+ ANY objFulfillers+
 ;
syntax Scope
        = 
        scOdpSystem: ANY
 ;
syntax EnterpriseSpecification
        = 
        ANY esDescribedSystems+ ANY esContext
 ;
syntax FieldOfApplication
        = 
        faEnterpriseSpecifications: ANY
 ;
syntax Policy
        = 
        ANY poSpecifier ANY poOwner ANY poProcess+ ANY poBehaviour+ ANY poChanger+ ANY poRole+ ANY poEnterpriseObject+
 ;
syntax PolicyEnvelope
        = 
        ANY pePolicySetter ANY peBehaviour ANY peValues+ ANY peCurrentValue
 ;
syntax PolicyValue
        = 
        pvValue: ANY
 ;
syntax AssigmentPolicy
        = 
        ANY apEOAR+
 ;
syntax Contract
        = 
        ANY ctPolicies ANY ctObjective ANY ctBehaviours+
 ;
syntax Process
        = 
        ANY prObjectives+ ANY prDetails+ ANY prRefinement ANY prConstrainer+
 ;
syntax Step
        = 
        ANY stGraphs+ ANY stAbstraction
 ;
syntax Action
        = 
        ANY actBehaviours+ ANY actArtefactRoleFillers+ ANY actResourceRoleFillers+ ANY actActorRoleFillers+
 ;
syntax AccountableAction
        = 
        ()
 ;
syntax Prescription
        = 
        ()
 ;
syntax Commitment
        = 
        ()
 ;
syntax Declaration
        = 
        ()
 ;
syntax Evaluation
        = 
        ()
 ;
syntax Delegation
        = 
        dlgEOPD: ANY
 ;
syntax Behaviour
        = 
        ANY beObjectives+ ANY beSpecifiers+ ANY beActions+ ANY beIdentifier ANY bePolicyEnvelope ANY beConstrainer ANY bePolicyConstrainer+ ANY bePolicy+
 ;
syntax Community
        = 
        ANY coAbstraction ANY coMembers+ ANY coCommunityRoles+ ANY coPolicy+
 ;
syntax CommunityObject
        = 
        cobjRefinement: ANY
 ;
syntax Role
        = 
        ANY roleBehaviour ANY roleSpecifier ANY rolefillers+ ANY roleConstrainer+ ANY roleEOAR+
 ;
syntax InterfaceRole
        = 
        ()
 ;
syntax Violation
        = 
        vioProhibitor: ANY
 ;
syntax Rule
        = 
        ()
 ;
syntax Obligation
        = 
        ()
 ;
syntax Authorisation
        = 
        ()
 ;
syntax Permission
        = 
        ()
 ;
syntax Prohibition
        = 
        ()
 ;
syntax EO_A_R
        = 
        ANY eoarSubject+ ANY eoarSubjectRole+ ANY eoarGovernor+
 ;
syntax EO_P_D
        = 
        ANY eopdAgent ANY eopdPrincipal ANY eopdAction
 ;
