@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SDM

syntax SystemDefinitionModel
        = 
        ANY information ANY import+ ANY designData ANY settingDefinitions ANY communicationDefinition+ ANY containmentDefinition+ ANY delegationDefinition+ ANY referenceDefinition+ ANY endpointDefinition+ ANY resourceDefinition+ ANY systemDefinition+ ANY constraintDefinition+ ANY manager+ ANY nameSpace ANY namespaceIdentity ANY documentLanguage+ ANY compilationHash+
 ;
syntax Information
        = 
        ANY sdm ANY friendlyname ANY companyname ANY copyright ANY trademark ANY description ANY comments ANY compilerversion
 ;
syntax Import
        = 
        ANY sdm ANY alias ANY identity
 ;
syntax ImportNamespaceIdentity
        = 
        import: ANY
 ;
syntax SDMCommunicationDefinition
        = 
        sdm: ANY
 ;
syntax SDMContainmentDefinition
        = 
        sdm: ANY
 ;
syntax SDMDelegationDefinition
        = 
        sdm: ANY
 ;
syntax SDMReferenceDefinition
        = 
        sdm: ANY
 ;
syntax SDMEndpointDefinition
        = 
        sdm: ANY
 ;
syntax SDMResourceDefinition
        = 
        sdm: ANY
 ;
syntax SDMSystemDefinition
        = 
        sdm: ANY
 ;
syntax SDMConstraintDefinition
        = 
        sdm: ANY
 ;
syntax SDMManager
        = 
        sdm: ANY
 ;
syntax ManagerDeclaration
        = 
        ANY description ANY name ANY assemblyName ANY version ANY publicKeyToken ANY culture ANY platform ANY sourcePath
 ;
syntax ObjectDefinition
        = 
        ANY flow+ ANY relationshipConstraint+ ANY constraint+ ANY constraintGroup+ ANY endpointDefinition+ ANY systemDefinition+ ANY resourceDefinition+ ANY communicationDefinition+ ANY containmentDefinition+ ANY delegationDefinition+ ANY referenceDefinition+ ANY hostingDefinition+ ANY endpoint+ ANY subsystem+ ANY resource+ ANY hosting+ ANY containment+ ANY connection+ ANY delegation+ ANY obreference+ ANY layer ANY extends ANY abstract
 ;
syntax OBFlow
        = 
        objectDefinition: ANY
 ;
syntax OBRelationshipConstraint
        = 
        objectDefinition: ANY
 ;
syntax OBConstraint
        = 
        objectDefinition: ANY
 ;
syntax OBConstraintGroup
        = 
        objectDefinition: ANY
 ;
syntax OBEndpointDefinition
        = 
        objectDefinition: ANY
 ;
syntax OBSystemDefinition
        = 
        objectDefinition: ANY
 ;
syntax OBResourceDefinition
        = 
        objectDefinition: ANY
 ;
syntax OBCommunicationDefinition
        = 
        objectDefinition: ANY
 ;
syntax OBContainmentDefinition
        = 
        objectDefinition: ANY
 ;
syntax OBDelegationDefinition
        = 
        objectDefinition: ANY
 ;
syntax OBReferenceDefinition
        = 
        objectDefinition: ANY
 ;
syntax OBHostingDefinition
        = 
        objectDefinition: ANY
 ;
syntax OBEndpoint
        = 
        objectDefinition: ANY
 ;
syntax OBSubsystem
        = 
        objectDefinition: ANY
 ;
syntax OBResource
        = 
        objectDefinition: ANY
 ;
syntax OBHosting
        = 
        objectDefinition: ANY
 ;
syntax OBContainment
        = 
        objectDefinition: ANY
 ;
syntax OBConnection
        = 
        objectDefinition: ANY
 ;
syntax OBDelegation
        = 
        objectDefinition: ANY
 ;
syntax OBReference
        = 
        objectDefinition: ANY
 ;
syntax SystemDefinition
        = 
        simulationRoot: ANY
 ;
syntax EndpointDefinition
        = 
        ()
 ;
syntax ResourceDefinition
        = 
        ()
 ;
syntax RelationshipDefinition
        = 
        ANY objectConstraint+ ANY constraint+ ANY constraintGroup+ ANY flow+ ANY connection+ ANY hosting+ ANY delegation+ ANY reference+ ANY containment+ ANY extends ANY abstract
 ;
syntax RDObjectConstraint
        = 
        relationshipDefinition: ANY
 ;
syntax RDConstraint
        = 
        relationshipDefinition: ANY
 ;
syntax RDConstraintGroup
        = 
        relationshipDefinition: ANY
 ;
syntax RDFlow
        = 
        relationshipDefinition: ANY
 ;
syntax RDConnection
        = 
        relationshipDefinition: ANY
 ;
syntax RDHosting
        = 
        relationshipDefinition: ANY
 ;
syntax RDDelegation
        = 
        relationshipDefinition: ANY
 ;
syntax RDReference
        = 
        relationshipDefinition: ANY
 ;
syntax RDContainment
        = 
        relationshipDefinition: ANY
 ;
syntax CommunicationDefinition
        = 
        ANY clientDefinition ANY serverDefinition
 ;
syntax HostingDefinition
        = 
        ANY guestDefinition ANY hostDefinition ANY simulationRoot
 ;
syntax ContainmentDefinition
        = 
        ANY parentDefinition ANY memberDefinition
 ;
syntax DelegationDefinition
        = 
        ANY proxyDefinition ANY delegateDefinition
 ;
syntax ReferenceDefinition
        = 
        ANY dependentDefinition ANY sourceDefinition
 ;
syntax Member
        = 
        ANY description+ ANY designData ANY settingValue+ ANY settingValueList+ ANY name ANY definition
 ;
syntax MembSettingValue
        = 
        member: ANY
 ;
syntax MembSettingValueList
        = 
        member: ANY
 ;
syntax ObjectMember
        = 
        ANY minOccurs ANY maxOccurs ANY reference ANY proxy
 ;
syntax RelationshipMember
        = 
        ()
 ;
syntax SystemMember
        = 
        ()
 ;
syntax EndpointMember
        = 
        ()
 ;
syntax ResourceMember
        = 
        ()
 ;
syntax HostingMember
        = 
        ANY guestMember ANY hostMember
 ;
syntax CommunicationMember
        = 
        ANY clientMember ANY serverMember
 ;
syntax ContainmentMember
        = 
        childMember: ANY
 ;
syntax DelegationMember
        = 
        ANY proxyMember ANY delegateMember
 ;
syntax ReferenceMember
        = 
        ANY dependentMember ANY sourceMember
 ;
syntax DesignData
        = 
        ANY nameSpace+
 ;
syntax NameSpace
        = 
        designData: ANY
 ;
syntax ObjectConstraint
        = 
        ANY constraint+ ANY relationshipConstraint+ ANY constraintGroup+ ANY primaryRole ANY primaryObjectDefinition ANY secondaryRole+ ANY secondaryObjectDefinition+ ANY minOccurs+ ANY maxOccurs+
 ;
syntax OCConstraint
        = 
        objectConstraint: ANY
 ;
syntax OCRelationshipConstraint
        = 
        objectConstraint_OC: ANY
 ;
syntax OCConstraintGroup
        = 
        objectConstraint_OC: ANY
 ;
syntax RelationshipConstraint
        = 
        ANY constraint+ ANY relationshipConstraint+ ANY objectConstraint+ ANY constraintGroup+ ANY relationshipDefinition ANY targetRole ANY targetObjectDefinition ANY minOccurs ANY maxOccurs ANY delegationAware
 ;
syntax RCConstraint
        = 
        relationshipConstraint: ANY
 ;
syntax RCRelationshipConstraint
        = 
        relationshipConstraint_RC: ANY
 ;
syntax RCObjectConstraint
        = 
        relationshipConstraint_RC: ANY
 ;
syntax RCConstraintGroup
        = 
        relationshipConstraint_RC: ANY
 ;
syntax ConstraintGroup
        = 
        ANY constraint+ ANY relationshipConstraint+ ANY objectConstraint+
 ;
syntax CGConstraint
        = 
        constraintGroup: ANY
 ;
syntax CGRelationshipConstraint
        = 
        constraintGroup_CG: ANY
 ;
syntax CGObjectConstraint
        = 
        constraintGroup_CG: ANY
 ;
syntax StructuralConstraint
        = 
        ANY description ANY designData ANY name ANY evaluate ANY raiseError ANY returnEarly
 ;
syntax ConstraintDefinition
        = 
        ANY relationshipConstraint+ ANY constraintGroup+ ANY objectConstraint+ ANY constraint+ ANY targetDefinition ANY returnEarly
 ;
syntax CDRelationshipConstraint
        = 
        constraintDefinition: ANY
 ;
syntax CDConstraintGroup
        = 
        constraintDefinition: ANY
 ;
syntax CDObjectConstraint
        = 
        constraintDefinition: ANY
 ;
syntax CDConstraint
        = 
        constraintDefinition: ANY
 ;
syntax ConstraintMember
        = 
        ANY input+ ANY raiseError ANY evaluate
 ;
syntax Definition
        = 
        ANY description ANY designData ANY settingDeclaration+ ANY settingValue+ ANY settingValueList+ ANY name ANY manager ANY className
 ;
syntax DefSettingDeclaration
        = 
        definition_DSD: ANY
 ;
syntax DefSettingValue
        = 
        definition: ANY
 ;
syntax DefSettingValueList
        = 
        definition: ANY
 ;
syntax SimpleName
        = 
        ()
 ;
syntax QualifiedName
        = 
        ()
 ;
syntax Path
        = 
        ()
 ;
syntax SettingPath
        = 
        ()
 ;
syntax NamespaceIdentity
        = 
        ANY name ANY version ANY publicKey ANY publicKeyToken ANY culture ANY platform
 ;
syntax FlowDefinition
        = 
        ()
 ;
syntax FlowMember
        = 
        ANY input+ ANY output+
 ;
syntax ValueTransfer
        = 
        ANY name ANY path ANY cast ANY convert
 ;
syntax Output
        = 
        ANY fixed ANY replace
 ;
syntax Input
        = 
        ()
 ;
syntax SettingDefinitions
        = 
        ANY nameSpace ANY manager ANY clrNameSpace
 ;
syntax SettingMember
        = 
        ANY facet+ ANY settingAttributes
 ;
syntax SettingsAttributes
        = 
        ANY list ANY access ANY secure ANY deploymentTime ANY required ANY canBeNull ANY elementsCanBeNull ANY defaultRead ANY defaultWrite
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
        name: ANY
 ;
syntax SettingValue
        = 
        ANY contents+ ANY settingValueAttributes
 ;
syntax SettingValueList
        = 
        ANY value+ ANY settingValueAttributes
 ;
syntax Value
        = 
        ANY contents+ ANY null
 ;
syntax SettingValueAttributes
        = 
        ANY path ANY null ANY fixed ANY unset ANY definition ANY convert ANY secure ANY reference
 ;
syntax Description
        = 
        ANY entry+ ANY resourceId ANY manager
 ;
syntax Entry
        = 
        description: ANY
 ;
syntax DescriptionEntry
        = 
        ANY name ANY resourceId ANY manager ANY substitute
 ;
syntax Substitute
        = 
        descriptionEntry: ANY
 ;
syntax PathList
        = 
        ANY settingPath+
 ;
syntax MaxOccurs
        = 
        ()
 ;
syntax MinOccurs
        = 
        ()
 ;
syntax FourPartVersionType
        = 
        ()
 ;
syntax PublicKeyType
        = 
        ()
 ;
syntax PublicKeyTokenType
        = 
        ()
 ;
syntax CompilationHashType
        = 
        ()
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
        ()
 ;
syntax CultureNeutral
        = 
        ()
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
        = 
        value: ANY
 ;
