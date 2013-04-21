@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pnml_hlcorestructure

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Net_labels
        = 
        HLDeclaration*
 ;
syntax Page_labels
        = 
        HLDeclaration*
 ;
syntax Place_labels
        = 
        Type? HLMarking?
 ;
syntax Transition_labels
        = 
        Condition?
 ;
syntax Arc_labels
        = 
        HLAnnotation?
 ;
syntax HLDeclaration
        = 
        declaration: Simpletextlabel_content Declarations structure?
 ;
syntax Type
        = 
        type: Simpletextlabel_content Sort structure?
 ;
syntax HLMarking
        = 
        hlinitialMarking: Simpletextlabel_content Term structure?
 ;
syntax Condition
        = 
        condition: Simpletextlabel_content Term structure?
 ;
syntax HLAnnotation
        = 
        hlinscription: Simpletextlabel_content Term structure?
 ;
