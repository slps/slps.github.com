@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module LaTeX

syntax ValuedElement
        = 
        ()
 ;
syntax Type
        = 
        ANY value
 ;
syntax Title
        = 
        ANY value
 ;
syntax Name
        = 
        ANY author ANY organisation
 ;
syntax Date
        = 
        ANY value
 ;
syntax Author
        = 
        ANY names+
 ;
syntax Adress
        = 
        ANY value
 ;
syntax Organisation
        = 
        ANY names+ ANY adress ANY heading
 ;
syntax Phone
        = 
        ANY value
 ;
syntax Fax
        = 
        ANY value
 ;
syntax EMail
        = 
        ANY value
 ;
syntax Heading
        = 
        ANY organisations+ ANY phone ANY fax ANY email
 ;
syntax Abstract
        = 
        ANY value
 ;
syntax Keywords
        = 
        ANY value
 ;
syntax SectionBody
        = 
        ANY corps+ ANY section
 ;
syntax Corps
        = 
        ()
 ;
syntax Value
        = 
        ()
 ;
syntax Cite
        = 
        ()
 ;
syntax Path
        = 
        ANY value
 ;
syntax Label
        = 
        ANY value
 ;
syntax Figure
        = 
        ANY path ANY label ANY title
 ;
syntax Item
        = 
        ANY itemscontainer ANY enumeratecontainer
 ;
syntax Items
        = 
        ANY item+
 ;
syntax Enumerate
        = 
        ANY item+
 ;
syntax Section
        = 
        ANY title ANY sectionBody
 ;
syntax Description
        = 
        date: ANY
 ;
syntax Citation
        = 
        ANY label ANY author ANY description ANY bibliography
 ;
syntax Bibliography
        = 
        ANY citations+ ANY documentbody
 ;
syntax DocumentBody
        = 
        ANY sections+ ANY bibliography+ ANY document
 ;
syntax Document
        = 
        ANY type ANY title ANY author ANY date ANY heading ANY abstract ANY keywords ANY documentbody
 ;
