@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MavenProject

syntax Project
        = 
        ANY id ANY groupId ANY artifactId ANY name ANY description ANY mailingLists+ ANY developersAndContributors+ ANY build ANY dependencies+
 ;
syntax Build
        = 
        ANY defaultGoal ANY sourceDirectory ANY unitTestSourceDirectory ANY uniTest+ ANY resources+
 ;
syntax Resource
        = 
        ANY targetPath ANY filtering ANY directory ANY includes ANY excludes
 ;
syntax MailingList
        = 
        ANY name ANY subscribe ANY unsubscribe ANY post ANY archive ANY otherArchives
 ;
syntax Person
        = 
        ()
 ;
syntax Developer
        = 
        id: ANY
 ;
syntax Contributor
        = 
        ANY name ANY email ANY url ANY organization ANY organizationUrl ANY roles ANY timezone ANY properties
 ;
