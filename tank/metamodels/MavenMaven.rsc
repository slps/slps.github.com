@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MavenMaven

syntax Project
        = 
        ANY xmlns+ ANY default ANY path ANY properties+ ANY taskdefs+ ANY prePostGoals+ ANY goals+
 ;
syntax Xmlns
        = 
        ANY name ANY value
 ;
syntax AntProperty
        = 
        ()
 ;
syntax AntPropertyName
        = 
        ()
 ;
syntax AntPropertyValue
        = 
        value: ANY
 ;
syntax AntPropertyLocation
        = 
        location: ANY
 ;
syntax AntPropertyFile
        = 
        file: ANY
 ;
syntax AntPropertyEnv
        = 
        environment: ANY
 ;
syntax JellyCommand
        = 
        ()
 ;
syntax JellySet
        = 
        ANY var ANY value
 ;
syntax JellyForEach
        = 
        ANY items ANY var ANY indexVar ANY contents
 ;
syntax AbstractGoal
        = 
        ()
 ;
syntax ContentsGoal
        = 
        ()
 ;
syntax AttainGoal
        = 
        attainGoal: ANY
 ;
syntax PrePostGoal
        = 
        ()
 ;
syntax PreGoal
        = 
        centralGoal: ANY
 ;
syntax PostGoal
        = 
        centralGoal: ANY
 ;
syntax Goal
        = 
        ANY name ANY preGoal ANY postGoal
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
syntax AntTaskDef
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
