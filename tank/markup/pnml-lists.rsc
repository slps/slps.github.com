@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pnml_lists

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax BuiltInSort
        = 
        List
 ;
syntax BuiltInOperator
        = 
        ListOperator
 ;
syntax List
        = 
        list: Sort
 ;
syntax BuiltInConstant
        = 
        EmptyList
 ;
syntax ListOperator_content
        = 
        BuiltInOperator_content
 ;
syntax ListOperator
        = ListAppend
        | ListConcatenation
        | MakeList
        | ListLength
        | MemberAtIndex
        | Sublist
 ;
syntax EmptyList
        = 
        emptylist: Sort BuiltInConstant_content
 ;
syntax ListLength
        = 
        listlength: ListOperator_content
 ;
syntax MakeList
        = 
        makelist: Sort ListOperator_content
 ;
syntax ListConcatenation
        = 
        listconcatenation: ListOperator_content
 ;
syntax ListAppend
        = 
        listappend: ListOperator_content
 ;
syntax MemberAtIndex
        = 
        memberatindex: Integer index ListOperator_content
 ;
syntax Sublist
        = 
        sublist: Integer start Integer length ListOperator_content
 ;
