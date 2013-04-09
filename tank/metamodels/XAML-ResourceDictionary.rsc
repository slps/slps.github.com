@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XAML_ResourceDictionary

syntax Transformation
        = 
        ()
 ;
syntax WinFXElement
        = 
        ()
 ;
syntax NameSpace
        = 
        ANY namespace ANY identifier
 ;
syntax ResourceGroup
        = 
        key: ANY
 ;
syntax Material
        = 
        ()
 ;
syntax Key
        = 
        name: ANY
 ;
syntax ResourceDictionary
        = 
        ANY resourcegroups+ ANY xmlns+
 ;
syntax Transform3DGroup
        = 
        ANY transformations+
 ;
syntax MaterialGroup
        = 
        ANY materials+
 ;
syntax DiffuseMaterial
        = 
        Brush: ANY
 ;
syntax TranslateTransform3D
        = 
        ANY OffsetX ANY OffsetY ANY OffsetZ
 ;
syntax ScaleTransform3D
        = 
        ANY ScaleX ANY ScaleY ANY ScaleZ
 ;
syntax RotateTransform3D
        = 
        ANY CenterX ANY CenterY ANY rotation
 ;
syntax RotateTransformat3DRotation
        = 
        axisAngleRotation3D: ANY
 ;
syntax AxisAngleRotation3D
        = 
        ANY angle ANY axis
 ;
