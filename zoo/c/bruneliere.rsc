@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bruneliere

syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax CDataType
        = CIntegral
        | CFloating
        | CBitField
        | CVoid
 ;
syntax CIntegral
        = CEnumeration
        | CInt
        | CChar
 ;
syntax CFloating
        = CDouble
        | CFloat
        | CLongDouble
 ;
syntax CBitField
        = 
        ()
 ;
syntax CVoid
        = 
        ()
 ;
syntax CEnumeration
        = 
        ()
 ;
syntax CInt
        = CUnsignedInt
        | CLong
        | CLongLong
        | CShort
 ;
syntax CChar
        = CSignedChar
        | CUnsignedChar
        | CWChar
 ;
syntax CDouble
        = 
        ()
 ;
syntax CFloat
        = 
        ()
 ;
syntax CLongDouble
        = 
        ()
 ;
syntax CUnsignedInt
        = UnsignedLong
        | UnsignedLongLong
        | UnsignedShort
 ;
syntax CLong
        = 
        ()
 ;
syntax CLongLong
        = 
        ()
 ;
syntax CShort
        = 
        ()
 ;
syntax CSignedChar
        = 
        ()
 ;
syntax CUnsignedChar
        = 
        ()
 ;
syntax CWChar
        = 
        ()
 ;
syntax UnsignedLong
        = 
        ()
 ;
syntax UnsignedLongLong
        = 
        ()
 ;
syntax UnsignedShort
        = 
        ()
 ;
syntax CClassifier
        = CStructured
        | CDataType
        | Derived
 ;
syntax Derived
        = 
        ()
 ;
syntax CStructureContents
        = CStructuralFeature
        | CStructured
        | sc_container: CStructured
 ;
syntax CStructured
        = CStruct
        | CUnion
        | CStructureContents contains+
 ;
syntax CStruct
        = 
        CStructureContents contains+
 ;
syntax CUnion
        = 
        CStructureContents contains+
 ;
syntax CSourceText
        = 
        String source String fileName
 ;
syntax CTypedElement
        = CParameter
        | CStructuralFeature
        | CClassifier type CSourceText source
 ;
syntax CStructuralFeature
        = 
        CField
 ;
syntax CField
        = 
        ()
 ;
syntax CParameter
        = 
        behavioralFeature: BehavioralFeature
 ;
syntax BehavioralFeature
        = CFunction
        | CParameter parameters+
 ;
syntax CFunction
        = 
        isVarArg: Boolean
 ;
