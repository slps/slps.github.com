@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bgf_4_1_adt

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax BGFExpression
        = epsilon: ()
        | empty: ()
        | val: v: BGFValue
        | anything: ()
        | terminal: t: String
        | nonterminal: t: String
        | selectable: String selector BGFExpression expr
        | sequence: exprs: BGFExpression*
        | choice: exprs: BGFExpression*
        | marked: expr: BGFExpression
        | optional: expr: BGFExpression
        | plus: expr: BGFExpression
        | star: expr: BGFExpression
        | starsepplus: BGFExpression expr BGFExpression sep
        | starsepstar: BGFExpression expr BGFExpression sep
 ;
syntax BGFValue
        = string: ()
        | integer: ()
 ;

public void main()
{
	registerLanguage("Bgf_4_1_adt", "ext", BGFExpression(str input, loc org) {return parse(#BGFExpression, input, org);});
	println("Language registered.");
}
