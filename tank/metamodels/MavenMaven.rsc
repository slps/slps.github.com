@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MavenMaven

syntax Project
        = 
        Xmlns xmlns+ Goal default Path path AntProperty properties+ AntTaskDef taskdefs+ PrePostGoal prePostGoals+ Goal goals+
 ;
syntax Xmlns
        = 
        String name String value
 ;
syntax AntProperty
        = AntPropertyName
        | AntPropertyFile
        | AntPropertyEnv
 ;
syntax AntPropertyName
        = AntPropertyValue
        | AntPropertyLocation
 ;
syntax AntPropertyValue
        = 
        value: String
 ;
syntax AntPropertyLocation
        = 
        location: String
 ;
syntax AntPropertyFile
        = 
        file: String
 ;
syntax AntPropertyEnv
        = 
        environment: String
 ;
syntax JellyCommand
        = JellySet
        | JellyForEach
 ;
syntax JellySet
        = 
        String var String value
 ;
syntax JellyForEach
        = 
        String items String var String indexVar ContentsGoal contents
 ;
syntax AbstractGoal
        = PrePostGoal
        | Goal
 ;
syntax ContentsGoal
        = AntProperty
        | JellyCommand
        | AttainGoal
        | Task
        | AntTaskDef
 ;
syntax AttainGoal
        = 
        attainGoal: Goal
 ;
syntax PrePostGoal
        = PreGoal
        | PostGoal
 ;
syntax PreGoal
        = 
        centralGoal: Goal
 ;
syntax PostGoal
        = 
        centralGoal: Goal
 ;
syntax Goal
        = 
        String name PreGoal preGoal PostGoal postGoal
 ;
syntax Pattern
        = Basic
        | Set
 ;
syntax Basic
        = Mapper
        | InExcludes
        | FileList
        | Filter
        | FiltersFile
        | PathElement
 ;
syntax Mapper
        = 
        String type String classname String classpath String classpathref String from String to
 ;
syntax InExcludes
        = Includes
        | Excludes
        | IncludesFile
        | ExcludesFile
 ;
syntax Includes
        = 
        String name String ifCondition String unless
 ;
syntax Excludes
        = 
        String name String ifCondition String unless
 ;
syntax IncludesFile
        = 
        String name String ifCondition String unless
 ;
syntax ExcludesFile
        = 
        String name String ifCondition String unless
 ;
syntax FileList
        = 
        String dir String files
 ;
syntax Filter
        = 
        String token String value
 ;
syntax FiltersFile
        = 
        file: String
 ;
syntax PathElement
        = 
        String path String location
 ;
syntax Set
        = PatternSet
        | FileSet
        | FilterSet
        | Path
        | ClassPath
 ;
syntax PatternSet
        = 
        InExcludes inexcludes+
 ;
syntax FileSet
        = 
        String dir PatternSet patternset+ Includes include+ Excludes exclude+
 ;
syntax FilterSet
        = 
        String starttoken String endtoken Filter filter+ FiltersFile filtersfile+
 ;
syntax Path
        = 
        String id String refid Path path PathElement pathElement+ FileSet fileset+
 ;
syntax ClassPath
        = 
        String refid PathElement pathElement+ FileSet fileset+
 ;
syntax Task
        = NewTask
        | PreDefinedTask
 ;
syntax AntTaskDef
        = 
        String name String classname
 ;
syntax NewTask
        = 
        AntTaskDef taskName Attribut attributes+
 ;
syntax Attribut
        = 
        String name String value
 ;
syntax PreDefinedTask
        = ExecutionTask
        | MiscellaneousTask
        | CompileTask
        | DocumentationTask
        | ArchiveTask
        | FileTask
 ;
syntax ExecutionTask
        = Exec
        | Java
 ;
syntax Exec
        = 
        String executable String dir
 ;
syntax Java
        = 
        String classname String jar String fork ClassPath classPath
 ;
syntax MiscellaneousTask
        = Echo
        | Tstamp
 ;
syntax Echo
        = 
        String message String file String append
 ;
syntax Tstamp
        = 
        FormatTstamp format+
 ;
syntax FormatTstamp
        = 
        String property String pattern String offset String unit String locale
 ;
syntax CompileTask
        = 
        Javac
 ;
syntax Javac
        = 
        String srcdir String destdir String debug String fork String optimize String deprecation InExcludes inExcludes+ ClassPath classPath
 ;
syntax DocumentationTask
        = 
        Javadoc
 ;
syntax Javadoc
        = 
        String sourcepath String destdir String packagenames String defaultexcludes String author String version String use String windowtitle
 ;
syntax ArchiveTask
        = 
        Jar
 ;
syntax Jar
        = 
        String jarfile String basedir String compress String encoding String manifest
 ;
syntax FileTask
        = Mkdir
        | Copy
        | Delete
 ;
syntax Mkdir
        = 
        dir: String
 ;
syntax Copy
        = 
        String file String presservelastmodified String tofile String todir String overwrite String filtering String flatten String includeEmptyDirs FileSet fileset FilterSet filterset Mapper mapper
 ;
syntax Delete
        = 
        String file String dir String verbose String quiet String failonerror String includeEmptyDirs String includes String includesfile String excludes String excludesfile String defaultexcludes
 ;
