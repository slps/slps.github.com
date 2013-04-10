@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XAML_Perspective

syntax Page
        = 
        NameSpace xmlns+ String title GraphicalContainer graphContainer PageResource pageResources
 ;
syntax NameSpace
        = 
        String namespace String identifier
 ;
syntax PageResource
        = 
        ResourceDictionary dictionaries+
 ;
syntax GraphicalContainer
        = 
        Grid
 ;
syntax WinFXElement
        = 
        Name
 ;
syntax ResourceDictionary
        = 
        source: String
 ;
syntax Grid
        = 
        Object3D object3D+
 ;
syntax Workshop3D
        = 
        Element3D elements3D+
 ;
syntax Element3D
        = 
        UI3Delement
 ;
syntax UI3Delement
        = 
        String transform String material Name name
 ;
syntax XyzAxis3D
        = 
        length: Double
 ;
syntax Box3D
        = 
        ()
 ;
syntax Square3D
        = 
        ()
 ;
syntax Name
        = 
        name: String
 ;
