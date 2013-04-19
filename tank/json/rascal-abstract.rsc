@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Rascal_abstract

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Value
        = null: ()
        | object: members: (String memberName Value memberValue)*
        | array: values: Value*
        | integer: n: Integer
        | float: r: Real
        | string: s: String
        | boolean: b: Bool
 ;
