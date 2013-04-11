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
syntax PerspectiveElement
        = Workshop3D
        | XyzAxis3D
        | Box3D
        | Square3D
 ;
syntax ResourceDictionary
        = 
        source: String
 ;
syntax Grid
        = 
        Object3D object3D+
 ;
syntax Object3D
        = 
        Workshop3D
 ;
syntax Workshop3D
        = 
        Element3D elements3D+
 ;
syntax Element3D
        = UI3Delement
        | XyzAxis3D
 ;
syntax UI3Delement
        = Box3D
        | Square3D
        | String transform String material Name name
 ;
syntax XyzAxis3D
        = 
        length: Double
 ;
syntax Box3D
        = 
        String transform String material Name name NameSpace namespace
 ;
syntax Square3D
        = 
        String transform String material Name name NameSpace namespace
 ;
syntax Name
        = 
        name: String
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
