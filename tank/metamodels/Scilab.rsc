@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Scilab

syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Man
        = 
        String language String title String type String date String name String keyword String exemple Meta meta+
 ;
syntax Meta
        = 
        String meta String path String category String version_CSI String version_DOC String author Man man
 ;
syntax Short_Description
        = 
        String name String verb+
 ;
syntax Calling_Sequence
        = 
        Calling_Sequence_Item calling_Sequence_Item+
 ;
syntax Calling_Sequence_Item
        = 
        String calling_Sequence_Item+ Calling_Sequence calling_Sequence
 ;
syntax Param
        = 
        InOut target Param_Indent param_Indent+
 ;
syntax Param_Indent
        = 
        Param param Param_Description param_Description Param_Item param_Item+
 ;
syntax Param_Item
        = 
        String label Param_Indent param_Indent Param_Name param_Name Param_Description param_Description
 ;
syntax Param_Name
        = 
        String verb+ Param_Item param_Item
 ;
syntax Param_Description
        = 
        Param_Indent param_Indent+ Param_Item param_Item
 ;
syntax Description
        = 
        Itemize itemize+ Description_Indent description_Indent+
 ;
syntax Description_Indent
        = 
        Description description Description_Item description_Item+
 ;
syntax Description_Item
        = 
        String label Description_Indent description_Indent
 ;
syntax AIMG
        = A
        | Img
        | String verb+
 ;
syntax See_Also
        = 
        See_Also_Item see_Also_Item+
 ;
syntax Exemple
        = 
        String exemple PreDef xml_space
 ;
syntax See_Also_Item
        = 
        See_Also see_Also Link link+
 ;
syntax A
        = 
        String href PSPPP psppp Authors_Item authors_Item
 ;
syntax Img
        = 
        String src PSPPP psppp
 ;
syntax Biblio
        = Short_Description
        | Used_Functions
        | Authors_Item
        | P p+ SP sp+ PP pp+
 ;
syntax Used_Functions
        = Param_Description
        | Description
        | Itemize
        | Item
        | Section
        | String verbatim+ Table table+
 ;
syntax PSPPP
        = P
        | SP
        | PP
        | String verb+ String em+ String bd+ String tt+ A a+ Link link+ Img img+
 ;
syntax P
        = 
        biblio: Biblio
 ;
syntax SP
        = 
        biblio: Biblio
 ;
syntax PP
        = 
        biblio: Biblio
 ;
syntax Itemize
        = Item
        | Section
        | String label Item item Section section Authors_Item authors_Item Description description
 ;
syntax Item
        = 
        Itemize itemize+
 ;
syntax Table
        = 
        Table_New_Row table_New_Row+ Used_Functions used_Functions
 ;
syntax Table_New_Row
        = 
        Table_New_Column table_New_Column+ Table table
 ;
syntax Table_New_Column
        = 
        String Verb+ String em+ String bd+ String tt+ Table_New_Row table_New_Row
 ;
syntax Link
        = 
        String link PSPPP psppp See_Also_Item see_Also_Item Authors_Item authors_Item
 ;
syntax Authors
        = 
        Authors_Item authors_Item+
 ;
syntax Authors_Item
        = 
        String Verb+ String em+ String bd+ String tt+ String verbatim+ String label A a+ Link link+ Authors authors Itemize itemize+
 ;
syntax Section
        = 
        Itemize itemize+
 ;
syntax InOut
        = in: ()
        | out: ()
 ;
syntax PreDef
        = Preserve: ()
        | Default: ()
 ;
