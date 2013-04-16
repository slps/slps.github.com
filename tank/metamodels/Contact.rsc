@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Contact

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
