@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EclipsePlugIn

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
