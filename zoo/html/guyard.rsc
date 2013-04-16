@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Guyard

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax ValuedElement
        = CDATA
        | PCDATA
        | NMTOKEN
        | IDREF
        | ID
 ;
syntax CDATA
        = ContentType
        | Charset
        | Character
        | Number
        | LinkTypes
        | MediaDesc
        | URI
        | Datetime
        | ScriptExpression
        | StyleSheet
        | Text
        | Length
        | MultiLength
        | Pixels
 ;
syntax PCDATA
        = Title
        | Style
        | Script
        | Textarea
 ;
syntax NMTOKEN
        = 
        LanguageCode
 ;
syntax IDREF
        = 
        value: String
 ;
syntax IDREFS
        = 
        IDREF idrefs+
 ;
syntax ID
        = 
        value: String
 ;
syntax EMPTY
        = Base
        | Meta
        | Link
        | Hr
        | Br
        | Param
        | Img
        | Area
        | Input
        | Col
 ;
syntax ContentType
        = 
        ()
 ;
syntax ContentTypes
        = 
        contentTypes: ContentType
 ;
syntax Charset
        = 
        ()
 ;
syntax Charsets
        = 
        charsets: Charset
 ;
syntax LanguageCode
        = 
        ()
 ;
syntax Character
        = 
        ()
 ;
syntax Number
        = 
        ()
 ;
syntax LinkTypes
        = 
        ()
 ;
syntax MediaDesc
        = 
        ()
 ;
syntax URI
        = 
        ()
 ;
syntax UriList
        = 
        uris: URI
 ;
syntax Datetime
        = 
        ()
 ;
syntax ScriptExpression
        = 
        ()
 ;
syntax StyleSheet
        = 
        ()
 ;
syntax Text
        = 
        ()
 ;
syntax Length
        = 
        ()
 ;
syntax MultiLength
        = 
        ()
 ;
syntax Pixels
        = 
        ()
 ;
syntax Shape
        = rect: ()
        | circle: ()
        | poly: ()
        | default: ()
 ;
syntax Coords
        = 
        lengths: Length
 ;
syntax CoreAttrs
        = Attrs
        | Bdo
 ;
syntax Direction
        = ltr: ()
        | rtl: ()
 ;
syntax I18n
        = 
        Map
 ;
syntax Attrs
        = Body
        | Li
        | DlElement
        | Caption
        | Noscript
        | Div
        | P
        | H1
        | H2
        | H3
        | H4
        | H5
        | H6
        | Ul
        | Ol
        | Dl
        | Address
        | Pre
        | Blockquote
        | Ins
        | Del
        | A
        | Span
        | Em
        | Strong
        | Dfn
        | Code
        | Samp
        | Kbd
        | Var
        | Cite
        | Abbr
        | Acronym
        | Q
        | Sub
        | Sup
        | Tt
        | I
        | B
        | Big
        | Small
        | Object
        | Form
        | Label
        | Select
        | Fieldset
        | Legend
        | Button
        | Table
        | Thead
        | Tfoot
        | Tbody
        | Colgroup
        | Tr
        | Optgroup
 ;
syntax Specialpre
        = 
        Span
 ;
syntax Special
        = 
        Specialpre
 ;
syntax Fontstyle
        = Tt
        | I
        | B
        | Big
        | Small
 ;
syntax Phrase
        = Em
        | Strong
        | Dfn
        | Code
        | Samp
        | Kbd
        | Var
        | Cite
        | Abbr
        | Acronym
        | Q
        | Sub
        | Sup
 ;
syntax Inlineforms
        = Label
        | Select
 ;
syntax Miscinline
        = Ins
        | Del
 ;
syntax Misc
        = Miscinline
        | Noscript
 ;
syntax Inline
        = Special
        | Fontstyle
        | Phrase
        | Inlineforms
 ;
syntax Inline
        = 
        Inline
 ;
syntax Heading
        = H1
        | H2
        | H3
        | H4
        | H5
        | H6
 ;
syntax Lists
        = Ul
        | Ol
        | Dl
 ;
syntax Blocktext
        = Address
        | Pre
        | Blockquote
 ;
syntax Block
        = Heading
        | Lists
        | Blocktext
        | Fieldset
 ;
syntax Block
        = Misc
        | Block
 ;
syntax Flow
        = 
        Inline
 ;
syntax PreContent
        = 
        Specialpre
 ;
syntax ButtonContent
        = Special
        | Heading
        | Lists
        | Blocktext
 ;
syntax Html
        = 
        I18n i18n ID id URI xmlns Head head Body body
 ;
syntax HeadMisc
        = Meta
        | Style
 ;
syntax Head
        = 
        I18n i18n ID id URI profile HeadMisc headmisc+ HeadElement headelement Html html
 ;
syntax HeadElement
        = TitleHeadElement
        | BaseHeadElement
 ;
syntax TitleHeadElement
        = 
        Title title HeadMisc headmisc+ BaseTitleHeadElement baseTitleHeadElement+
 ;
syntax BaseTitleHeadElement
        = 
        Base base HeadMisc headmisc+
 ;
syntax BaseHeadElement
        = 
        Base base HeadMisc headmisc+ TitleBaseHeadElement titleBaseHeadElement+
 ;
syntax TitleBaseHeadElement
        = 
        Title title HeadMisc headmisc+
 ;
syntax Title
        = 
        I18n i18n ID id
 ;
syntax Base
        = 
        URI href ID id
 ;
syntax Meta
        = 
        I18n i18n ID id CDATA httpequiv CDATA name CDATA content CDATA scheme
 ;
syntax Link
        = 
        Charset charset URI href LanguageCode hreflang ContentType type LinkTypes rel LinkTypes rev MediaDesc media
 ;
syntax Style
        = 
        I18n i18n ID id ContentType type MediaDesc media Text title String xml:space
 ;
syntax Script
        = 
        ID id Charset charset ContentType type URI src String defer String xml:space
 ;
syntax Noscript
        = 
        block: Block
 ;
syntax Body
        = 
        Block bodyElements+ ScriptExpression onload ScriptExpression onunload Html html
 ;
syntax Div
        = 
        Flow divElements+
 ;
syntax P
        = 
        Inline pElements+
 ;
syntax H1
        = 
        Inline h1Elements+
 ;
syntax H2
        = 
        Inline h2Elements+
 ;
syntax H3
        = 
        Inline h3Elements+
 ;
syntax H4
        = 
        Inline h4Elements+
 ;
syntax H5
        = 
        Inline h5Elements+
 ;
syntax H6
        = 
        Inline h6Elements+
 ;
syntax Ul
        = 
        Li li+
 ;
syntax Ol
        = 
        Li li+
 ;
syntax Li
        = 
        Flow liElements+
 ;
syntax Dl
        = 
        DlElement dlElements+
 ;
syntax DlElement
        = Dt
        | Dd
 ;
syntax Dt
        = 
        Inline dtElements+
 ;
syntax Dd
        = 
        Flow ddElements+
 ;
syntax Address
        = 
        Inline addressElements+
 ;
syntax Hr
        = 
        ()
 ;
syntax Pre
        = 
        PreContent preElements+ String xml:space
 ;
syntax Blockquote
        = 
        Block blockquoteElements+ URI cite
 ;
syntax Ins
        = 
        Flow flowelement+ URI cite Datetime datetime
 ;
syntax Del
        = 
        Flow flowelement+ URI cite Datetime datetime
 ;
syntax A
        = 
        AContent acontent+ Charset charset ContentType type NMTOKEN name URI href LanguageCode hreflang LinkTypes rel LinkTypes rev Shape shape Coords coords
 ;
syntax Span
        = 
        Inline spanElements+
 ;
syntax Bdo
        = 
        Inline bdoElements+ LanguageCode lang LanguageCode xml:lang Direction dir
 ;
syntax Br
        = 
        ()
 ;
syntax Em
        = 
        Inline emElements+
 ;
syntax Strong
        = 
        Inline strongElements+
 ;
syntax Dfn
        = 
        Inline dfnElements+
 ;
syntax Code
        = 
        Inline codeElements+
 ;
syntax Samp
        = 
        Inline sampElements+
 ;
syntax Kbd
        = 
        Inline kbdElements+
 ;
syntax Var
        = 
        Inline varElements+
 ;
syntax Cite
        = 
        Inline citeElements+
 ;
syntax Abbr
        = 
        Inline abbrElements+
 ;
syntax Acronym
        = 
        Inline acronymElements+
 ;
syntax Q
        = 
        Inline qElements+ URI cite
 ;
syntax Sub
        = 
        Inline subElements+
 ;
syntax Sup
        = 
        Inline supElements+
 ;
syntax Tt
        = 
        Inline ttElements+
 ;
syntax I
        = 
        Inline iElements+
 ;
syntax B
        = 
        Inline bElements+
 ;
syntax Big
        = 
        Inline bigElements+
 ;
syntax Small
        = 
        Inline smallElements+
 ;
syntax ObjectElement
        = 
        Param
 ;
syntax Object
        = 
        ObjectElement objectelement+ Boolean declare URI classid URI codebase URI data ContentType type ContentType codetype UriList archive Text standby Length height Length width URI usemap NMTOKEN name Number tabindex
 ;
syntax ValueType
        = data: ()
        | ref: ()
        | object: ()
 ;
syntax Param
        = 
        ID id CDATA name CDATA value ValueType valuetype ContentType type
 ;
syntax Img
        = 
        URI src Text alt URI longdesc Length height Length width URI usemap Boolean ismap
 ;
syntax MapContent
        = 
        MapElement mapElements+
 ;
syntax Map
        = 
        MapContent mapelement ID id CDATA class StyleSheet style Text title NMTOKEN name
 ;
syntax Area
        = 
        Shape shape Coords coords URI href Boolean nohref Text alt
 ;
syntax FomeMethod
        = get: ()
        | post: ()
 ;
syntax Form
        = 
        FormContent formelement+ URI action FomeMethod method ContentType enctype ScriptExpression onsubmit ScriptExpression onreset ContentTypes accept Charsets accept-charset
 ;
syntax Label
        = 
        Inline labelelements+ IDREF for Character accesskey ScriptExpression onfocus ScriptExpression onblur
 ;
syntax InputType
        = text: ()
        | password: ()
        | checkbox: ()
        | radio: ()
        | submit: ()
        | reset: ()
        | file: ()
        | hidden: ()
        | image: ()
        | button: ()
 ;
syntax Input
        = 
        InputType type CDATA name CDATA value Boolean checked Boolean disabled Boolean readonly CDATA size Number maxlength URI src CDATA alt URI usemap ScriptExpression onselect ScriptExpression onchange ContentTypes accept
 ;
syntax Select
        = 
        SelectElement selectelement+ CDATA name Number size Boolean multiple Boolean disabled Number tabindex ScriptExpression onfocus ScriptExpression onblur ScriptExpression onchange
 ;
syntax SelectElement
        = Optgroup
        | Option
 ;
syntax Optgroup
        = 
        Option options+ Boolean disabled Text label
 ;
syntax Option
        = 
        Boolean selected Boolean disabled Text label CDATA optionvalue
 ;
syntax Textarea
        = 
        CDATA name Number rows Number cols Boolean disabled Boolean readonly ScriptExpression onselect ScriptExpression onchange
 ;
syntax FieldsetElement
        = 
        Legend
 ;
syntax Fieldset
        = 
        FieldsetElement fieldsetelements+
 ;
syntax Legend
        = 
        Inline legendelement+ Character accesskey
 ;
syntax ButtonType
        = button: ()
        | submit: ()
        | reset: ()
 ;
syntax Button
        = 
        ButtonContent buttoncontent+ CDATA name CDATA value ButtonType type Boolean disabled
 ;
syntax TFrame
        = void: ()
        | above: ()
        | below: ()
        | hsides: ()
        | lhs: ()
        | rhs: ()
        | vsides: ()
        | box: ()
        | border: ()
 ;
syntax TRules
        = none: ()
        | groups: ()
        | rows: ()
        | cols: ()
        | all: ()
 ;
syntax CellHAlign
        = left: ()
        | center: ()
        | right: ()
        | justify: ()
        | char: ()
 ;
syntax CellVAlign
        = top: ()
        | middle: ()
        | bottom: ()
        | baseline: ()
 ;
syntax Table
        = 
        Caption caption+ ColElement colelement Thead thead Tfoot tfoot TableElement tableelement Text summary Length width Pixels border TFrame frame TRules rules Length cellspacing Length cellpadding
 ;
syntax ColElement
        = 
        Col cols+ Colgroup colgroup+
 ;
syntax TableElement
        = 
        Tbody tbody+ Tr tr+
 ;
syntax Caption
        = 
        Inline captionelement+
 ;
syntax Thead
        = 
        Tr tr+
 ;
syntax Tfoot
        = 
        Tr tr+
 ;
syntax Tbody
        = 
        Tr tr+
 ;
syntax Colgroup
        = 
        Col cols+ Number span MultiLength width
 ;
syntax Col
        = 
        Number span MultiLength width
 ;
syntax Tr
        = 
        TrElement trelements+
 ;
syntax TrElement
        = Th
        | Td
 ;
syntax Scope
        = row: ()
        | col: ()
        | rowgroup: ()
        | colgroup: ()
 ;
syntax Th
        = 
        Flow thelement+ Text abbr CDATA axis IDREFS headers Scope scope Number rowspan Number colspan
 ;
syntax Td
        = 
        Flow tdelement+ Text abbr CDATA axis IDREFS headers Scope scope Number rowspan Number colspan
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
