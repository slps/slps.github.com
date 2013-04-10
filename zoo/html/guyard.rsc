@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Guyard

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
        = 
        Title
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
        = 
        Base
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
syntax Direction
        = ltr: ()
        | rtl: ()
 ;
syntax Attrs
        = Body
        | Li
        | DlElement
        | Caption
 ;
syntax Inline
        = 
        Inline
 ;
syntax Html
        = 
        I18n i18n ID id URI xmlns Head head Body body
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
