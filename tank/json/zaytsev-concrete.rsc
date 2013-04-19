@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Zaytsev_concrete

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax JSONObject
        = 
        "{" "}"
 ;
syntax JSONData
        = 
        JSONBasicType
 ;
syntax JSONBasicType
        = JSONString
        | JSONNull
        | JSONBoolean
        | JSONNumber
        | JSONArray
        | JSONObject
 ;
syntax JSONBoolean
        = "false"
        | "true"
 ;
syntax JSONArray
        = 
        "[" "]"
 ;
syntax JSONNumber
        = 
        Digits
 ;
syntax JSONNull
        = 
        "null"
 ;
syntax JSONKeyValue
        = 
        JSONBasicType key ":" JSONBasicType val
 ;
syntax JSONString
        = 
        DoubleQuotedString
 ;
