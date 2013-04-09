@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EclipsePlugIn

syntax Application
        = 
        ANY name ANY version ANY author ANY extensionPoints+
 ;
syntax ExtensionPoint
        = 
        ANY name ANY id ANY application ANY descriptions+ ANY plugIn
 ;
syntax Description
        = 
        ANY xmlSchema ANY extensionPoints+
 ;
syntax Extension
        = 
        ANY name ANY id ANY isConfiguredInto
 ;
syntax PlugIn
        = 
        ANY id ANY displayableName ANY version ANY supplier ANY configures+ ANY extensionPoints+ ANY requires+ ANY uses+
 ;
syntax Librairy
        = 
        ANY name ANY plugIn ANY classes+
 ;
syntax Class
        = 
        ANY name ANY librairy
 ;
