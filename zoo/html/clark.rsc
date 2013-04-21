@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Clark

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Applet
        = 
        applet: Applet_attlist Param* Flow_model
 ;
syntax Applet_attlist
        = Core_attrib Text_datatype alt String archive? String code? URI_datatype codebase? String object? Length_datatype height Length_datatype width
        | ("top" | "middle" | "bottom" | "left" | "right") align? Pixels_datatype hspace? Pixels_datatype vspace?
        | Name_attlist
 ;
syntax Inline_class
        = Applet
        | Bdo
        | Map
        | Edit_class
        | A
        | Iframe
        | Img
        | Font
        | Basefont
        | S
        | Strike
        | U
        | Object
        | B
        | Big
        | I
        | Small
        | Sub
        | Sup
        | Tt
        | Script_class
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
        = Id_attrib Class_attrib Title_attrib
        | String style?
 ;
syntax Lang_attrib
        = LanguageCode_datatype xml:lang?
        | LanguageCode_datatype lang?
 ;
syntax I18n_attrib
        = Lang_attrib
        | Dir_attrib?
 ;
syntax Common_attrib
        = Core_attrib I18n_attrib
        | Events_attrib
 ;
syntax CommonIdRequired_attrib
        = ID_datatype id Class_attrib Title_attrib I18n_attrib
        | Events_attrib
 ;
syntax Base
        = 
        base: Base_attlist
 ;
syntax Base_attlist
        = href: URI_datatype
        | Target_attrib
 ;
syntax Head_content
        = Base?
        | Isindex?
        | Link*
        | Meta*
        | Script*
        | Style*
 ;
syntax Bdo
        = 
        bdo: Bdo_attlist Inline_model
 ;
syntax Bdo_attlist
        = 
        Core_attrib Lang_attrib Dir_attrib
 ;
syntax Dir_attrib
        = 
        dir: ("ltr" | "rtl")
 ;
syntax Area
        = 
        area: Area_attlist
 ;
syntax Area_attlist
        = Common_attrib URI_datatype href? Shape_attrib Coords_attrib "nohref" nohref? Text_datatype alt Number_datatype tabindex? Character_datatype accesskey?
        | Script_datatype onblur? Script_datatype onfocus?
        | Target_attrib
 ;
syntax Map
        = 
        map: Map_attlist (Block_class | Area)+
 ;
syntax Map_attlist
        = CommonIdRequired_attrib
        | Name_attlist
 ;
syntax A_attlist
        = Shape_attrib Coords_attrib
        | Script_datatype onblur? Script_datatype onfocus?
        | Common_attrib URI_datatype href? Charset_datatype charset? ContentType_datatype type? LanguageCode_datatype hreflang? LinkTypes_datatype rel? LinkTypes_datatype rev? Character_datatype accesskey? Number_datatype tabindex?
        | Name_attlist
        | Target_attrib
 ;
syntax Img_attlist
        = Usemap_attlist
        | Common_attrib URI_datatype src Text_datatype alt URI_datatype longdesc? Length_datatype height? Length_datatype width?
        | ("top" | "middle" | "bottom" | "left" | "right") align? Pixels_datatype border? Pixels_datatype hspace? Pixels_datatype vspace?
        | Name_attlist
        | "ismap" ismap?
 ;
syntax Object_attlist
        = Usemap_attlist
        | ("top" | "middle" | "bottom" | "left" | "right") align? Pixels_datatype border? Pixels_datatype hspace? Pixels_datatype vspace?
        | Common_attrib "declare" declare? URI_datatype classid? URI_datatype codebase? URI_datatype data? ContentType_datatype type? ContentType_datatype codetype? URIs_datatype archive? Text_datatype standby? Length_datatype height? Length_datatype width? String name? Number_datatype tabindex?
 ;
syntax Usemap_attlist
        = 
        IDREF_datatype usemap?
 ;
syntax Shape_attrib
        = 
        ("rect" | "circle" | "poly" | "default") shape?
 ;
syntax Coords_attrib
        = 
        String coords?
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
syntax Del
        = 
        del: Del_attlist Inline_model
 ;
syntax Del_attlist
        = 
        Edit_attrib
 ;
syntax Ins
        = 
        ins: Ins_attlist Inline_model
 ;
syntax Ins_attlist
        = 
        Edit_attrib
 ;
syntax Edit_attrib
        = 
        URI_datatype cite? Datetime_datatype datetime?
 ;
syntax Edit_class
        = Del
        | Ins
 ;
syntax Block_class
        = Edit_class
        | Center
        | Isindex
        | List_class
        | Hr
        | Script_class
        | Address
        | Blockquote
        | Div
        | P
        | Pre
        | Heading_class
 ;
syntax Form_attlist
        = Script_datatype onreset? Script_datatype onsubmit?
        | Charsets_datatype accept-charset? ContentTypes_datatype accept?
        | Name_attlist
        | Target_attrib
 ;
syntax Body_attlist
        = Script_datatype onload? Script_datatype onunload?
        | URI_datatype background? Color_datatype bgcolor? Color_datatype text? Color_datatype link? Color_datatype vlink? Color_datatype alink?
 ;
syntax Label_attlist
        = 
        Script_datatype onblur? Script_datatype onfocus?
 ;
syntax Input_attlist
        = Script_datatype onblur? Script_datatype onchange? Script_datatype onfocus? Script_datatype onselect?
        | "disabled" disabled? "readonly" readonly? String alt? Number_datatype tabindex? ContentTypes_datatype accept?
        | Align_attrib
 ;
syntax Select_attlist
        = Script_datatype onblur? Script_datatype onchange? Script_datatype onfocus?
        | "disabled" disabled? Number_datatype tabindex?
 ;
syntax Textarea_attlist
        = Script_datatype onblur? Script_datatype onchange? Script_datatype onfocus? Script_datatype onselect?
        | "disabled" disabled? "readonly" readonly? Number_datatype tabindex?
 ;
syntax Button_attlist
        = Script_datatype onblur? Script_datatype onfocus?
        | Common_attrib String name? String value? ("button" | "submit" | "reset") type? "disabled" disabled? Number_datatype tabindex? Character_datatype accesskey?
 ;
syntax Events_attrib
        = 
        Script_datatype onclick? Script_datatype ondblclick? Script_datatype onmousedown? Script_datatype onmouseup? Script_datatype onmouseover? Script_datatype onmousemove? Script_datatype onmouseout? Script_datatype onkeypress? Script_datatype onkeydown? Script_datatype onkeyup?
 ;
syntax InputType_class
        = "image"
        | "button"
 ;
syntax Option_attlist
        = 
        "disabled" disabled? Text_datatype label?
 ;
syntax Optgroup
        = 
        optgroup: Optgroup_attlist Option+
 ;
syntax Optgroup_attlist
        = 
        Common_attrib "disabled" disabled? Text_datatype label
 ;
syntax Fieldset
        = 
        fieldset: Fieldset_attlist Legend Flow_model
 ;
syntax Fieldset_attlist
        = 
        Common_attrib
 ;
syntax Button
        = 
        button: Button_attlist Flow_model
 ;
syntax Legend
        = 
        legend: Legend_attlist Inline_model
 ;
syntax Legend_attlist
        = Common_attrib Character_datatype accesskey?
        | ("top" | "bottom" | "left" | "right") align?
 ;
syntax Form_class
        = 
        Fieldset
 ;
syntax Formctrl_class
        = 
        Button
 ;
syntax Frameset
        = frameset: Frameset_attlist (Frameset | Frame)+ Noframes?
        | Body
 ;
syntax Frameset_attlist
        = 
        Core_attrib MultiLength_datatype cols? MultiLength_datatype rows?
 ;
syntax Frame
        = 
        frame: Frame_attlist
 ;
syntax Frame_attlist
        = 
        Core_attrib URI_datatype longdesc? URI_datatype src? ("1" | "0") frameborder? Pixels_datatype marginwidth? Pixels_datatype marginheight? "noresize" noresize? ("yes" | "no" | "auto") scrolling?
 ;
syntax Noframes
        = 
        noframes: Noframes_attlist Body
 ;
syntax Noframes_attlist
        = 
        Common_attrib
 ;
syntax A
        = 
        a: A_attlist Inline_model
 ;
syntax Iframe
        = 
        iframe: Iframe_attlist Flow_model
 ;
syntax Iframe_attlist
        = Core_attrib URI_datatype longdesc? URI_datatype src? ("1" | "0") frameborder? Length_datatype width? Length_datatype height? Pixels_datatype marginwidth? Pixels_datatype marginheight? ("yes" | "no" | "auto") scrolling?
        | Name_attlist
 ;
syntax Img
        = 
        img: Img_attlist
 ;
syntax Basefont
        = 
        basefont: Basefont_attlist
 ;
syntax Basefont_attlist
        = 
        Id_attrib Font_attrib
 ;
syntax Center
        = 
        center: Center_attlist Flow_model
 ;
syntax Center_attlist
        = 
        Common_attrib
 ;
syntax Font
        = 
        font: Font_attlist Inline_model
 ;
syntax Font_attlist
        = 
        Core_attrib I18n_attrib Font_attrib
 ;
syntax Font_attrib
        = 
        String size? Color_datatype color? String face?
 ;
syntax S
        = 
        s: S_attlist Inline_model
 ;
syntax S_attlist
        = 
        Common_attrib
 ;
syntax Strike
        = 
        strike: Strike_attlist Inline_model
 ;
syntax Strike_attlist
        = 
        Common_attrib
 ;
syntax U
        = 
        u: U_attlist Inline_model
 ;
syntax U_attlist
        = 
        Common_attrib
 ;
syntax Dir
        = 
        dir: Dir_attlist Li_noblock+
 ;
syntax Dir_attlist
        = 
        Common_attrib "compact" compact?
 ;
syntax Menu
        = 
        menu: Menu_attlist Li_noblock+
 ;
syntax Menu_attlist
        = 
        Common_attrib "compact" compact?
 ;
syntax Li_noblock
        = 
        li: Li_attlist Inline_model
 ;
syntax Isindex
        = 
        isindex: Isindex_attlist
 ;
syntax Isindex_attlist
        = 
        Core_attrib I18n_attrib Text_datatype prompt?
 ;
syntax Br_attlist
        = ("left" | "all" | "right" | "none") clear?
        | Core_attrib
 ;
syntax Caption_attlist
        = 
        Align_attrib
 ;
syntax Div_attlist
        = Align_attrib
        | Common_attrib
 ;
syntax Dl_attlist
        = "compact" compact?
        | Common_attrib
 ;
syntax Heading_attrib
        = Align_attrib
        | Common_attrib
 ;
syntax Hr_attlist
        = ("left" | "center" | "right") align? "noshade" noshade? Pixels_datatype size? Pixels_datatype width?
        | Common_attrib
 ;
syntax Li_attlist
        = String type? String value?
        | Common_attrib
 ;
syntax Ol_attlist
        = String type? "compact" compact? String start?
        | Common_attrib
 ;
syntax P_attlist
        = Align_attrib
        | Common_attrib
 ;
syntax Pre_attlist
        = Length_datatype width?
        | Common_attrib "preserve" xml:space?
 ;
syntax Script_attlist
        = ContentType_datatype language?
        | Charset_datatype charset? ContentType_datatype type URI_datatype src? "defer" defer? "preserve" xml:space?
 ;
syntax Table_attlist
        = Align_attrib Color_datatype bgcolor?
        | Length_datatype width? Pixels_datatype border? Frame_attrib Rules_attrib Length_datatype cellspacing? Length_datatype cellpadding?
 ;
syntax Tr_attlist
        = 
        Color_datatype bgcolor?
 ;
syntax Cell_attrib
        = 
        "nowrap" nowrap? Color_datatype bgcolor? Pixels_datatype width? Pixels_datatype height?
 ;
syntax Ul_attlist
        = String type? "compact" compact?
        | Common_attrib
 ;
syntax Align_attrib
        = 
        ("left" | "all" | "right" | "none") align?
 ;
syntax Color_datatype
        = 
        String
 ;
syntax List_class
        = Dir
        | Menu
        | Ul
        | Ol
        | Dl
 ;
syntax Block_mix
        = String
        | Inline_class
        | Block_class
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
syntax Ul
        = 
        ul: Ul_attlist Li+
 ;
syntax Li
        = 
        li: Li_attlist Flow_model
 ;
syntax Meta
        = 
        meta: Meta_attlist
 ;
syntax Meta_attlist
        = 
        I18n_attrib NMTOKEN_datatype http-equiv? NMTOKEN_datatype name? String content? String scheme?
 ;
syntax Frame_attrib
        = Name_attlist
        | ("void" | "above" | "below" | "hsides" | "lhs" | "rhs" | "vsides" | "box" | "border") frame?
 ;
syntax Name_attlist
        = 
        String name?
 ;
syntax Object
        = 
        object: Object_attlist Param* Flow_model
 ;
syntax Param
        = 
        param: Param_attlist
 ;
syntax Param_attlist
        = 
        Id_attrib String name String value? ("data" | "ref" | "object") valuetype? ContentType_datatype type?
 ;
syntax Hr
        = 
        hr: Hr_attlist
 ;
syntax B
        = 
        b: B_attlist Inline_model
 ;
syntax B_attlist
        = 
        Common_attrib
 ;
syntax Big
        = 
        big: Big_attlist Inline_model
 ;
syntax Big_attlist
        = 
        Common_attrib
 ;
syntax I
        = 
        i: I_attlist Inline_model
 ;
syntax I_attlist
        = 
        Common_attrib
 ;
syntax Small
        = 
        small: Small_attlist Inline_model
 ;
syntax Small_attlist
        = 
        Common_attrib
 ;
syntax Sub
        = 
        sub: Sub_attlist Inline_model
 ;
syntax Sub_attlist
        = 
        Common_attrib
 ;
syntax Sup
        = 
        sup: Sup_attlist Inline_model
 ;
syntax Sup_attlist
        = 
        Common_attrib
 ;
syntax Tt
        = 
        tt: Tt_attlist Inline_model
 ;
syntax Tt_attlist
        = 
        Common_attrib
 ;
syntax Script
        = 
        script: Script_attlist String
 ;
syntax Noscript
        = 
        noscript: Noscript_attlist Block_model
 ;
syntax Noscript_attlist
        = 
        Common_attrib
 ;
syntax Script_class
        = Noscript
        | Script
 ;
syntax Style
        = 
        style: Style_attlist String
 ;
syntax Style_attlist
        = 
        Title_attrib I18n_attrib ContentType_datatype type MediaDesc_datatype media? "preserve" xml:space?
 ;
syntax Col
        = 
        col: Col_attlist
 ;
syntax Col_attlist
        = 
        Common_attrib Number_datatype span? MultiLength_datatype width? CellHAlign_attrib CellVAlign_attrib
 ;
syntax Colgroup
        = 
        colgroup: Colgroup_attlist Col*
 ;
syntax Colgroup_attlist
        = 
        Common_attrib Number_datatype span? MultiLength_datatype width? CellHAlign_attrib CellVAlign_attrib
 ;
syntax Tbody
        = 
        tbody: Tbody_attlist Tr+
 ;
syntax Tbody_attlist
        = 
        Common_attrib CellHAlign_attrib CellVAlign_attrib
 ;
syntax Thead
        = 
        thead: Thead_attlist Tr+
 ;
syntax Thead_attlist
        = 
        Common_attrib CellHAlign_attrib CellVAlign_attrib
 ;
syntax Tfoot
        = 
        tfoot: Tfoot_attlist Tr+
 ;
syntax Tfoot_attlist
        = 
        Common_attrib CellHAlign_attrib CellVAlign_attrib
 ;
syntax Rules_attrib
        = 
        ("none" | "groups" | "rows" | "cols" | "all") rules?
 ;
syntax Link_attrib
        = 
        Target_attrib
 ;
syntax Target_attrib
        = 
        String target?
 ;
syntax Br
        = 
        br: Br_attlist
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
syntax P
        = 
        p: P_attlist Inline_model
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
syntax Block_model
        = 
        Block_mix+
 ;
syntax Flow_model
        = 
        (String | Inline_class | Block_class)*
 ;
