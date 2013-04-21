@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Clark_basic

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Id_attrib
        = 
        ID_datatype id?
 ;
syntax Class_attrib
        = 
        NMTOKENS_datatype class?
 ;
syntax Title_attrib
        = 
        Text_datatype title?
 ;
syntax Core_attrib
        = 
        Id_attrib Class_attrib Title_attrib
 ;
syntax Lang_attrib
        = 
        LanguageCode_datatype xml:lang?
 ;
syntax I18n_attrib
        = 
        Lang_attrib
 ;
syntax Common_attrib
        = 
        Core_attrib I18n_attrib
 ;
syntax CommonIdRequired_attrib
        = 
        ID_datatype id Class_attrib Title_attrib I18n_attrib
 ;
syntax Base
        = 
        base: Base_attlist
 ;
syntax Base_attlist
        = 
        href: URI_datatype
 ;
syntax Head_content
        = Base?
        | Link*
        | Meta*
        | Title
 ;
syntax Length_datatype
        = 
        String
 ;
syntax LinkTypes_datatype
        = 
        NMTOKENS_datatype
 ;
syntax MediaDesc_datatype
        = 
        String
 ;
syntax MultiLength_datatype
        = 
        String
 ;
syntax Number_datatype
        = 
        String
 ;
syntax Pixels_datatype
        = 
        String
 ;
syntax Script_datatype
        = 
        String
 ;
syntax Text_datatype
        = 
        String
 ;
syntax Character_datatype
        = 
        String
 ;
syntax Charset_datatype
        = 
        String
 ;
syntax Charsets_datatype
        = 
        String
 ;
syntax ContentType_datatype
        = 
        String
 ;
syntax ContentTypes_datatype
        = 
        String
 ;
syntax Datetime_datatype
        = 
        String
 ;
syntax FPI_datatype
        = 
        String
 ;
syntax LanguageCode_datatype
        = 
        String
 ;
syntax URI_datatype
        = 
        String
 ;
syntax URIs_datatype
        = 
        String
 ;
syntax NMTOKEN_datatype
        = 
        String
 ;
syntax NMTOKENS_datatype
        = 
        String
 ;
syntax ID_datatype
        = 
        String
 ;
syntax IDREF_datatype
        = 
        String
 ;
syntax IDREFS_datatype
        = 
        String
 ;
syntax Form
        = 
        form: Form_attlist Block_class+
 ;
syntax Form_attlist
        = 
        Common_attrib URI_datatype action ("get" | "post") method? ContentType_datatype enctype?
 ;
syntax Label
        = 
        label: Label_attlist Inline_model
 ;
syntax Label_attlist
        = 
        Common_attrib IDREF_datatype for? Character_datatype accesskey?
 ;
syntax Input
        = 
        input: Input_attlist
 ;
syntax Input_attlist
        = 
        Common_attrib InputType_class type? String name? String value? "checked" checked? String size? Number_datatype maxlength? URI_datatype src? Character_datatype accesskey?
 ;
syntax InputType_class
        = "text"
        | "password"
        | "checkbox"
        | "radio"
        | "submit"
        | "reset"
        | "hidden"
 ;
syntax Select
        = 
        select: Select_attlist Option+
 ;
syntax Select_attlist
        = 
        Common_attrib String name? Number_datatype size? "multiple" multiple?
 ;
syntax Option
        = 
        option: Common_attrib "selected" selected? String value? String
 ;
syntax Textarea
        = 
        textarea: Textarea_attlist
 ;
syntax Textarea_attlist
        = 
        Common_attrib String name? Number_datatype rows Number_datatype cols Character_datatype accesskey? String
 ;
syntax Form_class
        = 
        Form
 ;
syntax Formctrl_class
        = Input
        | Label
        | Select
        | Textarea
 ;
syntax Block_class
        = Form_class
        | List_class
        | Table
        | Address
        | Blockquote
        | Div
        | P
        | Pre
        | Heading_class
 ;
syntax Inline_class
        = Formctrl_class
        | A
        | Img
        | Object
        | Abbr
        | Acronym
        | Br
        | Cite
        | Code
        | Dfn
        | Em
        | Kbd
        | Q
        | Samp
        | Span
        | Strong
        | Var
 ;
syntax A
        = 
        a: A_attlist Inline_model
 ;
syntax A_attlist
        = 
        Common_attrib URI_datatype href? Charset_datatype charset? ContentType_datatype type? LanguageCode_datatype hreflang? LinkTypes_datatype rel? LinkTypes_datatype rev? Character_datatype accesskey? Number_datatype tabindex?
 ;
syntax Img
        = 
        img: Img_attlist
 ;
syntax Img_attlist
        = 
        Common_attrib URI_datatype src Text_datatype alt URI_datatype longdesc? Length_datatype height? Length_datatype width?
 ;
syntax Link
        = 
        link: Link_attlist
 ;
syntax Link_attlist
        = 
        Common_attrib Charset_datatype charset? URI_datatype href? LanguageCode_datatype hreflang? ContentType_datatype type? LinkTypes_datatype rel? LinkTypes_datatype rev? MediaDesc_datatype media?
 ;
syntax Dl
        = 
        dl: Dl_attlist (Dt | Dd)+
 ;
syntax Dl_attlist
        = 
        Common_attrib
 ;
syntax Dt
        = 
        dt: Dt_attlist Inline_model
 ;
syntax Dt_attlist
        = 
        Common_attrib
 ;
syntax Dd
        = 
        dd: Dd_attlist Flow_model
 ;
syntax Dd_attlist
        = 
        Common_attrib
 ;
syntax Ol
        = 
        ol: Ol_attlist Li+
 ;
syntax Ol_attlist
        = 
        Common_attrib
 ;
syntax Ul
        = 
        ul: Ul_attlist Li+
 ;
syntax Ul_attlist
        = 
        Common_attrib
 ;
syntax Li
        = 
        li: Li_attlist Flow_model
 ;
syntax Li_attlist
        = 
        Common_attrib
 ;
syntax List_class
        = Ul
        | Ol
        | Dl
 ;
syntax Meta
        = 
        meta: Meta_attlist
 ;
syntax Meta_attlist
        = 
        I18n_attrib NMTOKEN_datatype http-equiv? NMTOKEN_datatype name? String content? String scheme?
 ;
syntax Object
        = 
        object: Object_attlist Param* Flow_model
 ;
syntax Object_attlist
        = 
        Common_attrib "declare" declare? URI_datatype classid? URI_datatype codebase? URI_datatype data? ContentType_datatype type? ContentType_datatype codetype? URIs_datatype archive? Text_datatype standby? Length_datatype height? Length_datatype width? String name? Number_datatype tabindex?
 ;
syntax Param
        = 
        param: Param_attlist
 ;
syntax Param_attlist
        = 
        Id_attrib String name String value? ("data" | "ref" | "object") valuetype? ContentType_datatype type?
 ;
syntax Title
        = 
        title: Title_attlist String
 ;
syntax Title_attlist
        = 
        I18n_attrib
 ;
syntax Head
        = 
        head: Head_attlist Head_content
 ;
syntax Head_attlist
        = 
        I18n_attrib Profile_attlist
 ;
syntax Profile_attlist
        = 
        URI_datatype profile?
 ;
syntax Body
        = 
        body: Body_attlist Block_model
 ;
syntax Body_attlist
        = 
        Common_attrib
 ;
syntax Html
        = 
        html: Html_attlist Head Body
 ;
syntax Html_attlist
        = 
        XHTML_version_attrib I18n_attrib
 ;
syntax XHTML_version_attrib
        = 
        FPI_datatype version?
 ;
syntax Table
        = 
        table: Table_attlist Caption? Tr+
 ;
syntax Table_attlist
        = 
        Common_attrib Text_datatype summary?
 ;
syntax Caption
        = 
        caption: Caption_attlist Inline_model
 ;
syntax Caption_attlist
        = 
        Common_attrib
 ;
syntax Tr
        = 
        tr: Tr_attlist (Th | Td)+
 ;
syntax Tr_attlist
        = 
        Common_attrib CellHAlign_attrib CellVAlign_attrib
 ;
syntax Th
        = 
        th: Th_attlist Flow_model
 ;
syntax Th_attlist
        = 
        Cell_attrib
 ;
syntax Td
        = 
        td: Td_attlist Flow_model
 ;
syntax Td_attlist
        = 
        Cell_attrib
 ;
syntax Cell_attrib
        = 
        Common_attrib Text_datatype abbr? String axis? IDREFS_datatype headers? Scope_attrib Number_datatype rowspan? Number_datatype colspan? CellHAlign_attrib CellVAlign_attrib
 ;
syntax CellHAlign_attrib
        = 
        ("left" | "center" | "right") align?
 ;
syntax CellVAlign_attrib
        = 
        ("top" | "middle" | "bottom") valign?
 ;
syntax Scope_attrib
        = 
        ("row" | "col") scope?
 ;
syntax Br
        = 
        br: Br_attlist
 ;
syntax Br_attlist
        = 
        Core_attrib
 ;
syntax Span
        = 
        span: Span_attlist Inline_model
 ;
syntax Span_attlist
        = 
        Common_attrib
 ;
syntax Abbr
        = 
        abbr: Abbr_attlist Inline_model
 ;
syntax Abbr_attlist
        = 
        Common_attrib
 ;
syntax Acronym
        = 
        acronym: Acronym_attlist Inline_model
 ;
syntax Acronym_attlist
        = 
        Common_attrib
 ;
syntax Cite
        = 
        cite: Cite_attlist Inline_model
 ;
syntax Cite_attlist
        = 
        Common_attrib
 ;
syntax Code
        = 
        code: Code_attlist Inline_model
 ;
syntax Code_attlist
        = 
        Common_attrib
 ;
syntax Dfn
        = 
        dfn: Dfn_attlist Inline_model
 ;
syntax Dfn_attlist
        = 
        Common_attrib
 ;
syntax Em
        = 
        em: Em_attlist Inline_model
 ;
syntax Em_attlist
        = 
        Common_attrib
 ;
syntax Kbd
        = 
        kbd: Kbd_attlist Inline_model
 ;
syntax Kbd_attlist
        = 
        Common_attrib
 ;
syntax Q
        = 
        q: Q_attlist Inline_model
 ;
syntax Q_attlist
        = 
        Common_attrib URI_datatype cite?
 ;
syntax Samp
        = 
        samp: Samp_attlist Inline_model
 ;
syntax Samp_attlist
        = 
        Common_attrib
 ;
syntax Strong
        = 
        strong: Strong_attlist Inline_model
 ;
syntax Strong_attlist
        = 
        Common_attrib
 ;
syntax Var
        = 
        var: Var_attlist Inline_model
 ;
syntax Var_attlist
        = 
        Common_attrib
 ;
syntax Div
        = 
        div: Div_attlist Flow_model
 ;
syntax Div_attlist
        = 
        Common_attrib
 ;
syntax P
        = 
        p: P_attlist Inline_model
 ;
syntax P_attlist
        = 
        Common_attrib
 ;
syntax Address
        = 
        address: Address_attlist Inline_model
 ;
syntax Address_attlist
        = 
        Common_attrib
 ;
syntax Blockquote
        = 
        blockquote: Blockquote_attlist Block_model
 ;
syntax Blockquote_attlist
        = 
        Common_attrib URI_datatype cite?
 ;
syntax Pre
        = 
        pre: Pre_attlist Inline_model
 ;
syntax Pre_attlist
        = 
        Common_attrib "preserve" xml:space?
 ;
syntax H1
        = 
        h1: Heading_attrib Heading_content
 ;
syntax H2
        = 
        h2: Heading_attrib Heading_content
 ;
syntax H3
        = 
        h3: Heading_attrib Heading_content
 ;
syntax H4
        = 
        h4: Heading_attrib Heading_content
 ;
syntax H5
        = 
        h5: Heading_attrib Heading_content
 ;
syntax H6
        = 
        h6: Heading_attrib Heading_content
 ;
syntax Heading_attrib
        = 
        Common_attrib
 ;
syntax Heading_content
        = 
        Inline_model
 ;
syntax Heading_class
        = H1
        | H2
        | H3
        | H4
        | H5
        | H6
 ;
syntax Inline_model
        = 
        (String | Inline_class)*
 ;
syntax Block_mix
        = 
        Block_class
 ;
syntax Block_model
        = 
        Block_mix+
 ;
syntax Flow_model
        = 
        (String | Inline_class | Block_class)*
 ;

public void main()
{
	registerLanguage("Clark_basic", "ext", html(str input, loc org) {return parse(#html, input, org);});
	println("Language registered.");
}
