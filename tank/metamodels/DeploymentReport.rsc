@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DeploymentReport

syntax DeploymentReport
        = 
        ANY import+ ANY applications ANY binding ANY logicalServers ANY errors
 ;
syntax DeploymentImport
        = 
        ANY alias ANY identity
 ;
syntax ImportNamespaceIdentity
        = 
        import: ANY
 ;
syntax NamespaceIdentity
        = 
        ANY name ANY version ANY publicKey ANY publicKeyToken ANY culture ANY platform
 ;
syntax Applications
        = 
        ANY system+ ANY application+
 ;
syntax LogicalServers
        = 
        ANY zone+ ANY logicalServer+
 ;
syntax OuterSystem
        = 
        ANY system+ ANY application+ ANY name
 ;
syntax Binding
        = 
        ANY zone+ ANY boundLogicalServer+
 ;
syntax Zone
        = 
        ANY zone+ ANY boundLogicalServer+ ANY logicalServer+ ANY name
 ;
syntax ReportObject
        = 
        ANY sequence+ ANY name ANY definition ANY extends ANY instanceId ANY hostedOn
 ;
syntax SequenceReport
        = 
        ANY report ANY setting ANY system+ ANY resource+ ANY endpoint+
 ;
syntax BoundLogicalServer
        = 
        ANY setting+ ANY application+ ANY name ANY definition ANY extends
 ;
syntax LogicalServer
        = 
        ()
 ;
syntax Application
        = 
        ()
 ;
syntax ReportSystem
        = 
        ()
 ;
syntax ReportResource
        = 
        ()
 ;
syntax ReportEndpoint
        = 
        ()
 ;
syntax Setting
        = 
        ANY value+ ANY facet+ ANY settingAttributes
 ;
syntax SettingFacet
        = 
        ANY value ANY settingAttributes
 ;
syntax SettingInstanceValue
        = 
        ANY contents+ ANY null
 ;
syntax SettingAttributes
        = 
        ANY name ANY definition ANY state ANY fixed ANY list ANY null ANY secure ANY failedToSerialize
 ;
syntax SettingValue
        = 
        ANY contents+ ANY Null ANY Secure
 ;
syntax ErrorCollection
        = 
        ANY documentError+ ANY documentResolutionError+ ANY documentConstraintError+
 ;
syntax DocumentError
        = 
        ANY description+ ANY Code ANY Level ANY File
 ;
syntax DocumentResolutionError
        = 
        Statement: ANY
 ;
syntax DocumentConstraintError
        = 
        ANY failedInput+ ANY constraintMember ANY constraintDefinition ANY targetInstancePath ANY ownerInstancePath ANY constraintErrorCode ANY constraintErrorMessage
 ;
syntax FailedInput
        = 
        ANY contents+
 ;
syntax Description
        = 
        ANY contents+
 ;
syntax Guid
        = 
        ()
 ;
syntax SimpleName
        = 
        ()
 ;
syntax Path
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
syntax SettingState
        = Set: ()
        | NotSet: ()
        | Error: ()
 ;
syntax Element
        = 
        value: ANY
 ;
