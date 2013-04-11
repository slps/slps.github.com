@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Zhang_cordy

syntax Program
        = 
        Prolog Element
 ;
syntax Prolog
        = 
        Dtd_body
 ;
syntax Dtd_body
        = 
        Misc* Doctypedecl?
 ;
syntax Misc
        = Comment
        | Pi
        | Space
        | Newline
 ;
syntax Doctypedecl
        = 
 ;
syntax Declbody
        = 
        "[" Decl* "]"
 ;
syntax Literal
        = Charlit
        | Stringlit
 ;
syntax Pi
        = 
        "\<?" Pitarget Sub1_pi? "?\>"
 ;
syntax Pitarget
        = 
        Name
 ;
syntax Sub1_pi
        = 
        Spaces Token
 ;
syntax Sub2_pi
        = 
        Token "?\>" Token
 ;
syntax Sp_external_id
        = 
        Spaces External_id
 ;
syntax External_id
        = Exid_sys
        | Exid_pub
 ;
syntax Exid_sys
        = 
        "SYSTEM" Spaces Literal
 ;
syntax Exid_pub
        = 
        "PUBLIC" Spaces Literal Spaces Literal
 ;
syntax Decl
        = Markupdecl
        | "%" Name ";"
        | Spaces
 ;
syntax Markupdecl
        = Elementdecl
        | Attlistdecl
        | Entitydecl
        | Notationdecl
        | Pi
        | Comment
 ;
syntax Elementdecl
        = 
        "\<!ELEMENT" Spaces Name Spaces Contentspec Spaces "\>" Spaces
 ;
syntax Contentspec
        = "EMPTY"
        | "ANY"
        | Mixed
        | Children
 ;
syntax Children
        = 
        Children_body Repetition?
 ;
syntax Repetition
        = "?"
        | "*"
        | "+"
 ;
syntax Children_body
        = Choice
        | Seq
 ;
syntax Choice
        = 
        "(" Spaces Cp Choice_item Choice_item* Spaces ")"
 ;
syntax Choice_item
        = 
        Spaces "|" Spaces Cp
 ;
syntax Cp
        = 
        Cp_body Repetition?
 ;
syntax Cp_body
        = Name
        | Choice
        | Seq
 ;
syntax Seq
        = 
        "(" Spaces Cp More_cps* Spaces ")"
 ;
syntax More_cps
        = 
        Spaces "," Spaces Cp
 ;
syntax Mixed
        = Pcdata_or_name
        | Pcdata
 ;
syntax Pcdata_or_name
        = 
        "(" Spaces "#PCDATA" More_names* Spaces ")*"
 ;
syntax More_names
        = 
        Spaces "|" Spaces Name
 ;
syntax Pcdata
        = 
        "(" Spaces "#PCDATA" Spaces ")"
 ;
syntax Attlistdecl
        = 
        "\<!ATTLIST" Spaces Name Attdef* Spaces "\>" Spaces
 ;
syntax Attdef
        = 
        Spaces Name Spaces Atttype Spaces Defaultdecl
 ;
syntax Atttype
        = Stringtype
        | Tokenizedtype
        | Enumeratedtype
 ;
syntax Stringtype
        = 
        "CDATA"
 ;
syntax Tokenizedtype
        = "ID"
        | "IDREF"
        | "IDREFS"
        | "ENTITY"
        | "ENTITIES"
        | "NMTOKEN"
        | "NMTOKENS"
 ;
syntax Enumeratedtype
        = Notationtype
        | Enumeration
 ;
syntax Notationtype
        = 
        "NOTATION" Spaces "(" Spaces Name More_names* Spaces ")"
 ;
syntax Enumeration
        = 
        "(" Spaces Nmtoken More_nmtokens* Spaces ")"
 ;
syntax Nmtoken
        = Name
        | Dname
 ;
syntax More_nmtokens
        = 
        Spaces "|" Spaces Nmtoken
 ;
syntax Defaultdecl
        = "#REQUIRED"
        | "#IMPLIED"
        | Fixed? Attvalue
 ;
syntax Fixed
        = 
        "#FIXED" Spaces
 ;
syntax Attvalue
        = Stringlit
        | Charlit
        | Longstringlit
        | Longcharlit
 ;
syntax Longstringlit
        = 
        "\"" Not_dquote* "\""
 ;
syntax Not_dquote
        = 
        Token
 ;
syntax Longcharlit
        = 
        "'" Not_quote* "'"
 ;
syntax Not_quote
        = 
        Token
 ;
syntax Entitydecl
        = Gedecl
        | Pedecl
 ;
syntax Gedecl
        = 
        "\<!ENTITY" Spaces Name Spaces Entitydef Spaces "\>" Spaces
 ;
syntax Pedecl
        = 
        "\<!ENTITY" Spaces "%" Spaces Name Spaces Pedef Spaces "\>" Spaces
 ;
syntax Entitydef
        = Entityvalue
        | External_id Ndatadecl?
 ;
syntax Pedef
        = Entityvalue
        | External_id
 ;
syntax Ndatadecl
        = 
        Spaces "NDATA" Spaces Name
 ;
syntax Entityvalue
        = Charlit
        | Stringlit
        | Longstringlit
        | Longcharlit
 ;
syntax Notationdecl
        = 
        "\<!NOTATION" Spaces Name Spaces Exid_or_pubid Spaces "\>" Spaces
 ;
syntax Exid_or_pubid
        = External_id
        | "PUBLIC" Spaces Literal
 ;
syntax Spaces
        = 
        Space_or_newline*
 ;
syntax Space_or_newline
        = Space
        | Newline
 ;
syntax Element
        = Empty_elem_tag Spaces
        | Tag_content Spaces
 ;
syntax Tag_content
        = 
        Stag IN Content EX Etag
 ;
syntax Empty_elem_tag
        = 
        "\<" Name Spaces Attribute* "/\>"
 ;
syntax Attribute
        = 
        Spaces Name "=" Attvalue Spaces
 ;
syntax Stag
        = 
        "\<" Name Spaces Attribute* "\>"
 ;
syntax Content
        = 
        Spaces Chardata* Spaces Sub1_content* Spaces
 ;
syntax Sub1_content
        = 
        Spaces Sub2_content Spaces Chardata* Spaces
 ;
syntax Sub2_content
        = Element
        | Reference
        | Cdsect
        | Pi
        | Comment
        | Regexp
 ;
syntax Chardata
        = 
        Token
 ;
syntax Etag
        = 
        "\</" Name Spaces "\>"
 ;
syntax Cdata
        = Token
        | Comment
 ;
syntax Cdend
        = 
        "]" "]" "\>"
 ;
syntax Reference
        = "&" Name ";"
        | Charref
 ;
syntax Cdsect
        = 
        "\<!" "[" "CDATA" "[" Cdata* Cdend
 ;
