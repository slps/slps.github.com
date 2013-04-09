@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Scilab

syntax Man
        = 
        ANY language ANY title ANY type ANY date ANY name ANY keyword ANY exemple ANY meta+
 ;
syntax Meta
        = 
        ANY meta ANY path ANY category ANY version_CSI ANY version_DOC ANY author ANY man
 ;
syntax Short_Description
        = 
        ANY name ANY verb+
 ;
syntax Calling_Sequence
        = 
        ANY calling_Sequence_Item+
 ;
syntax Calling_Sequence_Item
        = 
        ANY calling_Sequence_Item+ ANY calling_Sequence
 ;
syntax Param
        = 
        ANY target ANY param_Indent+
 ;
syntax Param_Indent
        = 
        ANY param ANY param_Description ANY param_Item+
 ;
syntax Param_Item
        = 
        ANY label ANY param_Indent ANY param_Name ANY param_Description
 ;
syntax Param_Name
        = 
        ANY verb+ ANY param_Item
 ;
syntax Param_Description
        = 
        ANY param_Indent+ ANY param_Item
 ;
syntax Description
        = 
        ANY itemize+ ANY description_Indent+
 ;
syntax Description_Indent
        = 
        ANY description ANY description_Item+
 ;
syntax Description_Item
        = 
        ANY label ANY description_Indent
 ;
syntax AIMG
        = 
        ANY verb+
 ;
syntax See_Also
        = 
        ANY see_Also_Item+
 ;
syntax Exemple
        = 
        ANY exemple ANY xml_space
 ;
syntax See_Also_Item
        = 
        ANY see_Also ANY link+
 ;
syntax A
        = 
        ANY href ANY psppp ANY authors_Item
 ;
syntax Img
        = 
        ANY src ANY psppp
 ;
syntax Biblio
        = 
        ANY p+ ANY sp+ ANY pp+
 ;
syntax Used_Functions
        = 
        ANY verbatim+ ANY table+
 ;
syntax PSPPP
        = 
        ANY verb+ ANY em+ ANY bd+ ANY tt+ ANY a+ ANY link+ ANY img+
 ;
syntax P
        = 
        biblio: ANY
 ;
syntax SP
        = 
        biblio: ANY
 ;
syntax PP
        = 
        biblio: ANY
 ;
syntax Itemize
        = 
        ANY label ANY item ANY section ANY authors_Item ANY description
 ;
syntax Item
        = 
        ANY itemize+
 ;
syntax Table
        = 
        ANY table_New_Row+ ANY used_Functions
 ;
syntax Table_New_Row
        = 
        ANY table_New_Column+ ANY table
 ;
syntax Table_New_Column
        = 
        ANY Verb+ ANY em+ ANY bd+ ANY tt+ ANY table_New_Row
 ;
syntax Link
        = 
        ANY link ANY psppp ANY see_Also_Item ANY authors_Item
 ;
syntax Authors
        = 
        ANY authors_Item+
 ;
syntax Authors_Item
        = 
        ANY Verb+ ANY em+ ANY bd+ ANY tt+ ANY verbatim+ ANY label ANY a+ ANY link+ ANY authors ANY itemize+
 ;
syntax Section
        = 
        ANY itemize+
 ;
syntax InOut
        = in: ()
        | out: ()
 ;
syntax PreDef
        = Preserve: ()
        | Default: ()
 ;
