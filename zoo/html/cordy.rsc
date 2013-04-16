@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cordy

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Program
        = 
        Element*
 ;
syntax Element
        = Singleton_tag
        | Tag
        | Text
        | Comment_tag
        | Tag_beg
        | Tag_end
 ;
syntax Tag
        = 
        "\<" Id Attributes "\>" (NL IN) Tag_elements EX "\</" Id "\>" NL
 ;
syntax Tag_elements
        = 
        Element*
 ;
syntax Singleton_tag
        = "\<" Singleton_id Attributes "\>" Singleton_tag_end? NL
        | "\<" Id Attributes "/\>" NL
 ;
syntax Singleton_tag_end
        = 
        "\</" Singleton_id "\>"
 ;
syntax Singleton_id
        = "br"
        | "hr"
        | "|" "img"
        | "meta"
        | "base"
        | "basefont"
        | X_id
        | "dt"
 ;
syntax Comment_tag
        = 
        "\<!" Comment_text* "\>" NL
 ;
syntax Comment_text
        = Punctuation SP
        | Token
 ;
syntax Tag_beg
        = 
        "\<" Id Attributes "\>" NL
 ;
syntax Tag_end
        = 
        "\</" Id "\>" NL
 ;
syntax Attributes
        = 
        SPOFF Attribute* SPON
 ;
syntax Attribute
        = 
        SP Attribute_id Equals_attribute_value?
 ;
syntax Attribute_id
        = Id
        | X_id
 ;
syntax Equals_attribute_value
        = 
        "=" Attribute_value
 ;
syntax Attribute_value
        = Stringlit
        | Number
        | Id
        | Url
        | Fileref
 ;
syntax Text
        = 
        Text_unit+ NL
 ;
syntax Text_unit
        = Punctuation SP
        | ")" SP
        | SP "("
        | Token
        | "\<" Number
 ;

public void main()
{
	registerLanguage("Cordy", "ext", program(str input, loc org) {return parse(#program, input, org);});
	println("Language registered.");
}
