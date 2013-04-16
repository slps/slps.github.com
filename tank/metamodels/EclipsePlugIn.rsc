@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EclipsePlugIn

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Application
        = 
        String name String version String author ExtensionPoint extensionPoints+
 ;
syntax ExtensionPoint
        = 
        String name String id Application application Description descriptions+ PlugIn plugIn
 ;
syntax Description
        = 
        String xmlSchema ExtensionPoint extensionPoints+
 ;
syntax Extension
        = 
        String name String id ExtensionPoint isConfiguredInto
 ;
syntax PlugIn
        = 
        String id String displayableName String version String supplier Extension configures+ ExtensionPoint extensionPoints+ PlugIn requires+ Librairy uses+
 ;
syntax Librairy
        = 
        String name PlugIn plugIn Class classes+
 ;
syntax Class
        = 
        String name Librairy librairy
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
