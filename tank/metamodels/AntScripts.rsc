@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module AntScripts

syntax NamedElement
        = Attribute
        | Project
        | Target
        | TaskElement
 ;
syntax CommentableElement
        = 
        TaskElement
 ;
syntax Project
        = 
        Property properties+ Target targets+ Target defaultTarget
 ;
syntax Property
        = 
        String name String value String location String refid String resource String file String url String environment String classpath String classpathref String prefix
 ;
syntax Target
        = 
        String if String unless Task tasks+ Target depends+
 ;
syntax TaskElement
        = Task
        | TaskParameter
 ;
syntax Attribute
        = 
        value: String
 ;
syntax Task
        = 
        Attribute attributes+ TaskElement elements+
 ;
syntax TaskParameter
        = 
        Attribute attributes+ TaskElement elements+
 ;
syntax String
        = 
        String
 ;
