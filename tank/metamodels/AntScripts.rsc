@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module AntScripts

syntax NamedElement
        = 
        ()
 ;
syntax DescribableElement
        = 
        ()
 ;
syntax CommentableElement
        = 
        ()
 ;
syntax Project
        = 
        ANY properties+ ANY targets+ ANY defaultTarget
 ;
syntax Property
        = 
        ANY name ANY value ANY location ANY refid ANY resource ANY file ANY url ANY environment ANY classpath ANY classpathref ANY prefix
 ;
syntax Target
        = 
        ANY if ANY unless ANY tasks+ ANY depends+
 ;
syntax TaskElement
        = 
        ()
 ;
syntax Attribute
        = 
        value: ANY
 ;
syntax Task
        = 
        ANY attributes+ ANY elements+
 ;
syntax TaskParameter
        = 
        ANY attributes+ ANY elements+
 ;
