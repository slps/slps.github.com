@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module C

syntax CDataType
        = 
        ()
 ;
syntax CIntegral
        = 
        ()
 ;
syntax CFloating
        = 
        ()
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
        = 
        ()
 ;
syntax CChar
        = 
        ()
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
        = 
        ()
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
        = 
        ()
 ;
syntax Derived
        = 
        ()
 ;
syntax CStructureContents
        = 
        sc_container: ANY
 ;
syntax CStructured
        = 
        ANY contains+
 ;
syntax CStruct
        = 
        ()
 ;
syntax CUnion
        = 
        ()
 ;
syntax CSourceText
        = 
        ANY source ANY fileName
 ;
syntax CTypedElement
        = 
        ANY type ANY source
 ;
syntax CStructuralFeature
        = 
        ()
 ;
syntax CField
        = 
        ()
 ;
syntax CParameter
        = 
        behavioralFeature: ANY
 ;
syntax BehavioralFeature
        = 
        ANY parameters+
 ;
syntax CFunction
        = 
        isVarArg: ANY
 ;
