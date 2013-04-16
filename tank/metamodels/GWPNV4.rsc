@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GWPNV4

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Place
        = 
        ANY net ANY out+ ANY in+
 ;
syntax Transition
        = 
        ANY net ANY in+ ANY out+
 ;
syntax Net
        = 
        ANY place+ ANY transition+
 ;
syntax Arc
        = PTArc
        | TPArc
 ;
syntax PTArc
        = 
        ANY dst ANY src
 ;
syntax TPArc
        = 
        ANY src ANY dst
 ;
syntax Integer
        = 
        Integer
 ;
