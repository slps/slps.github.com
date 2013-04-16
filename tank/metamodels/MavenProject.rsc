@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MavenProject

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Project
        = 
        String id String groupId String artifactId String name String description MailingList mailingLists+ Person developersAndContributors+ Build build Project dependencies+
 ;
syntax Build
        = 
        String defaultGoal String sourceDirectory String unitTestSourceDirectory Resource uniTest+ Resource resources+
 ;
syntax Resource
        = 
        String targetPath String filtering String directory String includes String excludes
 ;
syntax MailingList
        = 
        String name String subscribe String unsubscribe String post String archive String otherArchives
 ;
syntax Person
        = Developer
        | Contributor
 ;
syntax Developer
        = 
        id: String
 ;
syntax Contributor
        = 
        String name String email String url String organization String organizationUrl String roles String timezone String properties
 ;
syntax String
        = 
        String
 ;
