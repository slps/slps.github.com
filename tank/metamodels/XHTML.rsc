@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XHTML

syntax ValuedElement
        = 
        ()
 ;
syntax CDATA
        = 
        ANY value
 ;
syntax PCDATA
        = 
        ANY value
 ;
syntax NMTOKEN
        = 
        ANY value
 ;
syntax IDREF
        = 
        ANY value
 ;
syntax IDREFS
        = 
        ANY idrefs+
 ;
syntax ID
        = 
        ANY value
 ;
syntax EMPTY
        = 
        ()
 ;
syntax ContentType
        = 
        ()
 ;
syntax ContentTypes
        = 
        contentTypes: ANY
 ;
syntax Charset
        = 
        ()
 ;
syntax Charsets
        = 
        charsets: ANY
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
        uris: ANY
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
        lengths: ANY
 ;
syntax CoreAttrs
        = 
        ()
 ;
syntax Direction
        = ltr: ()
        | rtl: ()
 ;
syntax I18n
        = 
        ()
 ;
syntax Events
        = 
        ()
 ;
syntax Attrs
        = 
        ()
 ;
syntax Focus
        = 
        ()
 ;
syntax Specialpre
        = 
        ()
 ;
syntax Special
        = 
        ()
 ;
syntax Fontstyle
        = 
        ()
 ;
syntax Phrase
        = 
        ()
 ;
syntax Inlineforms
        = 
        ()
 ;
syntax Miscinline
        = 
        ()
 ;
syntax Misc
        = 
        ()
 ;
syntax Inline
        = 
        ()
 ;
syntax Inline
        = 
        ()
 ;
syntax Heading
        = 
        ()
 ;
syntax Lists
        = 
        ()
 ;
syntax Blocktext
        = 
        ()
 ;
syntax Block
        = 
        ()
 ;
syntax Block
        = 
        ()
 ;
syntax Flow
        = 
        ()
 ;
syntax AContent
        = 
        ()
 ;
syntax PreContent
        = 
        ()
 ;
syntax FormContent
        = 
        ()
 ;
syntax ButtonContent
        = 
        ()
 ;
syntax Html
        = 
        ANY i18n ANY id ANY xmlns ANY head ANY body
 ;
syntax HeadMisc
        = 
        ()
 ;
syntax Head
        = 
        ANY i18n ANY id ANY profile ANY headmisc+ ANY headelement ANY html
 ;
syntax HeadElement
        = 
        ()
 ;
syntax TitleHeadElement
        = 
        ANY title ANY headmisc+ ANY baseTitleHeadElement+
 ;
syntax BaseTitleHeadElement
        = 
        ANY base ANY headmisc+
 ;
syntax BaseHeadElement
        = 
        ANY base ANY headmisc+ ANY titleBaseHeadElement+
 ;
syntax TitleBaseHeadElement
        = 
        ANY title ANY headmisc+
 ;
syntax Title
        = 
        ANY i18n ANY id
 ;
syntax Base
        = 
        ANY href ANY id
 ;
syntax Meta
        = 
        ANY i18n ANY id ANY httpequiv ANY name ANY content ANY scheme
 ;
syntax Link
        = 
        ANY charset ANY href ANY hreflang ANY type ANY rel ANY rev ANY media
 ;
syntax Style
        = 
        ANY i18n ANY id ANY type ANY media ANY title ANY xml:space
 ;
syntax Script
        = 
        ANY id ANY charset ANY type ANY src ANY defer ANY xml:space
 ;
syntax Noscript
        = 
        block: ANY
 ;
syntax Body
        = 
        ANY bodyElements+ ANY onload ANY onunload ANY html
 ;
syntax Div
        = 
        ANY divElements+
 ;
syntax P
        = 
        ANY pElements+
 ;
syntax H1
        = 
        ANY h1Elements+
 ;
syntax H2
        = 
        ANY h2Elements+
 ;
syntax H3
        = 
        ANY h3Elements+
 ;
syntax H4
        = 
        ANY h4Elements+
 ;
syntax H5
        = 
        ANY h5Elements+
 ;
syntax H6
        = 
        ANY h6Elements+
 ;
syntax Ul
        = 
        ANY li+
 ;
syntax Ol
        = 
        ANY li+
 ;
syntax Li
        = 
        ANY liElements+
 ;
syntax Dl
        = 
        ANY dlElements+
 ;
syntax DlElement
        = 
        ()
 ;
syntax Dt
        = 
        ANY dtElements+
 ;
syntax Dd
        = 
        ANY ddElements+
 ;
syntax Address
        = 
        ANY addressElements+
 ;
syntax Hr
        = 
        ()
 ;
syntax Pre
        = 
        ANY preElements+ ANY xml:space
 ;
syntax Blockquote
        = 
        ANY blockquoteElements+ ANY cite
 ;
syntax Ins
        = 
        ANY flowelement+ ANY cite ANY datetime
 ;
syntax Del
        = 
        ANY flowelement+ ANY cite ANY datetime
 ;
syntax A
        = 
        ANY acontent+ ANY charset ANY type ANY name ANY href ANY hreflang ANY rel ANY rev ANY shape ANY coords
 ;
syntax Span
        = 
        ANY spanElements+
 ;
syntax Bdo
        = 
        ANY bdoElements+ ANY lang ANY xml:lang ANY dir
 ;
syntax Br
        = 
        ()
 ;
syntax Em
        = 
        ANY emElements+
 ;
syntax Strong
        = 
        ANY strongElements+
 ;
syntax Dfn
        = 
        ANY dfnElements+
 ;
syntax Code
        = 
        ANY codeElements+
 ;
syntax Samp
        = 
        ANY sampElements+
 ;
syntax Kbd
        = 
        ANY kbdElements+
 ;
syntax Var
        = 
        ANY varElements+
 ;
syntax Cite
        = 
        ANY citeElements+
 ;
syntax Abbr
        = 
        ANY abbrElements+
 ;
syntax Acronym
        = 
        ANY acronymElements+
 ;
syntax Q
        = 
        ANY qElements+ ANY cite
 ;
syntax Sub
        = 
        ANY subElements+
 ;
syntax Sup
        = 
        ANY supElements+
 ;
syntax Tt
        = 
        ANY ttElements+
 ;
syntax I
        = 
        ANY iElements+
 ;
syntax B
        = 
        ANY bElements+
 ;
syntax Big
        = 
        ANY bigElements+
 ;
syntax Small
        = 
        ANY smallElements+
 ;
syntax ObjectElement
        = 
        ()
 ;
syntax Object
        = 
        ANY objectelement+ ANY declare ANY classid ANY codebase ANY data ANY type ANY codetype ANY archive ANY standby ANY height ANY width ANY usemap ANY name ANY tabindex
 ;
syntax ValueType
        = data: ()
        | ref: ()
        | object: ()
 ;
syntax Param
        = 
        ANY id ANY name ANY value ANY valuetype ANY type
 ;
syntax Img
        = 
        ANY src ANY alt ANY longdesc ANY height ANY width ANY usemap ANY ismap
 ;
syntax MapContent
        = 
        ANY mapElements+
 ;
syntax MapElement
        = 
        ()
 ;
syntax MapElementContent
        = 
        ()
 ;
syntax Map
        = 
        ANY mapelement ANY id ANY class ANY style ANY title ANY name
 ;
syntax Area
        = 
        ANY shape ANY coords ANY href ANY nohref ANY alt
 ;
syntax FomeMethod
        = get: ()
        | post: ()
 ;
syntax Form
        = 
        ANY formelement+ ANY action ANY method ANY enctype ANY onsubmit ANY onreset ANY accept ANY accept-charset
 ;
syntax Label
        = 
        ANY labelelements+ ANY for ANY accesskey ANY onfocus ANY onblur
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
        ANY type ANY name ANY value ANY checked ANY disabled ANY readonly ANY size ANY maxlength ANY src ANY alt ANY usemap ANY onselect ANY onchange ANY accept
 ;
syntax Select
        = 
        ANY selectelement+ ANY name ANY size ANY multiple ANY disabled ANY tabindex ANY onfocus ANY onblur ANY onchange
 ;
syntax SelectElement
        = 
        ()
 ;
syntax Optgroup
        = 
        ANY options+ ANY disabled ANY label
 ;
syntax Option
        = 
        ANY selected ANY disabled ANY label ANY optionvalue
 ;
syntax Textarea
        = 
        ANY name ANY rows ANY cols ANY disabled ANY readonly ANY onselect ANY onchange
 ;
syntax FieldsetElement
        = 
        ()
 ;
syntax Fieldset
        = 
        ANY fieldsetelements+
 ;
syntax Legend
        = 
        ANY legendelement+ ANY accesskey
 ;
syntax ButtonType
        = button: ()
        | submit: ()
        | reset: ()
 ;
syntax Button
        = 
        ANY buttoncontent+ ANY name ANY value ANY type ANY disabled
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
syntax Cellhalign
        = 
        ()
 ;
syntax CellVAlign
        = top: ()
        | middle: ()
        | bottom: ()
        | baseline: ()
 ;
syntax Cellvalign
        = 
        ()
 ;
syntax Table
        = 
        ANY caption+ ANY colelement ANY thead ANY tfoot ANY tableelement ANY summary ANY width ANY border ANY frame ANY rules ANY cellspacing ANY cellpadding
 ;
syntax ColElement
        = 
        ANY cols+ ANY colgroup+
 ;
syntax TableElement
        = 
        ANY tbody+ ANY tr+
 ;
syntax Caption
        = 
        ANY captionelement+
 ;
syntax Thead
        = 
        ANY tr+
 ;
syntax Tfoot
        = 
        ANY tr+
 ;
syntax Tbody
        = 
        ANY tr+
 ;
syntax Colgroup
        = 
        ANY cols+ ANY span ANY width
 ;
syntax Col
        = 
        ANY span ANY width
 ;
syntax Tr
        = 
        ANY trelements+
 ;
syntax TrElement
        = 
        ()
 ;
syntax Scope
        = row: ()
        | col: ()
        | rowgroup: ()
        | colgroup: ()
 ;
syntax Th
        = 
        ANY thelement+ ANY abbr ANY axis ANY headers ANY scope ANY rowspan ANY colspan
 ;
syntax Td
        = 
        ANY tdelement+ ANY abbr ANY axis ANY headers ANY scope ANY rowspan ANY colspan
 ;
