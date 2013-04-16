@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PL1

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax PLIClassifier
        = PLISimpleType
        | PLINamedType
        | PLIComposedType
        | String name PLIElement typedElements+
 ;
syntax PLISimpleType
        = PLIComputationalType
        | PLINonComputationalType
        | alias: PLIAlias
 ;
syntax PLINamedType
        = 
        String name PLIElement typedElements+
 ;
syntax PLIComposedType
        = 
        PLIElement elements+
 ;
syntax PLIAlias
        = 
        PLISimpleType type PLIAttribute contains+
 ;
syntax PLIAttribute
        = 
        ()
 ;
syntax PLIComputationalType
        = 
        alias: PLIAlias
 ;
syntax PLINonComputationalType
        = 
        alias: PLIAlias
 ;
syntax PLIElement
        = 
        String level String name PLIClassifier sharedType PLIComposedType group PLIElementInitialValue initial PLISourceText source PLIArray array
 ;
syntax PLIElementInitialValue
        = 
        initialValue: String
 ;
syntax PLISourceText
        = 
        String source String fileName
 ;
syntax PLIArray
        = PLIFixedBoundArray
        | PLIFixedLboundArray
        | PLIHBoundArray
        | PLIVariableBoundArray
        | arrayOf: PLIElement
 ;
syntax PLIFixedBoundArray
        = 
        Integer IBound Integer uBound PLIElement referredTo
 ;
syntax PLIFixedLboundArray
        = 
        Integer IBound String uBoundToAllocate PLIElement referredTo
 ;
syntax PLIHBoundArray
        = 
        Integer uBound String IBoundToAllocate PLIElement referredTo
 ;
syntax PLIVariableBoundArray
        = 
        String IBoundToAllocate String hBoundToAllocate PLIElement referredTo
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
