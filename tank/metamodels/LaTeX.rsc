@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module LaTeX

syntax ValuedElement
        = Type
        | Title
        | Name
        | Date
        | Adress
        | Phone
        | Fax
        | EMail
        | Abstract
        | Keywords
        | Path
        | Label
        | Item
        | Description
 ;
syntax Type
        = 
        value: String
 ;
syntax Title
        = 
        value: String
 ;
syntax Name
        = 
        Author author Organisation organisation
 ;
syntax Date
        = 
        value: String
 ;
syntax Author
        = 
        Name names+
 ;
syntax Adress
        = 
        value: String
 ;
syntax Organisation
        = 
        Name names+ Adress adress Heading heading
 ;
syntax Phone
        = 
        value: String
 ;
syntax Fax
        = 
        value: String
 ;
syntax EMail
        = 
        value: String
 ;
syntax Heading
        = 
        Organisation organisations+ Phone phone Fax fax EMail email
 ;
syntax Abstract
        = 
        value: String
 ;
syntax Keywords
        = 
        value: String
 ;
syntax SectionBody
        = 
        Corps corps+ Section section
 ;
syntax Corps
        = Figure
        | Items
        | Enumerate
        | Section
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
        value: String
 ;
syntax Label
        = 
        value: String
 ;
syntax Figure
        = 
        Path path Label label Title title
 ;
syntax Item
        = 
        Items itemscontainer Enumerate enumeratecontainer
 ;
syntax Items
        = 
        Item item+
 ;
syntax Enumerate
        = 
        Item item+
 ;
syntax Section
        = 
        Title title SectionBody sectionBody
 ;
syntax Description
        = 
        date: Date
 ;
syntax Citation
        = 
        Label label Author author Description description Bibliography bibliography
 ;
syntax Bibliography
        = 
        Citation citations+ DocumentBody documentbody
 ;
syntax DocumentBody
        = 
        Section sections+ Bibliography bibliography+ Document document
 ;
syntax Document
        = 
        Type type Title title Author author Date date Heading heading Abstract abstract Keywords keywords DocumentBody documentbody
 ;
