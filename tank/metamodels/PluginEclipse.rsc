@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PluginEclipse

syntax LocatedElement
        = 
        ()
 ;
syntax Resolution
        = Mandatory: ()
        | Optional: ()
 ;
syntax Visibility
        = Private: ()
        | Reexport: ()
 ;
syntax Eclipse
        = 
        ANY bundles+ ANY packages+
 ;
syntax Bundle
        = 
        ANY symbolicName ANY singleton ANY manifestVersion ANY require+ ANY version ANY export+ ANY import+ ANY packages+
 ;
syntax RequireBundleAttribute
        = 
        ()
 ;
syntax AttResolution
        = 
        value: ANY
 ;
syntax AttVisibility
        = 
        value: ANY
 ;
syntax Range
        = 
        ANY isLeftInclusive ANY isRightInclusive ANY lowerBound ANY upperBound
 ;
syntax Version
        = 
        ANY major ANY minor ANY micro ANY qualification
 ;
syntax RequiredBundle
        = 
        ANY requireBundleAttribute+ ANY bundle
 ;
syntax ImportedPackage
        = 
        ANY resolution ANY package ANY range
 ;
syntax ExportedPackage
        = 
        ANY package ANY version ANY xFriends
 ;
syntax Package
        = 
        ANY fqn ANY importedBy+ ANY exportedBy
 ;
syntax Xfriends
        = 
        ANY bundles+
 ;
syntax Xinternal
        = 
        value: ANY
 ;
