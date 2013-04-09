@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bibtex_1

syntax LocatedElement
        = 
        ()
 ;
syntax Bibtex
        = 
        ANY entries+
 ;
syntax Entry
        = 
        ()
 ;
syntax Article
        = 
        ANY key ANY fields+
 ;
syntax Book
        = 
        ANY key ANY fields+
 ;
syntax Inbook
        = 
        ANY key ANY fields+
 ;
syntax Booklet
        = 
        ANY key ANY fields+
 ;
syntax Inproceedings
        = 
        ANY key ANY fields+
 ;
syntax Proceedings
        = 
        ANY key ANY fields+
 ;
syntax Incollection
        = 
        ANY key ANY fields+
 ;
syntax Techreport
        = 
        ANY key ANY fields+
 ;
syntax PhdThesis
        = 
        ANY key ANY fields+
 ;
syntax MastersThesis
        = 
        ANY key ANY fields+
 ;
syntax Manual
        = 
        ANY key ANY fields+
 ;
syntax Misc
        = 
        ANY key ANY fields+
 ;
syntax Field
        = 
        ()
 ;
syntax Authors
        = 
        ANY value
 ;
syntax AuthorUrls
        = 
        ANY value
 ;
syntax Title
        = 
        ANY value
 ;
syntax Journal
        = 
        ANY value
 ;
syntax BookTitle
        = 
        ANY value
 ;
syntax Institution
        = 
        ANY value
 ;
syntax Organization
        = 
        ANY value
 ;
syntax Type
        = 
        ANY value
 ;
syntax Day
        = 
        ANY value
 ;
syntax Number
        = 
        ANY value
 ;
syntax Chapter
        = 
        ANY value
 ;
syntax Volume
        = 
        ANY value
 ;
syntax Series
        = 
        ANY value
 ;
syntax Pages
        = 
        ANY value
 ;
syntax Publisher
        = 
        ANY value
 ;
syntax Howpublished
        = 
        ANY value
 ;
syntax School
        = 
        ANY value
 ;
syntax Editor
        = 
        ANY value
 ;
syntax Edition
        = 
        ANY value
 ;
syntax Address
        = 
        ANY value
 ;
syntax Year
        = 
        ANY value
 ;
syntax Month
        = 
        ANY value
 ;
syntax Note
        = 
        ANY value
 ;
syntax Text
        = 
        ANY value
 ;
syntax AbstractField
        = 
        ANY value
 ;
syntax Isbn
        = 
        ANY value
 ;
syntax Issn
        = 
        ANY value
 ;
syntax Url
        = 
        ANY value
 ;
syntax Doi
        = 
        ANY value
 ;
