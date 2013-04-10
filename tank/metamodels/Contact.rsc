@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Contact

syntax Contact
        = 
        String nom String prenom Num_fixe num_fixes+ Num_portable num_portables+
 ;
syntax Num_fixe
        = 
        String numero Contact contact_fixe
 ;
syntax Num_portable
        = 
        String numero Contact contact_portable
 ;
