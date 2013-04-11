@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SecureUML

syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax Group
        = 
        Subject subjectGroup+
 ;
syntax User
        = 
        Group group Role role+
 ;
syntax Subject
        = Group
        | User
        | Group group Role role+
 ;
syntax Role
        = 
        Role roleHierarchy+ Subject subjectAssignment+ Permission permissionAssignment+
 ;
syntax Permission
        = 
        Role role+ AuthorizationConstraint constraintAssignment Action actionAssignment+
 ;
syntax AuthorizationConstraint
        = 
        Permission permission+
 ;
syntax AtomicAction
        = 
        Permission permission+ Resource resource CompositeAction actionHyerarchy+
 ;
syntax CompositeAction
        = 
        Action subordinatedAction+
 ;
syntax Action
        = AtomicAction
        | CompositeAction
        | Permission permission+ Resource resource CompositeAction actionHyerarchy+
 ;
syntax Resource
        = 
        Action resourceAction+
 ;
