@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HAL

syntax HAL
        = 
        ANY connexion ANY contents+
 ;
syntax Connexion
        = 
        ANY login ANY password
 ;
syntax Entry
        = 
        ()
 ;
syntax Article
        = 
        ()
 ;
syntax ArticleRecent
        = 
        fichiers: ANY
 ;
syntax ArticleRetro
        = 
        ANY dateRedaction ANY fichiers
 ;
syntax Notice
        = 
        metaArtNotice: ANY
 ;
syntax ReferenceBiblioType
        = 
        ()
 ;
syntax ArtRevueType
        = 
        ()
 ;
syntax WorkshopType
        = 
        ()
 ;
syntax ArtOuvrageType
        = 
        ()
 ;
syntax OuvrageType
        = 
        ()
 ;
syntax TheseType
        = 
        ()
 ;
syntax BrevetType
        = 
        ()
 ;
syntax AutreType
        = 
        ()
 ;
syntax ArtRevue
        = 
        ANY urldoi ANY journal ANY volume ANY page ANY annee
 ;
syntax ArtJournal
        = 
        ANY urldoi ANY journal ANY volume ANY page ANY annee
 ;
syntax Workshop
        = 
        ANY urldoi ANY titconf ANY ville ANY pays ANY edcom ANY annee ANY page ANY edsci ANY serie
 ;
syntax Communication
        = 
        ANY urldoi ANY titconf ANY ville ANY pays ANY edcom ANY annee ANY page ANY edsci ANY serie
 ;
syntax Conference
        = 
        ANY urldoi ANY titconf ANY ville ANY pays ANY edcom ANY annee ANY page ANY edsci ANY serie
 ;
syntax ArtOuvrage
        = 
        ANY urldoi ANY titouv ANY edcom ANY annee ANY edsci ANY serie
 ;
syntax Ouvrage
        = 
        ANY urldoi ANY edcom ANY annee ANY page
 ;
syntax Brevet
        = 
        ANY datebrevet ANY numbrevet ANY page ANY pays
 ;
syntax Autre
        = 
        ANY urldoi ANY annee ANY description
 ;
syntax These
        = 
        ANY orgthe ANY niveau ANY defencedate ANY directeur ANY codirecteur
 ;
syntax MetaType
        = 
        ()
 ;
syntax MetaArtType
        = 
        ANY domain ANY abstract ANY referenceBiblio
 ;
syntax MetaArtNoticeType
        = 
        ANY domain ANY abstract ANY referenceBiblio
 ;
syntax AutLabType
        = 
        ANY auteurs+ ANY laboratoires+
 ;
syntax Auteur
        = 
        ANY nom ANY prenom ANY autrePrenom ANY email ANY urlPerso ANY lab
 ;
syntax Laboratoire
        = 
        ANY id ANY metas
 ;
syntax AbstractMetaLab
        = 
        ()
 ;
syntax MetaLab
        = 
        id: ANY
 ;
syntax AffiliationType
        = 
        ANY institution+ ANY prive+ ANY ecole+ ANY universite+
 ;
syntax TamponType
        = 
        id: ANY
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
        = 
        ()
 ;
syntax Depot
        = 
        format: ANY
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
        format: ANY
 ;
syntax FormatWebEnum
        = XML: ()
        | HTML: ()
        | HTM: ()
 ;
syntax AbstractDepotType
        = 
        ()
 ;
syntax DepotsType
        = 
        ANY depots+
 ;
syntax WebLink
        = 
        ANY identifiant ANY server
 ;
syntax Server
        = 
        ()
 ;
