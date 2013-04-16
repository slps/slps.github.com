@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GWPNV2

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Place
        = 
        Net net PTArc out+ TPArc in+
 ;
syntax Transition
        = 
        Net net PTArc in+ TPArc out+
 ;
syntax Net
        = 
        Place place+ Transition transition+
 ;
syntax PTArc
        = 
        Transition dst Place src
 ;
syntax TPArc
        = 
        Transition src Place dst
 ;
