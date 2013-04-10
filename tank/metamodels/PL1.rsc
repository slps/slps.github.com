@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PL1

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
        ()
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
        ()
 ;
syntax PLINonComputationalType
        = 
        ()
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
