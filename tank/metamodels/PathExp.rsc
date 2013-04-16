@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PathExp

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax String
        = 
        String
 ;
syntax Element
        = PathExp
        | Transition
 ;
syntax PathExp
        = 
        State states+ Transition transitions+
 ;
syntax State
        = 
        Transition incoming+ Transition outgoing+
 ;
syntax Transition
        = 
        State source State target
 ;
