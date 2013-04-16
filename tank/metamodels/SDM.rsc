@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SDM

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax SystemDefinitionModel
        = 
        Information information Import import+ DesignData designData SettingDefinitions settingDefinitions SDMCommunicationDefinition communicationDefinition+ SDMContainmentDefinition containmentDefinition+ SDMDelegationDefinition delegationDefinition+ SDMReferenceDefinition referenceDefinition+ SDMEndpointDefinition endpointDefinition+ SDMResourceDefinition resourceDefinition+ SDMSystemDefinition systemDefinition+ SDMConstraintDefinition constraintDefinition+ SDMManager manager+ NameSpace nameSpace NamespaceIdentity namespaceIdentity Culture documentLanguage+ CompilationHashType compilationHash+
 ;
syntax Information
        = 
        SystemDefinitionModel sdm String friendlyname String companyname String copyright String trademark Description description String comments FourPartVersionType compilerversion
 ;
syntax Import
        = 
        SystemDefinitionModel sdm SimpleName alias ImportNamespaceIdentity identity
 ;
syntax ImportNamespaceIdentity
        = 
        import: Import
 ;
syntax SDMCommunicationDefinition
        = 
        sdm: SystemDefinitionModel
 ;
syntax SDMContainmentDefinition
        = 
        sdm: SystemDefinitionModel
 ;
syntax SDMDelegationDefinition
        = 
        sdm: SystemDefinitionModel
 ;
syntax SDMReferenceDefinition
        = 
        sdm: SystemDefinitionModel
 ;
syntax SDMEndpointDefinition
        = 
        sdm: SystemDefinitionModel
 ;
syntax SDMResourceDefinition
        = 
        sdm: SystemDefinitionModel
 ;
syntax SDMSystemDefinition
        = 
        sdm: SystemDefinitionModel
 ;
syntax SDMConstraintDefinition
        = 
        sdm: SystemDefinitionModel
 ;
syntax SDMManager
        = 
        sdm: SystemDefinitionModel
 ;
syntax ManagerDeclaration
        = SDMManager
        | Description description SimpleName name String assemblyName FourPartVersionType version PublicKeyTokenType publicKeyToken CultureNeutral culture Platform platform Path sourcePath
 ;
syntax ObjectDefinition
        = SystemDefinition
        | EndpointDefinition
        | ResourceDefinition
        | OBFlow flow+ OBRelationshipConstraint relationshipConstraint+ OBConstraint constraint+ OBConstraintGroup constraintGroup+ OBEndpointDefinition endpointDefinition+ OBSystemDefinition systemDefinition+ OBResourceDefinition resourceDefinition+ OBCommunicationDefinition communicationDefinition+ OBContainmentDefinition containmentDefinition+ OBDelegationDefinition delegationDefinition+ OBReferenceDefinition referenceDefinition+ OBHostingDefinition hostingDefinition+ OBEndpoint endpoint+ OBSubsystem subsystem+ OBResource resource+ OBHosting hosting+ OBContainment containment+ OBConnection connection+ OBDelegation delegation+ OBReference obreference+ String layer QualifiedName extends Boolean abstract
 ;
syntax OBFlow
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBRelationshipConstraint
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBConstraint
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBConstraintGroup
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBEndpointDefinition
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBSystemDefinition
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBResourceDefinition
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBCommunicationDefinition
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBContainmentDefinition
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBDelegationDefinition
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBReferenceDefinition
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBHostingDefinition
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBEndpoint
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBSubsystem
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBResource
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBHosting
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBContainment
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBConnection
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBDelegation
        = 
        objectDefinition: ObjectDefinition
 ;
syntax OBReference
        = 
        objectDefinition: ObjectDefinition
 ;
syntax SystemDefinition
        = SDMSystemDefinition
        | OBSystemDefinition
        | simulationRoot: Boolean
 ;
syntax EndpointDefinition
        = SDMEndpointDefinition
        | OBEndpointDefinition
 ;
syntax ResourceDefinition
        = SDMResourceDefinition
        | OBResourceDefinition
 ;
syntax RelationshipDefinition
        = CommunicationDefinition
        | HostingDefinition
        | ContainmentDefinition
        | DelegationDefinition
        | ReferenceDefinition
        | RDObjectConstraint objectConstraint+ RDConstraint constraint+ RDConstraintGroup constraintGroup+ RDFlow flow+ RDConnection connection+ RDHosting hosting+ RDDelegation delegation+ RDReference reference+ RDContainment containment+ QualifiedName extends Boolean abstract
 ;
syntax RDObjectConstraint
        = 
        relationshipDefinition: RelationshipDefinition
 ;
syntax RDConstraint
        = 
        relationshipDefinition: RelationshipDefinition
 ;
syntax RDConstraintGroup
        = 
        relationshipDefinition: RelationshipDefinition
 ;
syntax RDFlow
        = 
        relationshipDefinition: RelationshipDefinition
 ;
syntax RDConnection
        = 
        relationshipDefinition: RelationshipDefinition
 ;
syntax RDHosting
        = 
        relationshipDefinition: RelationshipDefinition
 ;
syntax RDDelegation
        = 
        relationshipDefinition: RelationshipDefinition
 ;
syntax RDReference
        = 
        relationshipDefinition: RelationshipDefinition
 ;
syntax RDContainment
        = 
        relationshipDefinition: RelationshipDefinition
 ;
syntax CommunicationDefinition
        = SDMCommunicationDefinition
        | OBCommunicationDefinition
        | QualifiedName clientDefinition QualifiedName serverDefinition
 ;
syntax HostingDefinition
        = OBHostingDefinition
        | QualifiedName guestDefinition QualifiedName hostDefinition Boolean simulationRoot
 ;
syntax ContainmentDefinition
        = SDMContainmentDefinition
        | OBContainmentDefinition
        | QualifiedName parentDefinition QualifiedName memberDefinition
 ;
syntax DelegationDefinition
        = SDMDelegationDefinition
        | OBDelegationDefinition
        | QualifiedName proxyDefinition QualifiedName delegateDefinition
 ;
syntax ReferenceDefinition
        = SDMReferenceDefinition
        | OBReferenceDefinition
        | QualifiedName dependentDefinition QualifiedName sourceDefinition
 ;
syntax Member
        = ObjectMember
        | RelationshipMember
        | ConstraintMember
        | FlowMember
        | SettingMember
        | Description description+ DesignData designData MembSettingValue settingValue+ MembSettingValueList settingValueList+ SimpleName name QualifiedName definition
 ;
syntax MembSettingValue
        = 
        member: Member
 ;
syntax MembSettingValueList
        = 
        member: Member
 ;
syntax ObjectMember
        = SystemMember
        | EndpointMember
        | ResourceMember
        | MinOccurs minOccurs MaxOccurs maxOccurs Boolean reference Boolean proxy
 ;
syntax RelationshipMember
        = HostingMember
        | CommunicationMember
        | ContainmentMember
        | DelegationMember
        | ReferenceMember
 ;
syntax SystemMember
        = 
        OBSubsystem
 ;
syntax EndpointMember
        = 
        OBEndpoint
 ;
syntax ResourceMember
        = 
        OBResource
 ;
syntax HostingMember
        = OBHosting
        | RDHosting
        | Path guestMember Path hostMember
 ;
syntax CommunicationMember
        = OBConnection
        | RDConnection
        | Path clientMember Path serverMember
 ;
syntax ContainmentMember
        = OBContainment
        | RDContainment
        | childMember: Path
 ;
syntax DelegationMember
        = OBDelegation
        | RDDelegation
        | Path proxyMember Path delegateMember
 ;
syntax ReferenceMember
        = OBReference
        | RDReference
        | Path dependentMember Path sourceMember
 ;
syntax DesignData
        = 
        NameSpace nameSpace+
 ;
syntax NameSpace
        = 
        designData: DesignData
 ;
syntax ObjectConstraint
        = RDObjectConstraint
        | RCObjectConstraint
        | CGObjectConstraint
        | CDObjectConstraint
        | OCConstraint constraint+ OCRelationshipConstraint relationshipConstraint+ OCConstraintGroup constraintGroup+ RolesList primaryRole QualifiedName primaryObjectDefinition RolesList secondaryRole+ QualifiedName secondaryObjectDefinition+ MinOccurs minOccurs+ MaxOccurs maxOccurs+
 ;
syntax OCConstraint
        = 
        objectConstraint: ObjectConstraint
 ;
syntax OCRelationshipConstraint
        = 
        objectConstraint_OC: ObjectConstraint
 ;
syntax OCConstraintGroup
        = 
        objectConstraint_OC: ObjectConstraint
 ;
syntax RelationshipConstraint
        = OBRelationshipConstraint
        | OCRelationshipConstraint
        | RCRelationshipConstraint
        | CGRelationshipConstraint
        | CDRelationshipConstraint
        | RCConstraint constraint+ RCRelationshipConstraint relationshipConstraint+ RCObjectConstraint objectConstraint+ RCConstraintGroup constraintGroup+ QualifiedName relationshipDefinition RolesList targetRole QualifiedName targetObjectDefinition MinOccurs minOccurs MaxOccurs maxOccurs Boolean delegationAware
 ;
syntax RCConstraint
        = 
        relationshipConstraint: RelationshipConstraint
 ;
syntax RCRelationshipConstraint
        = 
        relationshipConstraint_RC: RelationshipConstraint
 ;
syntax RCObjectConstraint
        = 
        relationshipConstraint_RC: RelationshipConstraint
 ;
syntax RCConstraintGroup
        = 
        relationshipConstraint_RC: RelationshipConstraint
 ;
syntax ConstraintGroup
        = OBConstraintGroup
        | RDConstraintGroup
        | OCConstraintGroup
        | RCConstraintGroup
        | CDConstraintGroup
        | CGConstraint constraint+ CGRelationshipConstraint relationshipConstraint+ CGObjectConstraint objectConstraint+
 ;
syntax CGConstraint
        = 
        constraintGroup: ConstraintGroup
 ;
syntax CGRelationshipConstraint
        = 
        constraintGroup_CG: ConstraintGroup
 ;
syntax CGObjectConstraint
        = 
        constraintGroup_CG: ConstraintGroup
 ;
syntax StructuralConstraint
        = ObjectConstraint
        | RelationshipConstraint
        | ConstraintGroup
        | Description description DesignData designData SimpleName name ConstraintEvaluation evaluate Boolean raiseError Boolean returnEarly
 ;
syntax ConstraintDefinition
        = SDMConstraintDefinition
        | CDRelationshipConstraint relationshipConstraint+ CDConstraintGroup constraintGroup+ CDObjectConstraint objectConstraint+ CDConstraint constraint+ QualifiedName targetDefinition Boolean returnEarly
 ;
syntax CDRelationshipConstraint
        = 
        constraintDefinition: ConstraintDefinition
 ;
syntax CDConstraintGroup
        = 
        constraintDefinition: ConstraintDefinition
 ;
syntax CDObjectConstraint
        = 
        constraintDefinition: ConstraintDefinition
 ;
syntax CDConstraint
        = 
        constraintDefinition: ConstraintDefinition
 ;
syntax ConstraintMember
        = OBConstraint
        | RDConstraint
        | OCConstraint
        | RCConstraint
        | CGConstraint
        | CDConstraint
        | Input input+ Boolean raiseError ConstraintEvaluation evaluate
 ;
syntax Definition
        = ObjectDefinition
        | RelationshipDefinition
        | ConstraintDefinition
        | FlowDefinition
        | Description description DesignData designData DefSettingDeclaration settingDeclaration+ DefSettingValue settingValue+ DefSettingValueList settingValueList+ SimpleName name QualifiedName manager String className
 ;
syntax DefSettingDeclaration
        = 
        definition_DSD: Definition
 ;
syntax DefSettingValue
        = 
        definition: Definition
 ;
syntax DefSettingValueList
        = 
        definition: Definition
 ;
syntax SimpleName
        = 
        value: String
 ;
syntax QualifiedName
        = 
        value: String
 ;
syntax Path
        = 
        value: String
 ;
syntax SettingPath
        = 
        value: String
 ;
syntax NamespaceIdentity
        = ImportNamespaceIdentity
        | Path name FourPartVersionType version PublicKeyType publicKey PublicKeyTokenType publicKeyToken CultureNeutral culture Platform platform
 ;
syntax FlowDefinition
        = 
        Description description DesignData designData DefSettingDeclaration settingDeclaration+ DefSettingValue settingValue+ DefSettingValueList settingValueList+ SimpleName name QualifiedName manager String className
 ;
syntax FlowMember
        = OBFlow
        | RDFlow
        | Input input+ Output output+
 ;
syntax ValueTransfer
        = Output
        | Input
        | SimpleName name SettingPath path Boolean cast Boolean convert
 ;
syntax Output
        = 
        Boolean fixed Boolean replace
 ;
syntax Input
        = 
        SimpleName name SettingPath path Boolean cast Boolean convert
 ;
syntax SettingDefinitions
        = 
        NameSpace nameSpace QualifiedName manager String clrNameSpace
 ;
syntax SettingMember
        = DefSettingDeclaration
        | Facet facet+ SettingsAttributes settingAttributes
 ;
syntax SettingsAttributes
        = 
        Boolean list SettingMemberAccess access SettingMemberSecure secure Boolean deploymentTime Boolean required Boolean canBeNull Boolean elementsCanBeNull String defaultRead String defaultWrite
 ;
syntax SettingMemberAccess
        = ReadWrite: ()
        | ReadOnly: ()
        | WriteOnly: ()
 ;
syntax SettingMemberSecure
        = Always: ()
        | PerInstance: ()
        | Never: ()
 ;
syntax Facet
        = 
        name: SimpleName
 ;
syntax SettingValue
        = MembSettingValue
        | DefSettingValue
        | String contents+ SettingValueAttributes settingValueAttributes
 ;
syntax SettingValueList
        = MembSettingValueList
        | DefSettingValueList
        | Value value+ SettingValueAttributes settingValueAttributes
 ;
syntax Value
        = 
        String contents+ Boolean null
 ;
syntax SettingValueAttributes
        = 
        SettingPath path Boolean null Boolean fixed Boolean unset QualifiedName definition Boolean convert Boolean secure Boolean reference
 ;
syntax Description
        = 
        Entry entry+ String resourceId QualifiedName manager
 ;
syntax Entry
        = 
        description: Description
 ;
syntax DescriptionEntry
        = Entry
        | String name String resourceId QualifiedName manager Substitute substitute
 ;
syntax Substitute
        = 
        descriptionEntry: DescriptionEntry
 ;
syntax PathList
        = Substitute
        | SettingPath settingPath+
 ;
syntax MaxOccurs
        = 
        value: String
 ;
syntax MinOccurs
        = 
        value: String
 ;
syntax FourPartVersionType
        = 
        value: String
 ;
syntax PublicKeyType
        = 
        value: String
 ;
syntax PublicKeyTokenType
        = 
        value: String
 ;
syntax CompilationHashType
        = 
        value: String
 ;
syntax RolesList
        = Host: ()
        | Guest: ()
        | Parent: ()
        | Member: ()
        | Source: ()
        | Dependent: ()
        | Proxy: ()
        | Delegate: ()
        | Client: ()
        | Server: ()
 ;
syntax Culture
        = 
        value: String
 ;
syntax CultureNeutral
        = 
        value: String
 ;
syntax ProcessorArchitectures
        = x86: ()
        | ia64: ()
        | amd64: ()
        | wow64: ()
        | msil: ()
        | shx: ()
        | arm: ()
        | data: ()
 ;
syntax Platform
        = x86: ()
        | ia64: ()
        | amd64: ()
        | wow64: ()
        | msil: ()
        | shx: ()
        | arm: ()
        | data: ()
        | *: ()
        | neutral: ()
 ;
syntax ConstraintEvaluation
        = Design: ()
        | Never: ()
 ;
syntax Element
        = NameSpace
        | SimpleName
        | QualifiedName
        | Path
        | SettingPath
        | MaxOccurs
        | MinOccurs
        | FourPartVersionType
        | PublicKeyType
        | PublicKeyTokenType
        | CompilationHashType
        | Culture
        | CultureNeutral
        | value: String
 ;
