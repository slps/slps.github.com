@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Clark

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Version
        = 
        "1.0"
 ;
syntax Top_level_elements_model
        = 
        (Top_level_element_category | Top_level_extension)*
 ;
syntax Any
        = 
        (ANY | String | Any)*
 ;
syntax Top_level_extension
        = 
        Any
 ;
syntax Template_model
        = 
        (Instruction_category | Literal_result_element | String)*
 ;
syntax Literal_result_element_as_stylesheet
        = 
        Version version Literal_result_element_no_version_atts Template_model
 ;
syntax Literal_result_element
        = 
        Literal_result_element_atts Template_model
 ;
syntax Literal_result_element_atts
        = 
        Literal_result_element_no_version_atts Version version?
 ;
syntax Literal_result_element_no_version_atts
        = 
        (Avt_datatype | Prefixes_datatype extension-element-prefixes | Prefixes_datatype exclude-result-prefixes | Qnames_datatype use-attribute-sets)*
 ;
syntax Top_level_element_category
        = Include_element
        | Strip_space_element
        | Preserve_space_element
        | Template_element
        | Namespace_alias_element
        | Attribute_set_element
        | Variable_element
        | Param_element
        | Key_element
        | Decimal_format_element
        | Output_element
 ;
syntax Instruction_category
        = Apply_templates_element
        | Apply_imports_element
        | Call_template_element
        | Element_element
        | Attribute_element
        | Text_element
        | Processing_instruction_element
        | Comment_element
        | Copy_element
        | Value_of_element
        | Number_element
        | For_each_element
        | If_element
        | Choose_element
        | Variable_element
        | Copy_of_element
        | Message_element
        | Fallback_element
 ;
syntax Extension_atts
        = 
        ANY*
 ;
syntax Stylesheet_element
        = 
        stylesheet: Stylesheet_model
 ;
syntax Transform_element
        = 
        transform: Stylesheet_model
 ;
syntax Stylesheet_model
        = 
        Extension_atts String id? Prefixes_datatype extension-element-prefixes? Prefixes_datatype exclude-result-prefixes? Version version Import_element* Top_level_elements_model
 ;
syntax Include_element
        = 
        include: Extension_atts String href
 ;
syntax Import_element
        = 
        import: Extension_atts String href
 ;
syntax Strip_space_element
        = 
        strip-space: Extension_atts Wildcards_datatype elements
 ;
syntax Preserve_space_element
        = 
        preserve-space: Extension_atts Wildcards_datatype elements
 ;
syntax Template_element
        = 
        template: Extension_atts Pattern_datatype match? Qname_datatype name? Number_datatype priority? Qname_datatype mode? Param_element* Template_model
 ;
syntax Apply_templates_element
        = 
        apply-templates: Extension_atts Expression_datatype select? Qname_datatype mode? (Sort_element | With_param_element)*
 ;
syntax Apply_imports_element
        = 
        apply-imports: Extension_atts
 ;
syntax Call_template_element
        = 
        call-template: Extension_atts Qname_datatype name With_param_element*
 ;
syntax Namespace_alias_element
        = 
        namespace-alias: Extension_atts Prefix_datatype stylesheet-prefix Prefix_datatype result-prefix
 ;
syntax Element_element
        = 
        element: Extension_atts (Qname_datatype | Expr_avt_datatype) name (String | Brace_avt_datatype) namespace? Qnames_datatype use-attribute-sets? Template_model
 ;
syntax Attribute_element
        = 
        attribute: Extension_atts (Qname_datatype | Expr_avt_datatype) name (String | Brace_avt_datatype) namespace? Template_model
 ;
syntax Attribute_set_element
        = 
        attribute-set: Extension_atts Qname_datatype name Qnames_datatype use-attribute-sets? Attribute_element*
 ;
syntax Text_element
        = 
        text: Extension_atts ("yes" | "no") disable-output-escaping? String
 ;
syntax Processing_instruction_element
        = 
        processing-instruction: Extension_atts (String | Expr_avt_datatype) name Template_model
 ;
syntax Comment_element
        = 
        comment: Extension_atts Template_model
 ;
syntax Copy_element
        = 
        copy: Extension_atts Qnames_datatype use-attribute-sets? Template_model
 ;
syntax Value_of_element
        = 
        value-of: Extension_atts Expression_datatype select ("yes" | "no") disable-output-escaping?
 ;
syntax Number_element
        = 
        number: Extension_atts ("single" | "multiple" | "any") level? Pattern_datatype count? Pattern_datatype from? Expression_datatype value? Avt_datatype format? (String | Expr_avt_datatype) lang? ("alphabetic" | "traditional" | Expr_avt_datatype) letter-value? (Char_datatype | Expr_avt_datatype) grouping-separator? (Number_datatype | Expr_avt_datatype) grouping-size?
 ;
syntax For_each_element
        = 
        for-each: Extension_atts Expression_datatype select Sort_element* Template_model
 ;
syntax If_element
        = 
        if: Extension_atts Expression_datatype test Template_model
 ;
syntax Choose_element
        = 
        choose: Extension_atts When_element+ Otherwise_element?
 ;
syntax When_element
        = 
        when: Extension_atts Expression_datatype test Template_model
 ;
syntax Otherwise_element
        = 
        otherwise: Extension_atts Template_model
 ;
syntax Sort_element
        = 
        sort: Extension_atts Expression_datatype select? (String | Expr_avt_datatype) lang? ("text" | "number" | Qname_but_not_ncname_datatype | Expr_avt_datatype) data-type? ("ascending" | "descending" | Expr_avt_datatype) order? ("upper-first" | "lower-first" | Expr_avt_datatype) case-order?
 ;
syntax Variable_element
        = 
        variable: Extension_atts Qname_datatype name (Expression_datatype select | Template_model)
 ;
syntax Param_element
        = 
        param: Extension_atts Qname_datatype name (Expression_datatype select | Template_model)
 ;
syntax Copy_of_element
        = 
        copy-of: Extension_atts Expression_datatype select
 ;
syntax With_param_element
        = 
        with-param: Extension_atts Qname_datatype name (Expression_datatype select | Template_model)
 ;
syntax Key_element
        = 
        key: Extension_atts Qname_datatype name Pattern_datatype match Expression_datatype use
 ;
syntax Decimal_format_element
        = 
        decimal-format: Extension_atts Qname_datatype name? Char_datatype decimal-separator? Char_datatype grouping-separator? String infinity? Char_datatype minus-sign? String NaN? Char_datatype percent? Char_datatype per-mille? Char_datatype zero-digit? Char_datatype digit? Char_datatype pattern-separator?
 ;
syntax Message_element
        = 
        message: Extension_atts ("yes" | "no") terminate? Template_model
 ;
syntax Fallback_element
        = 
        fallback: Extension_atts Template_model
 ;
syntax Output_element
        = 
        output: Extension_atts ("xml" | "html" | "text" | Qname_but_not_ncname_datatype) method? String version? String encoding? ("yes" | "no") omit-xml-declaration? ("yes" | "no") standalone? String doctype-public? String doctype-system? Qnames_datatype cdata-section-elements? ("yes" | "no") indent? String media-type?
 ;
syntax Prefixes_datatype
        = 
        (String | "#default")*
 ;
syntax Prefix_datatype
        = String
        | "#default"
 ;
syntax Wildcards_datatype
        = 
        String*
 ;
syntax Qname_datatype
        = 
        String
 ;
syntax Qnames_datatype
        = 
        String*
 ;
syntax Char_datatype
        = 
        String
 ;
syntax Number_datatype
        = 
        Integer
 ;
syntax Expression_datatype
        = 
        String
 ;
syntax Pattern_datatype
        = 
        String
 ;
syntax Qname_but_not_ncname_datatype
        = 
        String
 ;
syntax Expr_avt_datatype
        = 
        String
 ;
syntax Brace_avt_datatype
        = 
        String
 ;
syntax Avt_datatype
        = 
        String
 ;

public void main()
{
	registerLanguage("Clark", "ext", stylesheet.element(str input, loc org) {return parse(#stylesheet.element, input, org);});
	println("Language registered.");
}
