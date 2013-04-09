@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XAML_Perspective

syntax Page
        = 
        ANY xmlns+ ANY title ANY graphContainer ANY pageResources
 ;
syntax NameSpace
        = 
        ANY namespace ANY identifier
 ;
syntax PageResource
        = 
        ANY dictionaries+
 ;
syntax GraphicalContainer
        = 
        ()
 ;
syntax WinFXElement
        = 
        ()
 ;
syntax PerspectiveElement
        = 
        ()
 ;
syntax ResourceDictionary
        = 
        source: ANY
 ;
syntax Grid
        = 
        ANY object3D+
 ;
syntax Object3D
        = 
        ()
 ;
syntax Workshop3D
        = 
        ANY elements3D+
 ;
syntax Element3D
        = 
        ()
 ;
syntax UI3Delement
        = 
        ANY transform ANY material ANY name
 ;
syntax XyzAxis3D
        = 
        length: ANY
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
        name: ANY
 ;
