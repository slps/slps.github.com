@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HTML

syntax HTML
        = 
        ANY head ANY body
 ;
syntax HTMLElement
        = 
        ANY value ANY children+ ANY parent
 ;
syntax HEAD
        = 
        ANY headElements+ ANY html
 ;
syntax HEADElement
        = 
        ()
 ;
syntax LINK
        = 
        ANY rel ANY title ANY ahref ANY type
 ;
syntax TITLE
        = 
        ANY head
 ;
syntax BODY
        = 
        ANY background ANY bgcolor ANY text ANY link ANY alink ANY vlink ANY bodyElements+ ANY html
 ;
syntax BODYElement
        = 
        ()
 ;
syntax H1
        = 
        ANY body
 ;
syntax H2
        = 
        ANY body
 ;
syntax H3
        = 
        ANY body
 ;
syntax H4
        = 
        ANY body
 ;
syntax EM
        = 
        ANY body
 ;
syntax STRONG
        = 
        ANY body
 ;
syntax B
        = 
        ANY body
 ;
syntax I
        = 
        ANY body
 ;
syntax TT
        = 
        ANY body
 ;
syntax PRE
        = 
        ANY body
 ;
syntax BIG
        = 
        ANY body
 ;
syntax SMALL
        = 
        ANY body
 ;
syntax SUB
        = 
        ANY body
 ;
syntax SUP
        = 
        ANY body
 ;
syntax STRIKE
        = 
        ANY body
 ;
syntax FONT
        = 
        ANY color ANY face ANY size
 ;
syntax IMG
        = 
        ANY src ANY width ANY height ANY alt ANY align ANY vspace ANY hspace ANY ismap ANY usemap ANY border
 ;
syntax BR
        = 
        clear: ANY
 ;
syntax MAP
        = 
        ANY body
 ;
syntax AREA
        = 
        ANY shape ANY coords ANY ahref
 ;
syntax STYLE
        = 
        ANY body
 ;
syntax EMBED
        = 
        ANY src ANY width ANY height ANY align ANY vspace ANY hspace ANY border
 ;
syntax NOEMBED
        = 
        ANY body
 ;
syntax SPAN
        = 
        style: ANY
 ;
syntax A
        = 
        ANY ahref ANY name ANY id
 ;
syntax DIV
        = 
        align: ANY
 ;
syntax P
        = 
        ANY body
 ;
syntax TABLEElement
        = 
        ()
 ;
syntax TABLE
        = 
        ANY border ANY width ANY cellspacing ANY cellpadding ANY trs+
 ;
syntax TR
        = 
        ANY valign ANY align ANY table ANY tds+
 ;
syntax TD
        = 
        ANY colspan ANY rowspan ANY valign ANY align ANY width ANY tr
 ;
syntax TH
        = 
        ()
 ;
syntax FORM
        = 
        ANY action ANY method
 ;
syntax INPUT
        = 
        ANY align ANY maxlength ANY size ANY checked ANY src ANY inputValue ANY name ANY type
 ;
syntax TEXTAREA
        = 
        ANY name ANY rows ANY cols
 ;
syntax SELECT
        = 
        ANY multiple ANY size ANY name
 ;
syntax OPTION
        = 
        ANY selected ANY optionValue
 ;
syntax ListElement
        = 
        ()
 ;
syntax OL
        = 
        start: ANY
 ;
syntax UL
        = 
        ANY type
 ;
syntax LI
        = 
        liValue: ANY
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
        ANY applet ANY class ANY src ANY align ANY width ANY height
 ;
syntax PARAM
        = 
        ANY name ANY paramValue
 ;
syntax OBJECT
        = 
        ANY classid ANY id ANY data ANY type ANY standby
 ;
syntax FRAMESET
        = 
        ANY rows ANY cols ANY framespacing ANY frameborder ANY border
 ;
syntax FRAME
        = 
        ANY src ANY name ANY marginwidth ANY marginheight ANY scrolling ANY noresize
 ;
syntax NOFRAME
        = 
        ()
 ;
syntax IFRAME
        = 
        ()
 ;
