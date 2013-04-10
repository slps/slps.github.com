@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Allilaire

syntax HTML
        = 
        HEAD head BODY body
 ;
syntax HTMLElement
        = HEAD
        | HEADElement
        | BODY
        | BODYElement
        | String value HTMLElement children+ HTMLElement parent
 ;
syntax HEAD
        = 
        HEADElement headElements+ HTML html
 ;
syntax HEADElement
        = LINK
        | TITLE
 ;
syntax LINK
        = 
        String rel String title String ahref String type
 ;
syntax TITLE
        = 
        head: HEAD
 ;
syntax BODY
        = 
        String background String bgcolor String text String link String alink String vlink BODYElement bodyElements+ HTML html
 ;
syntax BODYElement
        = H1
        | H2
        | H3
        | H4
        | EM
        | STRONG
        | B
        | I
        | TT
        | PRE
        | BIG
        | SMALL
        | SUB
        | SUP
        | STRIKE
        | FONT
        | IMG
        | BR
        | MAP
        | AREA
        | STYLE
        | EMBED
        | NOEMBED
        | SPAN
        | A
        | DIV
        | P
        | TABLEElement
 ;
syntax H1
        = 
        body: BODY
 ;
syntax H2
        = 
        body: BODY
 ;
syntax H3
        = 
        body: BODY
 ;
syntax H4
        = 
        body: BODY
 ;
syntax EM
        = 
        body: BODY
 ;
syntax STRONG
        = 
        body: BODY
 ;
syntax B
        = 
        body: BODY
 ;
syntax I
        = 
        body: BODY
 ;
syntax TT
        = 
        body: BODY
 ;
syntax PRE
        = 
        body: BODY
 ;
syntax BIG
        = 
        body: BODY
 ;
syntax SMALL
        = 
        body: BODY
 ;
syntax SUB
        = 
        body: BODY
 ;
syntax SUP
        = 
        body: BODY
 ;
syntax STRIKE
        = 
        body: BODY
 ;
syntax FONT
        = 
        String color String face String size
 ;
syntax IMG
        = 
        String src String width String height String alt String align String vspace String hspace String ismap String usemap String border
 ;
syntax BR
        = 
        clear: String
 ;
syntax MAP
        = 
        body: BODY
 ;
syntax AREA
        = 
        String shape String coords String ahref
 ;
syntax STYLE
        = 
        body: BODY
 ;
syntax EMBED
        = 
        String src String width String height String align String vspace String hspace String border
 ;
syntax NOEMBED
        = 
        body: BODY
 ;
syntax SPAN
        = 
        style: String
 ;
syntax A
        = 
        String ahref String name String id
 ;
syntax DIV
        = 
        align: String
 ;
syntax P
        = 
        body: BODY
 ;
syntax TABLEElement
        = TABLE
        | TR
        | TD
 ;
syntax TABLE
        = 
        String border String width String cellspacing String cellpadding TR trs+
 ;
syntax TR
        = 
        String valign String align TABLE table TD tds+
 ;
syntax TD
        = TH
        | String colspan String rowspan String valign String align String width TR tr
 ;
syntax TH
        = 
        ()
 ;
syntax FORM
        = 
        String action String method
 ;
syntax INPUT
        = 
        String align String maxlength String size String checked String src String inputValue String name String type
 ;
syntax TEXTAREA
        = 
        String name String rows String cols
 ;
syntax SELECT
        = 
        String multiple String size String name
 ;
syntax OPTION
        = 
        String selected String optionValue
 ;
syntax ListElement
        = OL
        | UL
        | LI
 ;
syntax OL
        = 
        start: String
 ;
syntax UL
        = 
        type: String
 ;
syntax LI
        = 
        liValue: String
 ;
syntax DL
        = 
        ()
 ;
syntax DT
        = 
        ()
 ;
syntax DD
        = 
        ()
 ;
syntax APPLET
        = 
        String applet String class String src String align String width String height
 ;
syntax PARAM
        = 
        String name String paramValue
 ;
syntax OBJECT
        = 
        String classid String id String data String type String standby
 ;
syntax FRAMESET
        = 
        String rows String cols String framespacing String frameborder String border
 ;
syntax FRAME
        = IFRAME
        | String src String name String marginwidth String marginheight String scrolling String noresize
 ;
syntax NOFRAME
        = 
        ()
 ;
syntax IFRAME
        = 
        ()
 ;
