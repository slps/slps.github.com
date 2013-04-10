@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PluginEclipse

syntax LocatedElement
        = Eclipse
        | Bundle
        | RequireBundleAttribute
        | Version
        | RequiredBundle
        | ImportedPackage
        | ExportedPackage
        | Package
        | Xfriends
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
        Bundle bundles+ Package packages+
 ;
syntax Bundle
        = 
        String symbolicName Boolean singleton Integer manifestVersion RequiredBundle require+ Version version ExportedPackage export+ ImportedPackage import+ Package packages+
 ;
syntax RequireBundleAttribute
        = AttResolution
        | AttVisibility
        | Range
 ;
syntax AttResolution
        = 
        value: Resolution
 ;
syntax AttVisibility
        = 
        value: Visibility
 ;
syntax Range
        = 
        Boolean isLeftInclusive Boolean isRightInclusive Version lowerBound Version upperBound
 ;
syntax Version
        = 
        Integer major Integer minor Integer micro String qualification
 ;
syntax RequiredBundle
        = 
        RequireBundleAttribute requireBundleAttribute+ Bundle bundle
 ;
syntax ImportedPackage
        = 
        Resolution resolution Package package Range range
 ;
syntax ExportedPackage
        = Xinternal
        | Package package Version version Xfriends xFriends
 ;
syntax Package
        = 
        String fqn ImportedPackage importedBy+ ExportedPackage exportedBy
 ;
syntax Xfriends
        = 
        Bundle bundles+
 ;
syntax Xinternal
        = 
        value: Boolean
 ;
