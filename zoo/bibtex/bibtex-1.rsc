@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bibtex_1

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax LocatedElement
        = 
        Entry
 ;
syntax Bibtex
        = 
        Entry entries+
 ;
syntax Entry
        = Article
        | Book
        | Inbook
        | Booklet
        | Inproceedings
        | Proceedings
        | Incollection
        | Techreport
        | PhdThesis
        | MastersThesis
        | Manual
        | Misc
 ;
syntax Article
        = 
        String key Field fields+
 ;
syntax Book
        = 
        String key Field fields+
 ;
syntax Inbook
        = 
        String key Field fields+
 ;
syntax Booklet
        = 
        String key Field fields+
 ;
syntax Inproceedings
        = 
        String key Field fields+
 ;
syntax Proceedings
        = 
        String key Field fields+
 ;
syntax Incollection
        = 
        String key Field fields+
 ;
syntax Techreport
        = 
        String key Field fields+
 ;
syntax PhdThesis
        = 
        String key Field fields+
 ;
syntax MastersThesis
        = 
        String key Field fields+
 ;
syntax Manual
        = 
        String key Field fields+
 ;
syntax Misc
        = 
        String key Field fields+
 ;
syntax Field
        = Authors
        | AuthorUrls
        | Title
        | Journal
        | BookTitle
        | Institution
        | Organization
        | Type
        | Day
        | Number
        | Chapter
        | Volume
        | Series
        | Pages
        | Publisher
        | Howpublished
        | School
        | Editor
        | Edition
        | Address
        | Year
        | Month
        | Note
        | Text
        | AbstractField
        | Isbn
        | Issn
        | Url
        | Doi
 ;
syntax Authors
        = 
        value: String
 ;
syntax AuthorUrls
        = 
        value: String
 ;
syntax Title
        = 
        value: String
 ;
syntax Journal
        = 
        value: String
 ;
syntax BookTitle
        = 
        value: String
 ;
syntax Institution
        = 
        value: String
 ;
syntax Organization
        = 
        value: String
 ;
syntax Type
        = 
        value: String
 ;
syntax Day
        = 
        value: String
 ;
syntax Number
        = 
        value: String
 ;
syntax Chapter
        = 
        value: String
 ;
syntax Volume
        = 
        value: String
 ;
syntax Series
        = 
        value: String
 ;
syntax Pages
        = 
        value: String
 ;
syntax Publisher
        = 
        value: String
 ;
syntax Howpublished
        = 
        value: String
 ;
syntax School
        = 
        value: String
 ;
syntax Editor
        = 
        value: String
 ;
syntax Edition
        = 
        value: String
 ;
syntax Address
        = 
        value: String
 ;
syntax Year
        = 
        value: String
 ;
syntax Month
        = 
        value: String
 ;
syntax Note
        = 
        value: String
 ;
syntax Text
        = 
        value: String
 ;
syntax AbstractField
        = 
        value: String
 ;
syntax Isbn
        = 
        value: String
 ;
syntax Issn
        = 
        value: String
 ;
syntax Url
        = 
        value: String
 ;
syntax Doi
        = 
        value: String
 ;
