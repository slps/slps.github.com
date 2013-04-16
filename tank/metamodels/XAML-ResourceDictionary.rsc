@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XAML_ResourceDictionary

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Transformation
        = TranslateTransform3D
        | ScaleTransform3D
        | RotateTransform3D
 ;
syntax WinFXElement
        = 
        Key
 ;
syntax NameSpace
        = 
        String namespace String identifier
 ;
syntax ResourceGroup
        = Transform3DGroup
        | MaterialGroup
        | key: Key
 ;
syntax Material
        = 
        DiffuseMaterial
 ;
syntax Key
        = 
        name: String
 ;
syntax ResourceDictionary
        = 
        ResourceGroup resourcegroups+ NameSpace xmlns+
 ;
syntax Transform3DGroup
        = 
        Transformation transformations+
 ;
syntax MaterialGroup
        = 
        Material materials+
 ;
syntax DiffuseMaterial
        = 
        Brush: String
 ;
syntax TranslateTransform3D
        = 
        Double OffsetX Double OffsetY Double OffsetZ
 ;
syntax ScaleTransform3D
        = 
        Double ScaleX Double ScaleY Double ScaleZ
 ;
syntax RotateTransform3D
        = 
        Double CenterX Double CenterY RotateTransformat3DRotation rotation
 ;
syntax RotateTransformat3DRotation
        = 
        axisAngleRotation3D: AxisAngleRotation3D
 ;
syntax AxisAngleRotation3D
        = 
        Integer angle String axis
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
