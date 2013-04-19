@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Edd

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Config
        = 
        (String start-grammar-symbol | String end-grammar-symbol | String line-continuation-symbol | String tabulation-symbol | String start-label-symbol | String end-label-symbol | String defining-symbol | String multiple-defining-symbol | String terminator-symbol | String definition-separator-symbol | String concatenate-symbol | String start-comment-symbol | String end-comment-symbol | String start-group-symbol | String end-group-symbol | String start-option-symbol | String end-option-symbol | String start-terminal-symbol | String end-terminal-symbol | String start-nonterminal-symbol | String end-nonterminal-symbol | String start-seplist-star-symbol | String end-seplist-star-symbol | String start-seplist-plus-symbol | String end-seplist-plus-symbol | String start-repetition-star-symbol | String end-repetition-star-symbol | String start-repetition-plus-symbol | String end-repetition-plus-symbol | String postfix-option-symbol | String postfix-repetition-star-symbol | String postfix-repetition-plus-symbol | String nonterminals-may-start-with | String nonterminals-may-contain | String nonterminal-if-contains | String except* terminal-if-undefined | String except* nonterminal-if-defined | String except* decompose-symbols | ANY terminal-if-uppercase | ANY terminal-if-lowercase | ANY terminal-if-mixedcase | ANY terminal-if-camelcase | ANY nonterminal-if-uppercase | ANY nonterminal-if-lowercase | ANY nonterminal-if-mixedcase | ANY nonterminal-if-camelcase | ANY glue-nonalphanumeric-terminals | ANY break-tokens-at-whitespace | ANY disregard-labels | ANY consider-indentation | (ANY newline | ANY space | ANY same-indentation | String lines-containing)+ ignore | (String token (String terminal | ANY epsilon)) mask)*
 ;

public void main()
{
	registerLanguage("Edd", "ext", config(str input, loc org) {return parse(#config, input, org);});
	println("Language registered.");
}
