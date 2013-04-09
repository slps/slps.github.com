@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SecureUML

syntax Group
        = 
        ANY subjectGroup+
 ;
syntax User
        = 
        ()
 ;
syntax Subject
        = 
        ANY group ANY role+
 ;
syntax Role
        = 
        ANY roleHierarchy+ ANY subjectAssignment+ ANY permissionAssignment+
 ;
syntax Permission
        = 
        ANY role+ ANY constraintAssignment ANY actionAssignment+
 ;
syntax AuthorizationConstraint
        = 
        ANY permission+
 ;
syntax AtomicAction
        = 
        ()
 ;
syntax CompositeAction
        = 
        ANY subordinatedAction+
 ;
syntax Action
        = 
        ANY permission+ ANY resource ANY actionHyerarchy+
 ;
syntax Resource
        = 
        ANY resourceAction+
 ;
