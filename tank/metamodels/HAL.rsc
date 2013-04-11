@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HAL

syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax HAL
        = 
        Connexion connexion Entry contents+
 ;
syntax Connexion
        = 
        String login String password
 ;
syntax Entry
        = Article
        | Notice
 ;
syntax Article
        = ArticleRecent
        | ArticleRetro
 ;
syntax ArticleRecent
        = 
        fichiers: DepotsType
 ;
syntax ArticleRetro
        = 
        String dateRedaction AbstractDepot fichiers
 ;
syntax Notice
        = 
        metaArtNotice: MetaArtNoticeType
 ;
syntax ReferenceBiblioType
        = ArtRevueType
        | WorkshopType
        | ArtOuvrageType
        | OuvrageType
        | TheseType
        | BrevetType
        | AutreType
 ;
syntax ArtRevueType
        = ArtRevue
        | ArtJournal
 ;
syntax WorkshopType
        = Workshop
        | Communication
        | Conference
 ;
syntax ArtOuvrageType
        = 
        ArtOuvrage
 ;
syntax OuvrageType
        = 
        Ouvrage
 ;
syntax TheseType
        = 
        These
 ;
syntax BrevetType
        = 
        Brevet
 ;
syntax AutreType
        = 
        Autre
 ;
syntax ArtRevue
        = 
        String urldoi String journal String volume String page String annee
 ;
syntax ArtJournal
        = 
        String urldoi String journal String volume String page String annee
 ;
syntax Workshop
        = 
        String urldoi String titconf String ville String pays String edcom String annee String page String edsci String serie
 ;
syntax Communication
        = 
        String urldoi String titconf String ville String pays String edcom String annee String page String edsci String serie
 ;
syntax Conference
        = 
        String urldoi String titconf String ville String pays String edcom String annee String page String edsci String serie
 ;
syntax ArtOuvrage
        = 
        String urldoi String titouv String edcom String annee String edsci String serie
 ;
syntax Ouvrage
        = 
        String urldoi String edcom String annee String page
 ;
syntax Brevet
        = 
        String datebrevet String numbrevet String page String pays
 ;
syntax Autre
        = 
        String urldoi String annee String description
 ;
syntax These
        = 
        String orgthe String niveau String defencedate String directeur String codirecteur
 ;
syntax MetaType
        = MetaArtType
        | MetaArtNoticeType
 ;
syntax MetaArtType
        = 
        String domain String abstract ReferenceBiblioType referenceBiblio
 ;
syntax MetaArtNoticeType
        = 
        String domain String abstract ReferenceBiblioType referenceBiblio
 ;
syntax AutLabType
        = 
        Auteur auteurs+ Laboratoire laboratoires+
 ;
syntax Auteur
        = 
        String nom String prenom String autrePrenom String email String urlPerso Laboratoire lab
 ;
syntax Laboratoire
        = 
        Integer id AbstractMetaLab metas
 ;
syntax AbstractMetaLab
        = 
        MetaLab
 ;
syntax MetaLab
        = 
        id: String
 ;
syntax AffiliationType
        = 
        String institution+ String prive+ String ecole+ String universite+
 ;
syntax TamponType
        = 
        id: String
 ;
syntax DateVisibleEnum
        = 15J: ()
        | 1M: ()
        | 3M: ()
        | 1A: ()
        | 2A: ()
        | JAMAIS: ()
 ;
syntax AbstractDepot
        = Depot
        | DepotWeb
 ;
syntax Depot
        = 
        format: FormatEnum
 ;
syntax FormatEnum
        = PDF: ()
        | TEX: ()
        | DOC: ()
        | RTF: ()
        | TXT: ()
        | PS: ()
        | ANNEX: ()
 ;
syntax DepotWeb
        = 
        format: FormatWebEnum
 ;
syntax FormatWebEnum
        = XML: ()
        | HTML: ()
        | HTM: ()
 ;
syntax AbstractDepotType
        = DepotsType
        | WebLink
 ;
syntax DepotsType
        = 
        AbstractDepot depots+
 ;
syntax WebLink
        = 
        String identifiant Server server
 ;
syntax Server
        = 
        ()
 ;
