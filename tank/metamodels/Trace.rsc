@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Trace

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Trace
        = 
        Level levels+ String name
 ;
syntax Level
        = 
        Trace trace Call calls+
 ;
syntax Call
        = 
        Level level Index indexes+ String methodName Integer DBAccessesNumber Integer DBRowsNumber Integer CPUTime
 ;
syntax Index
        = 
        value: Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
