@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Contact

syntax Contact
        = 
        ANY nom ANY prenom ANY num_fixes+ ANY num_portables+
 ;
syntax Num_fixe
        = 
        ANY numero ANY contact_fixe
 ;
syntax Num_portable
        = 
        ANY numero ANY contact_portable
 ;
