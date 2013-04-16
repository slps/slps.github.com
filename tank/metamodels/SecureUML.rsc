@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SecureUML

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
