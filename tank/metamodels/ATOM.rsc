@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ATOM

syntax ATOM
        = 
        ANY title ANY id ANY subtitle ANY rights ANY icon ANY logo ANY links+ ANY lastUpdate ANY generator ANY categories+ ANY authors+ ANY contibutors+ ANY entries+
 ;
syntax Entry
        = 
        ANY title ANY id ANY rights ANY summary ANY links+ ANY source ANY published ANY lastUpdate ANY content ANY categories+ ANY authors+ ANY contibutors+ ANY atom
 ;
syntax Source
        = 
        ANY id ANY icon ANY logo ANY rights ANY title ANY subtitle ANY links+ ANY lastUpdate ANY generator ANY contributors+ ANY categories+ ANY author
 ;
syntax Content
        = 
        type: ANY
 ;
syntax InLineXHTMLContent
        = 
        ()
 ;
syntax InLineOtherContent
        = 
        ()
 ;
syntax OutOfLineContent
        = 
        src: ANY
 ;
syntax Generator
        = 
        ANY uri ANY version
 ;
syntax Category
        = 
        ANY term ANY scheme ANY label
 ;
syntax Link
        = 
        ANY href ANY rel ANY type ANY hreflang ANY title ANY lenght
 ;
syntax Person
        = 
        ANY name ANY uri ANY email
 ;
syntax Author
        = 
        ()
 ;
syntax Contributor
        = 
        ()
 ;
syntax Date
        = 
        ANY day ANY month ANY year ANY hours ANY minutes ANY seconds
 ;
