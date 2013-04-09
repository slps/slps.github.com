@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PL1

syntax PLIClassifier
        = 
        ANY name ANY typedElements+
 ;
syntax PLISimpleType
        = 
        alias: ANY
 ;
syntax PLINamedType
        = 
        ()
 ;
syntax PLIComposedType
        = 
        ANY elements+
 ;
syntax PLIAlias
        = 
        ANY type ANY contains+
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
        ANY level ANY name ANY sharedType ANY group ANY initial ANY source ANY array
 ;
syntax PLIElementInitialValue
        = 
        initialValue: ANY
 ;
syntax PLISourceText
        = 
        ANY source ANY fileName
 ;
syntax PLIArray
        = 
        arrayOf: ANY
 ;
syntax PLIFixedBoundArray
        = 
        ANY IBound ANY uBound ANY referredTo
 ;
syntax PLIFixedLboundArray
        = 
        ANY IBound ANY uBoundToAllocate ANY referredTo
 ;
syntax PLIHBoundArray
        = 
        ANY uBound ANY IBoundToAllocate ANY referredTo
 ;
syntax PLIVariableBoundArray
        = 
        ANY IBoundToAllocate ANY hBoundToAllocate ANY referredTo
 ;
