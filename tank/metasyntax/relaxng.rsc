@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Relaxng

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Pattern
        = element: (String name | Open_name_class) Common_atts Open_patterns
        | attribute: Common_atts (String name | Open_name_class) Other Pattern?
        | group: Common_atts Open_patterns
        | interleave: Common_atts Open_patterns
        | choice: Common_atts Open_patterns
        | optional: Common_atts Open_patterns
        | zeroOrMore: Common_atts Open_patterns
        | oneOrMore: Common_atts Open_patterns
        | list: Common_atts Open_patterns
        | mixed: Common_atts Open_patterns
        | ref: String name Common_atts Other
        | parentRef: String name Common_atts Other
        | empty: Common_atts Other
        | text: Common_atts Other
        | value: String type? Common_atts String
        | data: String type Common_atts Other (String name Common_atts String) param* (Common_atts Open_patterns) except?
        | notAllowed: Common_atts Other
        | externalRef: String href Common_atts Other
        | grammar: Common_atts Grammar_content
 ;
syntax Grammar_content
        = 
        Other (Start_element | Define_element | (Common_atts Grammar_content) div | (String href Common_atts Include_content) include)*
 ;
syntax Include_content
        = 
        Other (Start_element | Define_element | (Common_atts Include_content) div)*
 ;
syntax Start_element
        = 
        start: Combine_att Common_atts Open_pattern
 ;
syntax Define_element
        = 
        define: String name Combine_att Common_atts Open_patterns
 ;
syntax Combine_att
        = 
        ("choice" | "interleave") combine?
 ;
syntax Open_patterns
        = 
        Other Pattern+
 ;
syntax Open_pattern
        = 
        Other Pattern
 ;
syntax Name_class
        = name: Common_atts String
        | anyName: Common_atts Except_name_class
        | nsName: Common_atts Except_name_class
        | choice: Common_atts Open_name_classes
 ;
syntax Except_name_class
        = 
        Other Open_name_classes except?
 ;
syntax Open_name_classes
        = 
        Other Name_class+
 ;
syntax Open_name_class
        = 
        Other Name_class
 ;
syntax Common_atts
        = 
        String ns? String datatypeLibrary? ANY*
 ;
syntax Other
        = 
        (ANY | String | Any)**
 ;
syntax Any
        = 
        (ANY | String | Any)*
 ;

public void main()
{
	registerLanguage("Relaxng", "ext", pattern(str input, loc org) {return parse(#pattern, input, org);});
	println("Language registered.");
}
