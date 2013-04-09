@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Ant

syntax Project
        = 
        ANY name ANY basedir ANY description ANY default ANY path ANY properties+ ANY taskdef+ ANY targets+
 ;
syntax Property
        = 
        ()
 ;
syntax PropertyName
        = 
        ()
 ;
syntax PropertyValue
        = 
        value: ANY
 ;
syntax PropertyLocation
        = 
        location: ANY
 ;
syntax PropertyFile
        = 
        file: ANY
 ;
syntax PropertyEnv
        = 
        environment: ANY
 ;
syntax Target
        = 
        ANY name ANY description ANY unless ANY ifCondition ANY depends+ ANY tasks+
 ;
syntax Pattern
        = 
        ()
 ;
syntax Basic
        = 
        ()
 ;
syntax Mapper
        = 
        ANY type ANY classname ANY classpath ANY classpathref ANY from ANY to
 ;
syntax InExcludes
        = 
        ()
 ;
syntax Includes
        = 
        ANY name ANY ifCondition ANY unless
 ;
syntax Excludes
        = 
        ANY name ANY ifCondition ANY unless
 ;
syntax IncludesFile
        = 
        ANY name ANY ifCondition ANY unless
 ;
syntax ExcludesFile
        = 
        ANY name ANY ifCondition ANY unless
 ;
syntax FileList
        = 
        ANY dir ANY files
 ;
syntax Filter
        = 
        ANY token ANY value
 ;
syntax FiltersFile
        = 
        file: ANY
 ;
syntax PathElement
        = 
        ANY path ANY location
 ;
syntax Set
        = 
        ()
 ;
syntax PatternSet
        = 
        ANY inexcludes+
 ;
syntax FileSet
        = 
        ANY dir ANY patternset+ ANY include+ ANY exclude+
 ;
syntax FilterSet
        = 
        ANY starttoken ANY endtoken ANY filter+ ANY filtersfile+
 ;
syntax Path
        = 
        ANY id ANY refid ANY path ANY pathElement+ ANY fileset+
 ;
syntax ClassPath
        = 
        ANY refid ANY pathElement+ ANY fileset+
 ;
syntax Task
        = 
        ()
 ;
syntax TaskDef
        = 
        ANY name ANY classname
 ;
syntax NewTask
        = 
        ANY taskName ANY attributes+
 ;
syntax Attribut
        = 
        ANY name ANY value
 ;
syntax PreDefinedTask
        = 
        ()
 ;
syntax ExecutionTask
        = 
        ()
 ;
syntax Exec
        = 
        ANY executable ANY dir
 ;
syntax Java
        = 
        ANY classname ANY jar ANY fork ANY classPath
 ;
syntax MiscellaneousTask
        = 
        ()
 ;
syntax Echo
        = 
        ANY message ANY file ANY append
 ;
syntax Tstamp
        = 
        ANY format+
 ;
syntax FormatTstamp
        = 
        ANY property ANY pattern ANY offset ANY unit ANY locale
 ;
syntax CompileTask
        = 
        ()
 ;
syntax Javac
        = 
        ANY srcdir ANY destdir ANY debug ANY fork ANY optimize ANY deprecation ANY inExcludes+ ANY classPath
 ;
syntax DocumentationTask
        = 
        ()
 ;
syntax Javadoc
        = 
        ANY sourcepath ANY destdir ANY packagenames ANY defaultexcludes ANY author ANY version ANY use ANY windowtitle
 ;
syntax ArchiveTask
        = 
        ()
 ;
syntax Jar
        = 
        ANY jarfile ANY basedir ANY compress ANY encoding ANY manifest
 ;
syntax FileTask
        = 
        ()
 ;
syntax Mkdir
        = 
        dir: ANY
 ;
syntax Copy
        = 
        ANY file ANY presservelastmodified ANY tofile ANY todir ANY overwrite ANY filtering ANY flatten ANY includeEmptyDirs ANY fileset ANY filterset ANY mapper
 ;
syntax Delete
        = 
        ANY file ANY dir ANY verbose ANY quiet ANY failonerror ANY includeEmptyDirs ANY includes ANY includesfile ANY excludes ANY excludesfile ANY defaultexcludes
 ;
