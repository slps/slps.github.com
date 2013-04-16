@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DeploymentReport

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax DeploymentReport
        = 
        DeploymentImport import+ Applications applications Binding binding LogicalServers logicalServers ErrorCollection errors
 ;
syntax DeploymentImport
        = 
        SimpleName alias ImportNamespaceIdentity identity
 ;
syntax ImportNamespaceIdentity
        = 
        import: DeploymentImport
 ;
syntax NamespaceIdentity
        = ImportNamespaceIdentity
        | Path name FourPartVersionType version PublicKeyType publicKey PublicKeyTokenType publicKeyToken CultureNeutral culture Platform platform
 ;
syntax Applications
        = 
        OuterSystem system+ Application application+
 ;
syntax LogicalServers
        = 
        Zone zone+ LogicalServer logicalServer+
 ;
syntax OuterSystem
        = 
        OuterSystem system+ Application application+ String name
 ;
syntax Binding
        = 
        Zone zone+ BoundLogicalServer boundLogicalServer+
 ;
syntax Zone
        = 
        Zone zone+ BoundLogicalServer boundLogicalServer+ LogicalServer logicalServer+ String name
 ;
syntax ReportObject
        = LogicalServer
        | Application
        | ReportSystem
        | ReportResource
        | ReportEndpoint
        | SequenceReport sequence+ String name String definition String extends Guid instanceId String hostedOn
 ;
syntax SequenceReport
        = 
        ReportObject report Setting setting ReportSystem system+ ReportResource resource+ ReportEndpoint endpoint+
 ;
syntax BoundLogicalServer
        = 
        Setting setting+ Application application+ String name String definition String extends
 ;
syntax LogicalServer
        = 
        SequenceReport sequence+ String name String definition String extends Guid instanceId String hostedOn
 ;
syntax Application
        = 
        SequenceReport sequence+ String name String definition String extends Guid instanceId String hostedOn
 ;
syntax ReportSystem
        = 
        SequenceReport sequence+ String name String definition String extends Guid instanceId String hostedOn
 ;
syntax ReportResource
        = 
        SequenceReport sequence+ String name String definition String extends Guid instanceId String hostedOn
 ;
syntax ReportEndpoint
        = 
        SequenceReport sequence+ String name String definition String extends Guid instanceId String hostedOn
 ;
syntax Setting
        = 
        SettingInstanceValue value+ SettingFacet facet+ SettingAttributes settingAttributes
 ;
syntax SettingFacet
        = 
        SettingInstanceValue value SettingAttributes settingAttributes
 ;
syntax SettingInstanceValue
        = 
        String contents+ Boolean null
 ;
syntax SettingAttributes
        = 
        String name String definition SettingState state Boolean fixed Boolean list Boolean null Boolean secure Boolean failedToSerialize
 ;
syntax SettingValue
        = 
        String contents+ Boolean Null Boolean Secure
 ;
syntax ErrorCollection
        = 
        DocumentError documentError+ DocumentResolutionError documentResolutionError+ DocumentConstraintError documentConstraintError+
 ;
syntax DocumentError
        = DocumentResolutionError
        | DocumentConstraintError
        | Description description+ Integer Code Integer Level String File
 ;
syntax DocumentResolutionError
        = 
        Statement: String
 ;
syntax DocumentConstraintError
        = 
        FailedInput failedInput+ String constraintMember String constraintDefinition String targetInstancePath String ownerInstancePath String constraintErrorCode String constraintErrorMessage
 ;
syntax FailedInput
        = 
        String contents+
 ;
syntax Description
        = 
        String contents+
 ;
syntax Guid
        = 
        value: String
 ;
syntax SimpleName
        = 
        value: String
 ;
syntax Path
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
syntax SettingState
        = Set: ()
        | NotSet: ()
        | Error: ()
 ;
syntax Element
        = Guid
        | SimpleName
        | Path
        | FourPartVersionType
        | PublicKeyType
        | PublicKeyTokenType
        | Culture
        | CultureNeutral
        | value: String
 ;
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
