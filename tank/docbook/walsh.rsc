@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Walsh

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Yesorno
        = 
        String
 ;
syntax Titles
        = 
        Title?
 ;
syntax Tbl_table_titles_mdl
        = 
        Titles
 ;
syntax Tbl_table_main_mdl
        = Tgroup+
        | Graphic+
 ;
syntax Tbl_table_att
        = 
        String tabstyle? Yesorno tocentry? Yesorno shortentry? ("port" | "land")? Yesorno pgwide?
 ;
syntax Tbl_tgroup_mdl
        = 
        Colspec* Spanspec* Thead? Tfoot? Tbody
 ;
syntax Tbl_tgroup_att
        = 
        String tgroupstyle?
 ;
syntax Tbl_hdft_mdl
        = 
        Colspec* Row+
 ;
syntax Tbl_row_mdl
        = 
        (Entry | Entrytbl)+
 ;
syntax Tbl_entrytbl_mdl
        = 
        Colspec* Spanspec* Thead? Tbody
 ;
syntax Table
        = 
        table: Table_attlist Tbl_table_mdl
 ;
syntax Table_attlist
        = 
        ("top" | "bottom" | "topbot" | "all" | "sides" | "none")? Yesorno colsep? Yesorno rowsep? Tbl_table_att Bodyatt Secur
 ;
syntax Tgroup
        = 
        tgroup: Tgroup_attlist Tbl_tgroup_mdl
 ;
syntax Tgroup_attlist
        = 
        String cols Tbl_tgroup_att Yesorno colsep? Yesorno rowsep? ("left" | "right" | "center" | "justify" | "char")? String char? String charoff? Secur
 ;
syntax Colspec
        = 
        colspec: Colspec_attlist ()
 ;
syntax Colspec_attlist
        = 
        String colnum? String colname? String colwidth? Yesorno colsep? Yesorno rowsep? ("left" | "right" | "center" | "justify" | "char")? String char? String charoff?
 ;
syntax Spanspec
        = 
        spanspec: Spanspec_attlist ()
 ;
syntax Spanspec_attlist
        = 
        String namest String nameend String spanname Yesorno colsep? Yesorno rowsep? ("left" | "right" | "center" | "justify" | "char")? String char? String charoff?
 ;
syntax Thead
        = 
        thead: Thead_attlist Tbl_hdft_mdl
 ;
syntax Thead_attlist
        = 
        ("top" | "middle" | "bottom")? Secur
 ;
syntax Tfoot
        = 
        tfoot: Tfoot_attlist Tbl_hdft_mdl
 ;
syntax Tfoot_attlist
        = 
        ("top" | "middle" | "bottom")? Secur
 ;
syntax Tbody
        = 
        tbody: Tbody_attlist Row+
 ;
syntax Tbody_attlist
        = 
        ("top" | "middle" | "bottom")? Secur
 ;
syntax Row
        = 
        row: Row_attlist Tbl_row_mdl
 ;
syntax Row_attlist
        = 
        Yesorno rowsep? ("top" | "middle" | "bottom")? Secur
 ;
syntax Entrytbl
        = 
        entrytbl: Entrytbl_attlist Tbl_entrytbl_mdl
 ;
syntax Entrytbl_attlist
        = 
        String cols Tbl_tgroup_att String colname? String spanname? String namest? String nameend? Yesorno colsep? Yesorno rowsep? ("left" | "right" | "center" | "justify" | "char")? String char? String charoff? Secur
 ;
syntax Entry
        = 
        entry: Entry_attlist Tbl_entry_mdl*
 ;
syntax Entry_attlist
        = 
        String colname? String namest? String nameend? String spanname? String morerows? Yesorno colsep? Yesorno rowsep? ("left" | "right" | "center" | "justify" | "char")? String char? String charoff? Yesorno rotate? ("top" | "middle" | "bottom")? Secur
 ;
syntax Local_appendix_class
        = 
        ()
 ;
syntax Appendix_class
        = Appendix
        | Local_appendix_class
 ;
syntax Local_article_class
        = 
        ()
 ;
syntax Article_class
        = Article
        | Local_article_class
 ;
syntax Local_book_class
        = 
        ()
 ;
syntax Book_class
        = Book
        | Local_book_class
 ;
syntax Local_chapter_class
        = 
        ()
 ;
syntax Chapter_class
        = Chapter
        | Local_chapter_class
 ;
syntax Local_index_class
        = 
        ()
 ;
syntax Index_class
        = Index
        | Setindex
        | Local_index_class
 ;
syntax Local_refentry_class
        = 
        ()
 ;
syntax Refentry_class
        = Refentry
        | Local_refentry_class
 ;
syntax Local_section_class
        = 
        ()
 ;
syntax Section_class
        = Section
        | Local_section_class
 ;
syntax Local_nav_class
        = 
        ()
 ;
syntax Nav_class
        = Toc
        | Lot
        | Index
        | Glossary
        | Bibliography
        | Local_nav_class
 ;
syntax Forms_hook
        = 
        ()
 ;
syntax Local_divcomponent_mix
        = 
        ()
 ;
syntax Divcomponent_mix
        = List_class
        | Admon_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Formal_class
        | Compound_class
        | Genobj_class
        | Descobj_class
        | Ndxterm_class
        | Beginpage
        | Forms_hook
        | Local_divcomponent_mix
 ;
syntax Local_refcomponent_mix
        = 
        ()
 ;
syntax Refcomponent_mix
        = List_class
        | Admon_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Formal_class
        | Compound_class
        | Genobj_class
        | Descobj_class
        | Ndxterm_class
        | Beginpage
        | Local_refcomponent_mix
 ;
syntax Local_indexdivcomponent_mix
        = 
        ()
 ;
syntax Indexdivcomponent_mix
        = Itemizedlist
        | Orderedlist
        | Variablelist
        | Simplelist
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Anchor
        | Remark
        | Link_char_class
        | Beginpage
        | Local_indexdivcomponent_mix
 ;
syntax Local_refname_char_mix
        = 
        ()
 ;
syntax Refname_char_mix
        = String
        | Tech_char_class
        | Local_refname_char_mix
 ;
syntax Local_partcontent_mix
        = 
        ()
 ;
syntax Partcontent_mix
        = Appendix_class
        | Chapter_class
        | Nav_class
        | Article_class
        | Preface
        | Refentry_class
        | Reference
        | Local_partcontent_mix
 ;
syntax Local_refinline_char_mix
        = 
        ()
 ;
syntax Refinline_char_mix
        = String
        | Xref_char_class
        | Gen_char_class
        | Link_char_class
        | Tech_char_class
        | Base_char_class
        | Docinfo_char_class
        | Other_char_class
        | Ndxterm_class
        | Beginpage
        | Local_refinline_char_mix
 ;
syntax Local_refclass_char_mix
        = 
        ()
 ;
syntax Refclass_char_mix
        = String
        | Application
        | Local_refclass_char_mix
 ;
syntax Div_title_content
        = 
        Title Subtitle? Titleabbrev?
 ;
syntax Bookcomponent_title_content
        = 
        Title Subtitle? Titleabbrev?
 ;
syntax Sect_title_content
        = 
        Title Subtitle? Titleabbrev?
 ;
syntax Refsect_title_content
        = 
        Title Subtitle? Titleabbrev?
 ;
syntax Bookcomponent_content
        = Divcomponent_mix+ (Sect1* | Refentry_class* | Simplesect* | Section_class*)
        | Sect1+
        | Refentry_class+
        | Simplesect+
        | Section_class+
 ;
syntax Local_set_attrib
        = 
        ()
 ;
syntax Set_role_attrib
        = 
        Role_attrib
 ;
syntax Set
        = 
        set: Set_attlist Div_title_content? Setinfo? Toc? Book_class+ Setindex?
 ;
syntax Set_attlist
        = 
        String fpi? Status_attrib Common_attrib Set_role_attrib Local_set_attrib
 ;
syntax Local_setinfo_attrib
        = 
        ()
 ;
syntax Setinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Setinfo
        = 
        setinfo: Setinfo_attlist Info_class+
 ;
syntax Setinfo_attlist
        = 
        String contents? Common_attrib Setinfo_role_attrib Local_setinfo_attrib
 ;
syntax Local_book_attrib
        = 
        ()
 ;
syntax Book_role_attrib
        = 
        Role_attrib
 ;
syntax Book
        = 
        book: Book_attlist Div_title_content? Bookinfo? (Dedication | Toc | Lot | Glossary | Bibliography | Preface | Chapter_class | Reference | Part | Article_class | Appendix_class | Index_class | Colophon)*
 ;
syntax Book_attlist
        = 
        String fpi? Label_attrib Status_attrib Common_attrib Book_role_attrib Local_book_attrib
 ;
syntax Local_bookinfo_attrib
        = 
        ()
 ;
syntax Bookinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Bookinfo
        = 
        bookinfo: Bookinfo_attlist Info_class+
 ;
syntax Bookinfo_attlist
        = 
        String contents? Common_attrib Bookinfo_role_attrib Local_bookinfo_attrib
 ;
syntax Local_dedication_attrib
        = 
        ()
 ;
syntax Dedication_role_attrib
        = 
        Role_attrib
 ;
syntax Dedication
        = 
        dedication: Dedication_attlist Sect_title_content? Legalnotice_mix+
 ;
syntax Dedication_attlist
        = 
        Status_attrib Common_attrib Dedication_role_attrib Local_dedication_attrib
 ;
syntax Local_colophon_attrib
        = 
        ()
 ;
syntax Colophon_role_attrib
        = 
        Role_attrib
 ;
syntax Colophon
        = 
        colophon: Colophon_attlist Sect_title_content? Textobject_mix+
 ;
syntax Colophon_attlist
        = 
        Status_attrib Common_attrib Colophon_role_attrib Local_colophon_attrib
 ;
syntax Local_toc_attrib
        = 
        ()
 ;
syntax Toc_role_attrib
        = 
        Role_attrib
 ;
syntax Toc
        = 
        toc: Toc_attlist Beginpage? Bookcomponent_title_content? Tocfront* (Tocpart | Tocchap)* Tocback*
 ;
syntax Toc_attlist
        = 
        Pagenum_attrib Common_attrib Toc_role_attrib Local_toc_attrib
 ;
syntax Local_tocfront_attrib
        = 
        ()
 ;
syntax Tocfront_role_attrib
        = 
        Role_attrib
 ;
syntax Tocfront
        = 
        tocfront: Tocfront_attlist Para_char_mix*
 ;
syntax Tocfront_attlist
        = 
        Label_attrib Linkend_attrib Pagenum_attrib Common_attrib Tocfront_role_attrib Local_tocfront_attrib
 ;
syntax Local_tocentry_attrib
        = 
        ()
 ;
syntax Tocentry_role_attrib
        = 
        Role_attrib
 ;
syntax Tocentry
        = 
        tocentry: Tocentry_attlist Para_char_mix*
 ;
syntax Tocentry_attlist
        = 
        Linkend_attrib Pagenum_attrib Common_attrib Tocentry_role_attrib Local_tocentry_attrib
 ;
syntax Local_tocpart_attrib
        = 
        ()
 ;
syntax Tocpart_role_attrib
        = 
        Role_attrib
 ;
syntax Tocpart
        = 
        tocpart: Tocpart_attlist Tocentry+ Tocchap*
 ;
syntax Tocpart_attlist
        = 
        Common_attrib Tocpart_role_attrib Local_tocpart_attrib
 ;
syntax Local_tocchap_attrib
        = 
        ()
 ;
syntax Tocchap_role_attrib
        = 
        Role_attrib
 ;
syntax Tocchap
        = 
        tocchap: Tocchap_attlist Tocentry+ Toclevel1*
 ;
syntax Tocchap_attlist
        = 
        Label_attrib Common_attrib Tocchap_role_attrib Local_tocchap_attrib
 ;
syntax Local_toclevel1_attrib
        = 
        ()
 ;
syntax Toclevel1_role_attrib
        = 
        Role_attrib
 ;
syntax Toclevel1
        = 
        toclevel1: Toclevel1_attlist Tocentry+ Toclevel2*
 ;
syntax Toclevel1_attlist
        = 
        Common_attrib Toclevel1_role_attrib Local_toclevel1_attrib
 ;
syntax Local_toclevel2_attrib
        = 
        ()
 ;
syntax Toclevel2_role_attrib
        = 
        Role_attrib
 ;
syntax Toclevel2
        = 
        toclevel2: Toclevel2_attlist Tocentry+ Toclevel3*
 ;
syntax Toclevel2_attlist
        = 
        Common_attrib Toclevel2_role_attrib Local_toclevel2_attrib
 ;
syntax Local_toclevel3_attrib
        = 
        ()
 ;
syntax Toclevel3_role_attrib
        = 
        Role_attrib
 ;
syntax Toclevel3
        = 
        toclevel3: Toclevel3_attlist Tocentry+ Toclevel4*
 ;
syntax Toclevel3_attlist
        = 
        Common_attrib Toclevel3_role_attrib Local_toclevel3_attrib
 ;
syntax Local_toclevel4_attrib
        = 
        ()
 ;
syntax Toclevel4_role_attrib
        = 
        Role_attrib
 ;
syntax Toclevel4
        = 
        toclevel4: Toclevel4_attlist Tocentry+ Toclevel5*
 ;
syntax Toclevel4_attlist
        = 
        Common_attrib Toclevel4_role_attrib Local_toclevel4_attrib
 ;
syntax Local_toclevel5_attrib
        = 
        ()
 ;
syntax Toclevel5_role_attrib
        = 
        Role_attrib
 ;
syntax Toclevel5
        = 
        toclevel5: Toclevel5_attlist Tocentry+
 ;
syntax Toclevel5_attlist
        = 
        Common_attrib Toclevel5_role_attrib Local_toclevel5_attrib
 ;
syntax Local_tocback_attrib
        = 
        ()
 ;
syntax Tocback_role_attrib
        = 
        Role_attrib
 ;
syntax Tocback
        = 
        tocback: Tocback_attlist Para_char_mix*
 ;
syntax Tocback_attlist
        = 
        Label_attrib Linkend_attrib Pagenum_attrib Common_attrib Tocback_role_attrib Local_tocback_attrib
 ;
syntax Local_lot_attrib
        = 
        ()
 ;
syntax Lot_role_attrib
        = 
        Role_attrib
 ;
syntax Lot
        = 
        lot: Lot_attlist Beginpage? Bookcomponent_title_content? Lotentry*
 ;
syntax Lot_attlist
        = 
        Label_attrib Common_attrib Lot_role_attrib Local_lot_attrib
 ;
syntax Local_lotentry_attrib
        = 
        ()
 ;
syntax Lotentry_role_attrib
        = 
        Role_attrib
 ;
syntax Lotentry
        = 
        lotentry: Lotentry_attlist Para_char_mix*
 ;
syntax Lotentry_attlist
        = 
        Linkend_attrib Pagenum_attrib String srccredit? Common_attrib Lotentry_role_attrib Local_lotentry_attrib
 ;
syntax Local_appendix_attrib
        = 
        ()
 ;
syntax Appendix_role_attrib
        = 
        Role_attrib
 ;
syntax Appendix
        = 
        appendix: Appendix_attlist Beginpage? Appendixinfo? Bookcomponent_title_content Nav_class* Tocchap? Bookcomponent_content Nav_class*
 ;
syntax Appendix_attlist
        = 
        Label_attrib Status_attrib Common_attrib Appendix_role_attrib Local_appendix_attrib
 ;
syntax Local_chapter_attrib
        = 
        ()
 ;
syntax Chapter_role_attrib
        = 
        Role_attrib
 ;
syntax Chapter
        = 
        chapter: Chapter_attlist Beginpage? Chapterinfo? Bookcomponent_title_content Nav_class* Tocchap? Bookcomponent_content Nav_class*
 ;
syntax Chapter_attlist
        = 
        Label_attrib Status_attrib Common_attrib Chapter_role_attrib Local_chapter_attrib
 ;
syntax Local_part_attrib
        = 
        ()
 ;
syntax Part_role_attrib
        = 
        Role_attrib
 ;
syntax Part
        = 
        part: Part_attlist Beginpage? Partinfo? Bookcomponent_title_content Partintro? Partcontent_mix+
 ;
syntax Part_attlist
        = 
        Label_attrib Status_attrib Common_attrib Part_role_attrib Local_part_attrib
 ;
syntax Local_preface_attrib
        = 
        ()
 ;
syntax Preface_role_attrib
        = 
        Role_attrib
 ;
syntax Preface
        = 
        preface: Preface_attlist Beginpage? Prefaceinfo? Bookcomponent_title_content Nav_class* Tocchap? Bookcomponent_content Nav_class*
 ;
syntax Preface_attlist
        = 
        Status_attrib Common_attrib Preface_role_attrib Local_preface_attrib
 ;
syntax Local_reference_attrib
        = 
        ()
 ;
syntax Reference_role_attrib
        = 
        Role_attrib
 ;
syntax Reference
        = 
        reference: Reference_attlist Beginpage? Referenceinfo? Bookcomponent_title_content Partintro? Refentry_class+
 ;
syntax Reference_attlist
        = 
        Label_attrib Status_attrib Common_attrib Reference_role_attrib Local_reference_attrib
 ;
syntax Local_partintro_attrib
        = 
        ()
 ;
syntax Partintro_role_attrib
        = 
        Role_attrib
 ;
syntax Partintro
        = 
        partintro: Partintro_attlist Div_title_content? Bookcomponent_content
 ;
syntax Partintro_attlist
        = 
        Label_attrib Common_attrib Partintro_role_attrib Local_partintro_attrib
 ;
syntax Local_appendixinfo_attrib
        = 
        ()
 ;
syntax Appendixinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Appendixinfo
        = 
        appendixinfo: Appendixinfo_attlist Info_class+
 ;
syntax Appendixinfo_attlist
        = 
        Common_attrib Appendixinfo_role_attrib Local_appendixinfo_attrib
 ;
syntax Local_bibliographyinfo_attrib
        = 
        ()
 ;
syntax Bibliographyinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Bibliographyinfo
        = 
        bibliographyinfo: Bibliographyinfo_attlist Info_class+
 ;
syntax Bibliographyinfo_attlist
        = 
        Common_attrib Bibliographyinfo_role_attrib Local_bibliographyinfo_attrib
 ;
syntax Local_chapterinfo_attrib
        = 
        ()
 ;
syntax Chapterinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Chapterinfo
        = 
        chapterinfo: Chapterinfo_attlist Info_class+
 ;
syntax Chapterinfo_attlist
        = 
        Common_attrib Chapterinfo_role_attrib Local_chapterinfo_attrib
 ;
syntax Local_glossaryinfo_attrib
        = 
        ()
 ;
syntax Glossaryinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Glossaryinfo
        = 
        glossaryinfo: Glossaryinfo_attlist Info_class+
 ;
syntax Glossaryinfo_attlist
        = 
        Common_attrib Glossaryinfo_role_attrib Local_glossaryinfo_attrib
 ;
syntax Local_indexinfo_attrib
        = 
        ()
 ;
syntax Indexinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Indexinfo
        = 
        indexinfo: Indexinfo_attlist Info_class+
 ;
syntax Indexinfo_attlist
        = 
        Common_attrib Indexinfo_role_attrib Local_indexinfo_attrib
 ;
syntax Local_setindexinfo_attrib
        = 
        ()
 ;
syntax Setindexinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Setindexinfo
        = 
        setindexinfo: Setindexinfo_attlist Info_class+
 ;
syntax Setindexinfo_attlist
        = 
        Common_attrib Setindexinfo_role_attrib Local_setindexinfo_attrib
 ;
syntax Local_partinfo_attrib
        = 
        ()
 ;
syntax Partinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Partinfo
        = 
        partinfo: Partinfo_attlist Info_class+
 ;
syntax Partinfo_attlist
        = 
        Common_attrib Partinfo_role_attrib Local_partinfo_attrib
 ;
syntax Local_prefaceinfo_attrib
        = 
        ()
 ;
syntax Prefaceinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Prefaceinfo
        = 
        prefaceinfo: Prefaceinfo_attlist Info_class+
 ;
syntax Prefaceinfo_attlist
        = 
        Common_attrib Prefaceinfo_role_attrib Local_prefaceinfo_attrib
 ;
syntax Local_refentryinfo_attrib
        = 
        ()
 ;
syntax Refentryinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Refentryinfo
        = 
        refentryinfo: Refentryinfo_attlist Info_class+
 ;
syntax Refentryinfo_attlist
        = 
        Common_attrib Refentryinfo_role_attrib Local_refentryinfo_attrib
 ;
syntax Local_refsectioninfo_attrib
        = 
        ()
 ;
syntax Refsectioninfo_role_attrib
        = 
        Role_attrib
 ;
syntax Refsectioninfo
        = 
        refsectioninfo: Refsectioninfo_attlist Info_class+
 ;
syntax Refsectioninfo_attlist
        = 
        Common_attrib Refsectioninfo_role_attrib Local_refsectioninfo_attrib
 ;
syntax Local_refsect1info_attrib
        = 
        ()
 ;
syntax Refsect1info_role_attrib
        = 
        Role_attrib
 ;
syntax Refsect1info
        = 
        refsect1info: Refsect1info_attlist Info_class+
 ;
syntax Refsect1info_attlist
        = 
        Common_attrib Refsect1info_role_attrib Local_refsect1info_attrib
 ;
syntax Local_refsect2info_attrib
        = 
        ()
 ;
syntax Refsect2info_role_attrib
        = 
        Role_attrib
 ;
syntax Refsect2info
        = 
        refsect2info: Refsect2info_attlist Info_class+
 ;
syntax Refsect2info_attlist
        = 
        Common_attrib Refsect2info_role_attrib Local_refsect2info_attrib
 ;
syntax Local_refsect3info_attrib
        = 
        ()
 ;
syntax Refsect3info_role_attrib
        = 
        Role_attrib
 ;
syntax Refsect3info
        = 
        refsect3info: Refsect3info_attlist Info_class+
 ;
syntax Refsect3info_attlist
        = 
        Common_attrib Refsect3info_role_attrib Local_refsect3info_attrib
 ;
syntax Local_refsynopsisdivinfo_attrib
        = 
        ()
 ;
syntax Refsynopsisdivinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Refsynopsisdivinfo
        = 
        refsynopsisdivinfo: Refsynopsisdivinfo_attlist Info_class+
 ;
syntax Refsynopsisdivinfo_attlist
        = 
        Common_attrib Refsynopsisdivinfo_role_attrib Local_refsynopsisdivinfo_attrib
 ;
syntax Local_referenceinfo_attrib
        = 
        ()
 ;
syntax Referenceinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Referenceinfo
        = 
        referenceinfo: Referenceinfo_attlist Info_class+
 ;
syntax Referenceinfo_attlist
        = 
        Common_attrib Referenceinfo_role_attrib Local_referenceinfo_attrib
 ;
syntax Local_sect1info_attrib
        = 
        ()
 ;
syntax Sect1info_role_attrib
        = 
        Role_attrib
 ;
syntax Sect1info
        = 
        sect1info: Sect1info_attlist Info_class+
 ;
syntax Sect1info_attlist
        = 
        Common_attrib Sect1info_role_attrib Local_sect1info_attrib
 ;
syntax Local_sect2info_attrib
        = 
        ()
 ;
syntax Sect2info_role_attrib
        = 
        Role_attrib
 ;
syntax Sect2info
        = 
        sect2info: Sect2info_attlist Info_class+
 ;
syntax Sect2info_attlist
        = 
        Common_attrib Sect2info_role_attrib Local_sect2info_attrib
 ;
syntax Local_sect3info_attrib
        = 
        ()
 ;
syntax Sect3info_role_attrib
        = 
        Role_attrib
 ;
syntax Sect3info
        = 
        sect3info: Sect3info_attlist Info_class+
 ;
syntax Sect3info_attlist
        = 
        Common_attrib Sect3info_role_attrib Local_sect3info_attrib
 ;
syntax Local_sect4info_attrib
        = 
        ()
 ;
syntax Sect4info_role_attrib
        = 
        Role_attrib
 ;
syntax Sect4info
        = 
        sect4info: Sect4info_attlist Info_class+
 ;
syntax Sect4info_attlist
        = 
        Common_attrib Sect4info_role_attrib Local_sect4info_attrib
 ;
syntax Local_sect5info_attrib
        = 
        ()
 ;
syntax Sect5info_role_attrib
        = 
        Role_attrib
 ;
syntax Sect5info
        = 
        sect5info: Sect5info_attlist Info_class+
 ;
syntax Sect5info_attlist
        = 
        Common_attrib Sect5info_role_attrib Local_sect5info_attrib
 ;
syntax Local_section_attrib
        = 
        ()
 ;
syntax Section_role_attrib
        = 
        Role_attrib
 ;
syntax Section
        = 
        section: Section_attlist Sectioninfo? Sect_title_content Nav_class* ((Divcomponent_mix+ (Refentry_class* | Section_class* | Simplesect*)) | Refentry_class+ | Section_class+ | Simplesect+) Nav_class*
 ;
syntax Section_attlist
        = 
        Label_attrib Status_attrib Common_attrib Section_role_attrib Local_section_attrib
 ;
syntax Sectioninfo_role_attrib
        = 
        Role_attrib
 ;
syntax Local_sectioninfo_attrib
        = 
        ()
 ;
syntax Sectioninfo
        = 
        sectioninfo: Sectioninfo_attlist Info_class+
 ;
syntax Sectioninfo_attlist
        = 
        Common_attrib Sectioninfo_role_attrib Local_sectioninfo_attrib
 ;
syntax Local_sect1_attrib
        = 
        ()
 ;
syntax Sect1_role_attrib
        = 
        Role_attrib
 ;
syntax Sect1
        = 
        sect1: Sect1_attlist Sect1info? Sect_title_content Nav_class* ((Divcomponent_mix+ (Refentry_class* | Sect2* | Simplesect*)) | Refentry_class+ | Sect2+ | Simplesect+) Nav_class*
 ;
syntax Sect1_attlist
        = 
        ("sect2" | "sect3" | "sect4" | "sect5")? Label_attrib Status_attrib Common_attrib Sect1_role_attrib Local_sect1_attrib
 ;
syntax Local_sect2_attrib
        = 
        ()
 ;
syntax Sect2_role_attrib
        = 
        Role_attrib
 ;
syntax Sect2
        = 
        sect2: Sect2_attlist Sect2info? Sect_title_content Nav_class* ((Divcomponent_mix+ (Refentry_class* | Sect3* | Simplesect*)) | Refentry_class+ | Sect3+ | Simplesect+) Nav_class*
 ;
syntax Sect2_attlist
        = 
        ("sect1" | "sect3" | "sect4" | "sect5")? Label_attrib Status_attrib Common_attrib Sect2_role_attrib Local_sect2_attrib
 ;
syntax Local_sect3_attrib
        = 
        ()
 ;
syntax Sect3_role_attrib
        = 
        Role_attrib
 ;
syntax Sect3
        = 
        sect3: Sect3_attlist Sect3info? Sect_title_content Nav_class* ((Divcomponent_mix+ (Refentry_class* | Sect4* | Simplesect*)) | Refentry_class+ | Sect4+ | Simplesect+) Nav_class*
 ;
syntax Sect3_attlist
        = 
        ("sect1" | "sect2" | "sect4" | "sect5")? Label_attrib Status_attrib Common_attrib Sect3_role_attrib Local_sect3_attrib
 ;
syntax Local_sect4_attrib
        = 
        ()
 ;
syntax Sect4_role_attrib
        = 
        Role_attrib
 ;
syntax Sect4
        = 
        sect4: Sect4_attlist Sect4info? Sect_title_content Nav_class* ((Divcomponent_mix+ (Refentry_class* | Sect5* | Simplesect*)) | Refentry_class+ | Sect5+ | Simplesect+) Nav_class*
 ;
syntax Sect4_attlist
        = 
        ("sect1" | "sect2" | "sect3" | "sect5")? Label_attrib Status_attrib Common_attrib Sect4_role_attrib Local_sect4_attrib
 ;
syntax Local_sect5_attrib
        = 
        ()
 ;
syntax Sect5_role_attrib
        = 
        Role_attrib
 ;
syntax Sect5
        = 
        sect5: Sect5_attlist Sect5info? Sect_title_content Nav_class* ((Divcomponent_mix+ (Refentry_class* | Simplesect*)) | Refentry_class+ | Simplesect+) Nav_class*
 ;
syntax Sect5_attlist
        = 
        ("sect1" | "sect2" | "sect3" | "sect4")? Label_attrib Status_attrib Common_attrib Sect5_role_attrib Local_sect5_attrib
 ;
syntax Local_simplesect_attrib
        = 
        ()
 ;
syntax Simplesect_role_attrib
        = 
        Role_attrib
 ;
syntax Simplesect
        = 
        simplesect: Simplesect_attlist Sect_title_content Divcomponent_mix+
 ;
syntax Simplesect_attlist
        = 
        Common_attrib Simplesect_role_attrib Local_simplesect_attrib
 ;
syntax Local_bibliography_attrib
        = 
        ()
 ;
syntax Bibliography_role_attrib
        = 
        Role_attrib
 ;
syntax Bibliography
        = 
        bibliography: Bibliography_attlist Bibliographyinfo? Bookcomponent_title_content? Component_mix* (Bibliodiv+ | (Biblioentry | Bibliomixed)+)
 ;
syntax Bibliography_attlist
        = 
        Status_attrib Common_attrib Bibliography_role_attrib Local_bibliography_attrib
 ;
syntax Local_bibliodiv_attrib
        = 
        ()
 ;
syntax Bibliodiv_role_attrib
        = 
        Role_attrib
 ;
syntax Bibliodiv
        = 
        bibliodiv: Bibliodiv_attlist Sect_title_content? Component_mix* (Biblioentry | Bibliomixed)+
 ;
syntax Bibliodiv_attlist
        = 
        Status_attrib Common_attrib Bibliodiv_role_attrib Local_bibliodiv_attrib
 ;
syntax Local_glossary_attrib
        = 
        ()
 ;
syntax Glossary_role_attrib
        = 
        Role_attrib
 ;
syntax Glossary
        = 
        glossary: Glossary_attlist Glossaryinfo? Bookcomponent_title_content? Component_mix* (Glossdiv+ | Glossentry+) Bibliography?
 ;
syntax Glossary_attlist
        = 
        Status_attrib Common_attrib Glossary_role_attrib Local_glossary_attrib
 ;
syntax Local_glossdiv_attrib
        = 
        ()
 ;
syntax Glossdiv_role_attrib
        = 
        Role_attrib
 ;
syntax Glossdiv
        = 
        glossdiv: Glossdiv_attlist Sect_title_content Component_mix* Glossentry+
 ;
syntax Glossdiv_attlist
        = 
        Status_attrib Common_attrib Glossdiv_role_attrib Local_glossdiv_attrib
 ;
syntax Local_indexes_attrib
        = 
        ()
 ;
syntax Indexes_role_attrib
        = 
        Role_attrib
 ;
syntax Index
        = 
        index: Index_attlist Indexinfo? Bookcomponent_title_content? Component_mix* (Indexdiv* | Indexentry*)
 ;
syntax Index_attlist
        = 
        Common_attrib Indexes_role_attrib Local_indexes_attrib
 ;
syntax Setindex
        = 
        setindex: Setindex_attlist Setindexinfo? Bookcomponent_title_content? Component_mix* (Indexdiv* | Indexentry*)
 ;
syntax Setindex_attlist
        = 
        Common_attrib Indexes_role_attrib Local_indexes_attrib
 ;
syntax Local_indexdiv_attrib
        = 
        ()
 ;
syntax Indexdiv_role_attrib
        = 
        Role_attrib
 ;
syntax Indexdiv
        = 
        indexdiv: Indexdiv_attlist Sect_title_content? Indexdivcomponent_mix* (Indexentry+ | Segmentedlist)
 ;
syntax Indexdiv_attlist
        = 
        Common_attrib Indexdiv_role_attrib Local_indexdiv_attrib
 ;
syntax Local_indexentry_attrib
        = 
        ()
 ;
syntax Indexentry_role_attrib
        = 
        Role_attrib
 ;
syntax Indexentry
        = 
        indexentry: Indexentry_attlist Primaryie (Seeie | Seealsoie)* (Secondaryie (Seeie | Seealsoie | Tertiaryie)*)*
 ;
syntax Indexentry_attlist
        = 
        Common_attrib Indexentry_role_attrib Local_indexentry_attrib
 ;
syntax Local_primsecterie_attrib
        = 
        ()
 ;
syntax Primsecterie_role_attrib
        = 
        Role_attrib
 ;
syntax Primaryie
        = 
        primaryie: Primaryie_attlist Ndxterm_char_mix*
 ;
syntax Primaryie_attlist
        = 
        Linkends_attrib Common_attrib Primsecterie_role_attrib Local_primsecterie_attrib
 ;
syntax Secondaryie
        = 
        secondaryie: Secondaryie_attlist Ndxterm_char_mix*
 ;
syntax Secondaryie_attlist
        = 
        Linkends_attrib Common_attrib Primsecterie_role_attrib Local_primsecterie_attrib
 ;
syntax Tertiaryie
        = 
        tertiaryie: Tertiaryie_attlist Ndxterm_char_mix*
 ;
syntax Tertiaryie_attlist
        = 
        Linkends_attrib Common_attrib Primsecterie_role_attrib Local_primsecterie_attrib
 ;
syntax Local_seeie_attrib
        = 
        ()
 ;
syntax Seeie_role_attrib
        = 
        Role_attrib
 ;
syntax Seeie
        = 
        seeie: Seeie_attlist Ndxterm_char_mix*
 ;
syntax Seeie_attlist
        = 
        Linkend_attrib Common_attrib Seeie_role_attrib Local_seeie_attrib
 ;
syntax Local_seealsoie_attrib
        = 
        ()
 ;
syntax Seealsoie_role_attrib
        = 
        Role_attrib
 ;
syntax Seealsoie
        = 
        seealsoie: Seealsoie_attlist Ndxterm_char_mix*
 ;
syntax Seealsoie_attlist
        = 
        Linkends_attrib Common_attrib Seealsoie_role_attrib Local_seealsoie_attrib
 ;
syntax Local_refentry_attrib
        = 
        ()
 ;
syntax Refentry_role_attrib
        = 
        Role_attrib
 ;
syntax Refentry
        = 
        refentry: Refentry_attlist Beginpage? Ndxterm_class* Refentryinfo? Refmeta? (Remark | Link_char_class)* Refnamediv Refsynopsisdiv? (Refsect1+ | Refsection+)
 ;
syntax Refentry_attlist
        = 
        Status_attrib Common_attrib Refentry_role_attrib Local_refentry_attrib
 ;
syntax Local_refmeta_attrib
        = 
        ()
 ;
syntax Refmeta_role_attrib
        = 
        Role_attrib
 ;
syntax Refmeta
        = 
        refmeta: Refmeta_attlist Ndxterm_class* Refentrytitle Manvolnum? Refmiscinfo* Ndxterm_class*
 ;
syntax Refmeta_attlist
        = 
        Common_attrib Refmeta_role_attrib Local_refmeta_attrib
 ;
syntax Local_refmiscinfo_attrib
        = 
        ()
 ;
syntax Refmiscinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Refmiscinfo
        = 
        refmiscinfo: Refmiscinfo_attlist Docinfo_char_mix*
 ;
syntax Refmiscinfo_attlist
        = 
        String class? Common_attrib Refmiscinfo_role_attrib Local_refmiscinfo_attrib
 ;
syntax Local_refnamediv_attrib
        = 
        ()
 ;
syntax Refnamediv_role_attrib
        = 
        Role_attrib
 ;
syntax Refnamediv
        = 
        refnamediv: Refnamediv_attlist Refdescriptor? Refname+ Refpurpose Refclass* (Remark | Link_char_class)*
 ;
syntax Refnamediv_attlist
        = 
        Common_attrib Refnamediv_role_attrib Local_refnamediv_attrib
 ;
syntax Local_refdescriptor_attrib
        = 
        ()
 ;
syntax Refdescriptor_role_attrib
        = 
        Role_attrib
 ;
syntax Refdescriptor
        = 
        refdescriptor: Refdescriptor_attlist Refname_char_mix*
 ;
syntax Refdescriptor_attlist
        = 
        Common_attrib Refdescriptor_role_attrib Local_refdescriptor_attrib
 ;
syntax Local_refname_attrib
        = 
        ()
 ;
syntax Refname_role_attrib
        = 
        Role_attrib
 ;
syntax Refname
        = 
        refname: Refname_attlist Refname_char_mix*
 ;
syntax Refname_attlist
        = 
        Common_attrib Refname_role_attrib Local_refname_attrib
 ;
syntax Local_refpurpose_attrib
        = 
        ()
 ;
syntax Refpurpose_role_attrib
        = 
        Role_attrib
 ;
syntax Refpurpose
        = 
        refpurpose: Refpurpose_attlist Refinline_char_mix*
 ;
syntax Refpurpose_attlist
        = 
        Common_attrib Refpurpose_role_attrib Local_refpurpose_attrib
 ;
syntax Local_refclass_attrib
        = 
        ()
 ;
syntax Refclass_role_attrib
        = 
        Role_attrib
 ;
syntax Refclass
        = 
        refclass: Refclass_attlist Refclass_char_mix*
 ;
syntax Refclass_attlist
        = 
        Common_attrib Refclass_role_attrib Local_refclass_attrib
 ;
syntax Local_refsynopsisdiv_attrib
        = 
        ()
 ;
syntax Refsynopsisdiv_role_attrib
        = 
        Role_attrib
 ;
syntax Refsynopsisdiv
        = 
        refsynopsisdiv: Refsynopsisdiv_attlist Refsynopsisdivinfo? Refsect_title_content? ((Refcomponent_mix+ Refsect2*) | Refsect2+)
 ;
syntax Refsynopsisdiv_attlist
        = 
        Common_attrib Refsynopsisdiv_role_attrib Local_refsynopsisdiv_attrib
 ;
syntax Local_refsection_attrib
        = 
        ()
 ;
syntax Refsection_role_attrib
        = 
        Role_attrib
 ;
syntax Refsection
        = 
        refsection: Refsection_attlist Refsectioninfo? Refsect_title_content ((Refcomponent_mix+ Refsection*) | Refsection+)
 ;
syntax Refsection_attlist
        = 
        Status_attrib Common_attrib Refsection_role_attrib Local_refsection_attrib
 ;
syntax Local_refsect1_attrib
        = 
        ()
 ;
syntax Refsect1_role_attrib
        = 
        Role_attrib
 ;
syntax Refsect1
        = 
        refsect1: Refsect1_attlist Refsect1info? Refsect_title_content ((Refcomponent_mix+ Refsect2*) | Refsect2+)
 ;
syntax Refsect1_attlist
        = 
        Status_attrib Common_attrib Refsect1_role_attrib Local_refsect1_attrib
 ;
syntax Local_refsect2_attrib
        = 
        ()
 ;
syntax Refsect2_role_attrib
        = 
        Role_attrib
 ;
syntax Refsect2
        = 
        refsect2: Refsect2_attlist Refsect2info? Refsect_title_content ((Refcomponent_mix+ Refsect3*) | Refsect3+)
 ;
syntax Refsect2_attlist
        = 
        Status_attrib Common_attrib Refsect2_role_attrib Local_refsect2_attrib
 ;
syntax Local_refsect3_attrib
        = 
        ()
 ;
syntax Refsect3_role_attrib
        = 
        Role_attrib
 ;
syntax Refsect3
        = 
        refsect3: Refsect3_attlist Refsect3info? Refsect_title_content Refcomponent_mix+
 ;
syntax Refsect3_attlist
        = 
        Status_attrib Common_attrib Refsect3_role_attrib Local_refsect3_attrib
 ;
syntax Local_article_attrib
        = 
        ()
 ;
syntax Article_role_attrib
        = 
        Role_attrib
 ;
syntax Article
        = 
        article: Article_attlist Div_title_content? Articleinfo? Tocchap? Lot* Bookcomponent_content (Nav_class | Appendix_class | Ackno)*
 ;
syntax Article_attlist
        = 
        ("journalarticle" | "productsheet" | "whitepaper" | "techreport" | "specification" | "faq")? String parentbook? Status_attrib Common_attrib Article_role_attrib Local_article_attrib
 ;
syntax Local_notation_class
        = 
        ()
 ;
syntax Notation_class
        = "BMP"
        | "CGM-CHAR"
        | "CGM-BINARY"
        | "CGM-CLEAR"
        | "DITROFF"
        | "DVI"
        | "EPS"
        | "EQN"
        | "FAX"
        | "GIF"
        | "GIF87a"
        | "GIF89a"
        | "JPG"
        | "JPEG"
        | "IGES"
        | "PCX"
        | "PIC"
        | "PNG"
        | "PS"
        | "SGML"
        | "TBL"
        | "TEX"
        | "TIFF"
        | "WMF"
        | "WPG"
        | "SVG"
        | "linespecific"
        | Local_notation_class
 ;
syntax Yesorno_attvals
        = 
        String
 ;
syntax Local_ndxterm_class
        = 
        ()
 ;
syntax Ndxterm_class
        = Indexterm
        | Local_ndxterm_class
 ;
syntax Local_list_class
        = 
        ()
 ;
syntax List_class
        = Calloutlist
        | Glosslist
        | Itemizedlist
        | Orderedlist
        | Segmentedlist
        | Simplelist
        | Variablelist
        | Local_list_class
 ;
syntax Local_admon_class
        = 
        ()
 ;
syntax Admon_class
        = Caution
        | Important
        | Note
        | Tip
        | Warning
        | Local_admon_class
 ;
syntax Local_linespecific_class
        = 
        ()
 ;
syntax Linespecific_class
        = Literallayout
        | Programlisting
        | Programlistingco
        | Screen
        | Screenco
        | Screenshot
        | Local_linespecific_class
 ;
syntax Local_method_synop_class
        = 
        ()
 ;
syntax Method_synop_class
        = Constructorsynopsis
        | Destructorsynopsis
        | Methodsynopsis
        | Local_method_synop_class
 ;
syntax Local_synop_class
        = 
        ()
 ;
syntax Synop_class
        = Synopsis
        | Cmdsynopsis
        | Funcsynopsis
        | Classsynopsis
        | Fieldsynopsis
        | Method_synop_class
        | Local_synop_class
 ;
syntax Local_para_class
        = 
        ()
 ;
syntax Para_class
        = Formalpara
        | Para
        | Simpara
        | Local_para_class
 ;
syntax Local_informal_class
        = 
        ()
 ;
syntax Informal_class
        = Address
        | Blockquote
        | Graphic
        | Graphicco
        | Mediaobject
        | Mediaobjectco
        | Informalequation
        | Informalexample
        | Informalfigure
        | Informaltable
        | Local_informal_class
 ;
syntax Local_formal_class
        = 
        ()
 ;
syntax Formal_class
        = Equation
        | Example
        | Figure
        | Table
        | Local_formal_class
 ;
syntax Ebnf_block_hook
        = 
        ()
 ;
syntax Local_compound_class
        = 
        ()
 ;
syntax Compound_class
        = Msgset
        | Procedure
        | Sidebar
        | Qandaset
        | Ebnf_block_hook
        | Local_compound_class
 ;
syntax Local_genobj_class
        = 
        ()
 ;
syntax Genobj_class
        = Anchor
        | Bridgehead
        | Remark
        | Highlights
        | Local_genobj_class
 ;
syntax Local_descobj_class
        = 
        ()
 ;
syntax Descobj_class
        = Abstract
        | Authorblurb
        | Epigraph
        | Local_descobj_class
 ;
syntax Local_xref_char_class
        = 
        ()
 ;
syntax Xref_char_class
        = Footnoteref
        | Xref
        | Local_xref_char_class
 ;
syntax Local_gen_char_class
        = 
        ()
 ;
syntax Gen_char_class
        = Abbrev
        | Acronym
        | Citation
        | Citerefentry
        | Citetitle
        | Emphasis
        | Firstterm
        | Foreignphrase
        | Glossterm
        | Footnote
        | Phrase
        | Quote
        | Trademark
        | Wordasword
        | Personname
        | Local_gen_char_class
 ;
syntax Local_link_char_class
        = 
        ()
 ;
syntax Link_char_class
        = Link
        | Olink
        | Ulink
        | Local_link_char_class
 ;
syntax Ebnf_inline_hook
        = 
        ()
 ;
syntax Local_tech_char_class
        = 
        ()
 ;
syntax Tech_char_class
        = Action
        | Application
        | Classname
        | Methodname
        | Interfacename
        | Exceptionname
        | Ooclass
        | Oointerface
        | Ooexception
        | Command
        | Computeroutput
        | Database
        | Email
        | Envar
        | Errorcode
        | Errorname
        | Errortype
        | Errortext
        | Filename
        | Function
        | Guibutton
        | Guiicon
        | Guilabel
        | Guimenu
        | Guimenuitem
        | Guisubmenu
        | Hardware
        | Interface
        | Keycap
        | Keycode
        | Keycombo
        | Keysym
        | Literal
        | Constant
        | Markup
        | Medialabel
        | Menuchoice
        | Mousebutton
        | Option
        | Optional
        | Parameter
        | Prompt
        | Property
        | Replaceable
        | Returnvalue
        | Sgmltag
        | Structfield
        | Structname
        | Symbol
        | Systemitem
        | Token
        | Type
        | Userinput
        | Varname
        | Ebnf_inline_hook
        | Local_tech_char_class
 ;
syntax Local_base_char_class
        = 
        ()
 ;
syntax Base_char_class
        = Anchor
        | Local_base_char_class
 ;
syntax Local_docinfo_char_class
        = 
        ()
 ;
syntax Docinfo_char_class
        = Author
        | Authorinitials
        | Corpauthor
        | Modespec
        | Othercredit
        | Productname
        | Productnumber
        | Revhistory
        | Local_docinfo_char_class
 ;
syntax Local_other_char_class
        = 
        ()
 ;
syntax Other_char_class
        = Remark
        | Subscript
        | Superscript
        | Local_other_char_class
 ;
syntax Local_inlineobj_char_class
        = 
        ()
 ;
syntax Inlineobj_char_class
        = Inlinegraphic
        | Inlinemediaobject
        | Inlineequation
        | Local_inlineobj_char_class
 ;
syntax Formalobject_title_content
        = 
        Title Titleabbrev?
 ;
syntax Local_component_mix
        = 
        ()
 ;
syntax Component_mix
        = List_class
        | Admon_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Formal_class
        | Compound_class
        | Genobj_class
        | Descobj_class
        | Ndxterm_class
        | Beginpage
        | Local_component_mix
 ;
syntax Local_sidebar_mix
        = 
        ()
 ;
syntax Sidebar_mix
        = List_class
        | Admon_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Formal_class
        | Procedure
        | Genobj_class
        | Ndxterm_class
        | Beginpage
        | Local_sidebar_mix
 ;
syntax Local_qandaset_mix
        = 
        ()
 ;
syntax Qandaset_mix
        = List_class
        | Admon_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Formal_class
        | Procedure
        | Genobj_class
        | Ndxterm_class
        | Local_qandaset_mix
 ;
syntax Local_revdescription_mix
        = 
        ()
 ;
syntax Revdescription_mix
        = List_class
        | Admon_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Formal_class
        | Procedure
        | Genobj_class
        | Ndxterm_class
        | Local_revdescription_mix
 ;
syntax Local_footnote_mix
        = 
        ()
 ;
syntax Footnote_mix
        = List_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Local_footnote_mix
 ;
syntax Local_example_mix
        = 
        ()
 ;
syntax Example_mix
        = List_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Ndxterm_class
        | Beginpage
        | Local_example_mix
 ;
syntax Local_highlights_mix
        = 
        ()
 ;
syntax Highlights_mix
        = List_class
        | Admon_class
        | Para_class
        | Ndxterm_class
        | Local_highlights_mix
 ;
syntax Local_para_mix
        = 
        ()
 ;
syntax Para_mix
        = List_class
        | Admon_class
        | Linespecific_class
        | Informal_class
        | Formal_class
        | Local_para_mix
 ;
syntax Local_admon_mix
        = 
        ()
 ;
syntax Admon_mix
        = List_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Formal_class
        | Procedure
        | Sidebar
        | Anchor
        | Bridgehead
        | Remark
        | Ndxterm_class
        | Beginpage
        | Local_admon_mix
 ;
syntax Local_figure_mix
        = 
        ()
 ;
syntax Figure_mix
        = Linespecific_class
        | Synop_class
        | Informal_class
        | Ndxterm_class
        | Beginpage
        | Local_figure_mix
 ;
syntax Local_tabentry_mix
        = 
        ()
 ;
syntax Tabentry_mix
        = List_class
        | Admon_class
        | Linespecific_class
        | Para_class
        | Graphic
        | Mediaobject
        | Local_tabentry_mix
 ;
syntax Local_glossdef_mix
        = 
        ()
 ;
syntax Glossdef_mix
        = List_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Formal_class
        | Remark
        | Ndxterm_class
        | Beginpage
        | Local_glossdef_mix
 ;
syntax Local_legalnotice_mix
        = 
        ()
 ;
syntax Legalnotice_mix
        = List_class
        | Admon_class
        | Linespecific_class
        | Para_class
        | Blockquote
        | Ndxterm_class
        | Beginpage
        | Local_legalnotice_mix
 ;
syntax Local_textobject_mix
        = 
        ()
 ;
syntax Textobject_mix
        = List_class
        | Admon_class
        | Linespecific_class
        | Para_class
        | Blockquote
        | Local_textobject_mix
 ;
syntax Local_mediaobject_mix
        = 
        ()
 ;
syntax Mediaobject_mix
        = Videoobject
        | Audioobject
        | Imageobject
        | Textobject
        | Local_mediaobject_mix
 ;
syntax Local_listpreamble_mix
        = 
        ()
 ;
syntax Listpreamble_mix
        = Admon_class
        | Linespecific_class
        | Synop_class
        | Para_class
        | Informal_class
        | Genobj_class
        | Descobj_class
        | Ndxterm_class
        | Beginpage
        | Local_listpreamble_mix
 ;
syntax Forminlines_hook
        = 
        ()
 ;
syntax Local_para_char_mix
        = 
        ()
 ;
syntax Para_char_mix
        = String
        | Xref_char_class
        | Gen_char_class
        | Link_char_class
        | Tech_char_class
        | Base_char_class
        | Docinfo_char_class
        | Other_char_class
        | Inlineobj_char_class
        | Synop_class
        | Ndxterm_class
        | Beginpage
        | Forminlines_hook
        | Local_para_char_mix
 ;
syntax Local_title_char_mix
        = 
        ()
 ;
syntax Title_char_mix
        = String
        | Xref_char_class
        | Gen_char_class
        | Link_char_class
        | Tech_char_class
        | Base_char_class
        | Docinfo_char_class
        | Other_char_class
        | Inlineobj_char_class
        | Ndxterm_class
        | Local_title_char_mix
 ;
syntax Local_ndxterm_char_mix
        = 
        ()
 ;
syntax Ndxterm_char_mix
        = String
        | Xref_char_class
        | Gen_char_class
        | Link_char_class
        | Tech_char_class
        | Base_char_class
        | Docinfo_char_class
        | Other_char_class
        | Inlinegraphic
        | Inlinemediaobject
        | Local_ndxterm_char_mix
 ;
syntax Local_cptr_char_mix
        = 
        ()
 ;
syntax Cptr_char_mix
        = String
        | Link_char_class
        | Tech_char_class
        | Base_char_class
        | Other_char_class
        | Inlinegraphic
        | Inlinemediaobject
        | Ndxterm_class
        | Beginpage
        | Local_cptr_char_mix
 ;
syntax Local_smallcptr_char_mix
        = 
        ()
 ;
syntax Smallcptr_char_mix
        = String
        | Replaceable
        | Inlinegraphic
        | Inlinemediaobject
        | Ndxterm_class
        | Beginpage
        | Local_smallcptr_char_mix
 ;
syntax Local_word_char_mix
        = 
        ()
 ;
syntax Word_char_mix
        = String
        | Acronym
        | Emphasis
        | Trademark
        | Link_char_class
        | Base_char_class
        | Other_char_class
        | Inlinegraphic
        | Inlinemediaobject
        | Ndxterm_class
        | Beginpage
        | Local_word_char_mix
 ;
syntax Local_docinfo_char_mix
        = 
        ()
 ;
syntax Docinfo_char_mix
        = String
        | Link_char_class
        | Emphasis
        | Trademark
        | Replaceable
        | Other_char_class
        | Inlinegraphic
        | Inlinemediaobject
        | Ndxterm_class
        | Local_docinfo_char_mix
 ;
syntax Arch_attrib
        = 
        String arch?
 ;
syntax Condition_attrib
        = 
        String condition?
 ;
syntax Conformance_attrib
        = 
        String conformance?
 ;
syntax Os_attrib
        = 
        String os?
 ;
syntax Revision_attrib
        = 
        String revision?
 ;
syntax Security_attrib
        = 
        String security?
 ;
syntax Userlevel_attrib
        = 
        String userlevel?
 ;
syntax Vendor_attrib
        = 
        String vendor?
 ;
syntax Local_effectivity_attrib
        = 
        ()
 ;
syntax Effectivity_attrib
        = 
        Arch_attrib Condition_attrib Conformance_attrib Os_attrib Revision_attrib Security_attrib Userlevel_attrib Vendor_attrib Local_effectivity_attrib
 ;
syntax Id_attrib
        = 
        String id?
 ;
syntax Idreq_attrib
        = 
        id: String
 ;
syntax Lang_attrib
        = 
        String lang?
 ;
syntax Remap_attrib
        = 
        String remap?
 ;
syntax Role_attrib
        = 
        String role?
 ;
syntax Xreflabel_attrib
        = 
        String xreflabel?
 ;
syntax Revisionflag_attrib
        = 
        ("changed" | "added" | "deleted" | "off")?
 ;
syntax Local_common_attrib
        = 
        ()
 ;
syntax Common_attrib
        = 
        Id_attrib Lang_attrib Remap_attrib Xreflabel_attrib Revisionflag_attrib Effectivity_attrib Local_common_attrib
 ;
syntax Idreq_common_attrib
        = 
        Idreq_attrib Lang_attrib Remap_attrib Xreflabel_attrib Revisionflag_attrib Effectivity_attrib Local_common_attrib
 ;
syntax Local_graphics_attrib
        = 
        ()
 ;
syntax Graphics_attrib
        = 
        String entityref? String fileref? Notation_class? String srccredit? String width? String contentwidth? String depth? String contentdepth? ("left" | "right" | "center")? ("top" | "middle" | "bottom")? String scale? Yesorno_attvals scalefit? Local_graphics_attrib
 ;
syntax Local_keyaction_attrib
        = 
        ()
 ;
syntax Keyaction_attrib
        = 
        ("click" | "double-click" | "press" | "seq" | "simul" | "other")? String otheraction? Local_keyaction_attrib
 ;
syntax Label_attrib
        = 
        String label?
 ;
syntax Linespecific_attrib
        = 
        "linespecific"? ("numbered" | "unnumbered")?
 ;
syntax Linkend_attrib
        = 
        String linkend?
 ;
syntax Linkendreq_attrib
        = 
        linkend: String
 ;
syntax Linkends_attrib
        = 
        String linkends?
 ;
syntax Local_mark_attrib
        = 
        ()
 ;
syntax Mark_attrib
        = 
        String mark? Local_mark_attrib
 ;
syntax Moreinfo_attrib
        = 
        ("refentry" | "none")?
 ;
syntax Pagenum_attrib
        = 
        String pagenum?
 ;
syntax Local_status_attrib
        = 
        ()
 ;
syntax Status_attrib
        = 
        String status? Local_status_attrib
 ;
syntax Width_attrib
        = 
        String width?
 ;
syntax Local_title_attrib
        = 
        ()
 ;
syntax Title_role_attrib
        = 
        Role_attrib
 ;
syntax Title
        = 
        title: Title_attlist Title_char_mix*
 ;
syntax Title_attlist
        = 
        Pagenum_attrib Common_attrib Title_role_attrib Local_title_attrib
 ;
syntax Local_titleabbrev_attrib
        = 
        ()
 ;
syntax Titleabbrev_role_attrib
        = 
        Role_attrib
 ;
syntax Titleabbrev
        = 
        titleabbrev: Titleabbrev_attlist Title_char_mix*
 ;
syntax Titleabbrev_attlist
        = 
        Common_attrib Titleabbrev_role_attrib Local_titleabbrev_attrib
 ;
syntax Local_subtitle_attrib
        = 
        ()
 ;
syntax Subtitle_role_attrib
        = 
        Role_attrib
 ;
syntax Subtitle
        = 
        subtitle: Subtitle_attlist Title_char_mix*
 ;
syntax Subtitle_attlist
        = 
        Common_attrib Subtitle_role_attrib Local_subtitle_attrib
 ;
syntax Local_person_ident_mix
        = 
        ()
 ;
syntax Person_ident_mix
        = Honorific
        | Firstname
        | Surname
        | Lineage
        | Othername
        | Affiliation
        | Authorblurb
        | Contrib
        | Local_person_ident_mix
 ;
syntax Local_bibliocomponent_mix
        = 
        ()
 ;
syntax Bibliocomponent_mix
        = Abbrev
        | Abstract
        | Address
        | Artpagenums
        | Author
        | Authorgroup
        | Authorinitials
        | Bibliomisc
        | Biblioset
        | Collab
        | Confgroup
        | Contractnum
        | Contractsponsor
        | Copyright
        | Corpauthor
        | Corpname
        | Date
        | Edition
        | Editor
        | Invpartnumber
        | Isbn
        | Issn
        | Issuenum
        | Orgname
        | Biblioid
        | Citebiblioid
        | Bibliosource
        | Bibliorelation
        | Bibliocoverage
        | Othercredit
        | Pagenums
        | Printhistory
        | Productname
        | Productnumber
        | Pubdate
        | Publisher
        | Publishername
        | Pubsnumber
        | Releaseinfo
        | Revhistory
        | Seriesvolnums
        | Subtitle
        | Title
        | Titleabbrev
        | Volumenum
        | Citetitle
        | Personname
        | Person_ident_mix
        | Ndxterm_class
        | Local_bibliocomponent_mix
 ;
syntax Local_info_class
        = 
        ()
 ;
syntax Info_class
        = Graphic
        | Mediaobject
        | Legalnotice
        | Modespec
        | Subjectset
        | Keywordset
        | Itermset
        | Bibliocomponent_mix
        | Local_info_class
 ;
syntax Local_biblioentry_attrib
        = 
        ()
 ;
syntax Biblioentry_role_attrib
        = 
        Role_attrib
 ;
syntax Biblioentry
        = 
        biblioentry: Biblioentry_attlist (Articleinfo | Bibliocomponent_mix)+
 ;
syntax Biblioentry_attlist
        = 
        Common_attrib Biblioentry_role_attrib Local_biblioentry_attrib
 ;
syntax Local_bibliomixed_attrib
        = 
        ()
 ;
syntax Bibliomixed_role_attrib
        = 
        Role_attrib
 ;
syntax Bibliomixed
        = 
        bibliomixed: Bibliomixed_attlist (String | Bibliocomponent_mix | Bibliomset)*
 ;
syntax Bibliomixed_attlist
        = 
        Common_attrib Bibliomixed_role_attrib Local_bibliomixed_attrib
 ;
syntax Local_articleinfo_attrib
        = 
        ()
 ;
syntax Articleinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Articleinfo
        = 
        articleinfo: Articleinfo_attlist Info_class+
 ;
syntax Articleinfo_attlist
        = 
        Common_attrib Articleinfo_role_attrib Local_articleinfo_attrib
 ;
syntax Local_biblioset_attrib
        = 
        ()
 ;
syntax Biblioset_role_attrib
        = 
        Role_attrib
 ;
syntax Biblioset
        = 
        biblioset: Biblioset_attlist Bibliocomponent_mix+
 ;
syntax Biblioset_attlist
        = 
        String relation? Common_attrib Biblioset_role_attrib Local_biblioset_attrib
 ;
syntax Bibliomset_role_attrib
        = 
        Role_attrib
 ;
syntax Local_bibliomset_attrib
        = 
        ()
 ;
syntax Bibliomset
        = 
        bibliomset: Bibliomset_attlist (String | Bibliocomponent_mix | Bibliomset)*
 ;
syntax Bibliomset_attlist
        = 
        String relation? Common_attrib Bibliomset_role_attrib Local_bibliomset_attrib
 ;
syntax Local_bibliomisc_attrib
        = 
        ()
 ;
syntax Bibliomisc_role_attrib
        = 
        Role_attrib
 ;
syntax Bibliomisc
        = 
        bibliomisc: Bibliomisc_attlist Para_char_mix*
 ;
syntax Bibliomisc_attlist
        = 
        Common_attrib Bibliomisc_role_attrib Local_bibliomisc_attrib
 ;
syntax Local_subjectset_attrib
        = 
        ()
 ;
syntax Subjectset_role_attrib
        = 
        Role_attrib
 ;
syntax Subjectset
        = 
        subjectset: Subjectset_attlist Subject+
 ;
syntax Subjectset_attlist
        = 
        String scheme? Common_attrib Subjectset_role_attrib Local_subjectset_attrib
 ;
syntax Local_subject_attrib
        = 
        ()
 ;
syntax Subject_role_attrib
        = 
        Role_attrib
 ;
syntax Subject
        = 
        subject: Subject_attlist Subjectterm+
 ;
syntax Subject_attlist
        = 
        String weight? Common_attrib Subject_role_attrib Local_subject_attrib
 ;
syntax Local_subjectterm_attrib
        = 
        ()
 ;
syntax Subjectterm_role_attrib
        = 
        Role_attrib
 ;
syntax Subjectterm
        = 
        subjectterm: Subjectterm_attlist String
 ;
syntax Subjectterm_attlist
        = 
        Common_attrib Subjectterm_role_attrib Local_subjectterm_attrib
 ;
syntax Local_keywordset_attrib
        = 
        ()
 ;
syntax Keywordset_role_attrib
        = 
        Role_attrib
 ;
syntax Keywordset
        = 
        keywordset: Keywordset_attlist Keyword+
 ;
syntax Keywordset_attlist
        = 
        Common_attrib Keywordset_role_attrib Local_keywordset_attrib
 ;
syntax Local_keyword_attrib
        = 
        ()
 ;
syntax Keyword_role_attrib
        = 
        Role_attrib
 ;
syntax Keyword
        = 
        keyword: Keyword_attlist String
 ;
syntax Keyword_attlist
        = 
        Common_attrib Keyword_role_attrib Local_keyword_attrib
 ;
syntax Local_itermset_attrib
        = 
        ()
 ;
syntax Itermset_role_attrib
        = 
        Role_attrib
 ;
syntax Itermset
        = 
        itermset: Itermset_attlist Indexterm+
 ;
syntax Itermset_attlist
        = 
        Common_attrib Itermset_role_attrib Local_itermset_attrib
 ;
syntax Local_blockinfo_attrib
        = 
        ()
 ;
syntax Blockinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Blockinfo
        = 
        blockinfo: Blockinfo_attlist Info_class+
 ;
syntax Blockinfo_attlist
        = 
        Common_attrib Blockinfo_role_attrib Local_blockinfo_attrib
 ;
syntax Local_msgset_attrib
        = 
        ()
 ;
syntax Msgset_role_attrib
        = 
        Role_attrib
 ;
syntax Msgset
        = 
        msgset: Msgset_attlist Blockinfo? Formalobject_title_content? (Msgentry+ | Simplemsgentry+)
 ;
syntax Msgset_attlist
        = 
        Common_attrib Msgset_role_attrib Local_msgset_attrib
 ;
syntax Local_msgentry_attrib
        = 
        ()
 ;
syntax Msgentry_role_attrib
        = 
        Role_attrib
 ;
syntax Msgentry
        = 
        msgentry: Msgentry_attlist Msg+ Msginfo? Msgexplan*
 ;
syntax Msgentry_attlist
        = 
        Common_attrib Msgentry_role_attrib Local_msgentry_attrib
 ;
syntax Local_simplemsgentry_attrib
        = 
        ()
 ;
syntax Simplemsgentry_role_attrib
        = 
        Role_attrib
 ;
syntax Simplemsgentry
        = 
        simplemsgentry: Simplemsgentry_attlist Msgtext Msgexplan+
 ;
syntax Simplemsgentry_attlist
        = 
        String audience? String level? String origin? Common_attrib Simplemsgentry_role_attrib Local_simplemsgentry_attrib
 ;
syntax Local_msg_attrib
        = 
        ()
 ;
syntax Msg_role_attrib
        = 
        Role_attrib
 ;
syntax Msg
        = 
        msg: Msg_attlist Title? Msgmain (Msgsub | Msgrel)*
 ;
syntax Msg_attlist
        = 
        Common_attrib Msg_role_attrib Local_msg_attrib
 ;
syntax Local_msgmain_attrib
        = 
        ()
 ;
syntax Msgmain_role_attrib
        = 
        Role_attrib
 ;
syntax Msgmain
        = 
        msgmain: Msgmain_attlist Title? Msgtext
 ;
syntax Msgmain_attlist
        = 
        Common_attrib Msgmain_role_attrib Local_msgmain_attrib
 ;
syntax Local_msgsub_attrib
        = 
        ()
 ;
syntax Msgsub_role_attrib
        = 
        Role_attrib
 ;
syntax Msgsub
        = 
        msgsub: Msgsub_attlist Title? Msgtext
 ;
syntax Msgsub_attlist
        = 
        Common_attrib Msgsub_role_attrib Local_msgsub_attrib
 ;
syntax Local_msgrel_attrib
        = 
        ()
 ;
syntax Msgrel_role_attrib
        = 
        Role_attrib
 ;
syntax Msgrel
        = 
        msgrel: Msgrel_attlist Title? Msgtext
 ;
syntax Msgrel_attlist
        = 
        Common_attrib Msgrel_role_attrib Local_msgrel_attrib
 ;
syntax Local_msginfo_attrib
        = 
        ()
 ;
syntax Msginfo_role_attrib
        = 
        Role_attrib
 ;
syntax Msginfo
        = 
        msginfo: Msginfo_attlist (Msglevel | Msgorig | Msgaud)*
 ;
syntax Msginfo_attlist
        = 
        Common_attrib Msginfo_role_attrib Local_msginfo_attrib
 ;
syntax Local_msglevel_attrib
        = 
        ()
 ;
syntax Msglevel_role_attrib
        = 
        Role_attrib
 ;
syntax Msglevel
        = 
        msglevel: Msglevel_attlist Smallcptr_char_mix*
 ;
syntax Msglevel_attlist
        = 
        Common_attrib Msglevel_role_attrib Local_msglevel_attrib
 ;
syntax Local_msgorig_attrib
        = 
        ()
 ;
syntax Msgorig_role_attrib
        = 
        Role_attrib
 ;
syntax Msgorig
        = 
        msgorig: Msgorig_attlist Smallcptr_char_mix*
 ;
syntax Msgorig_attlist
        = 
        Common_attrib Msgorig_role_attrib Local_msgorig_attrib
 ;
syntax Local_msgaud_attrib
        = 
        ()
 ;
syntax Msgaud_role_attrib
        = 
        Role_attrib
 ;
syntax Msgaud
        = 
        msgaud: Msgaud_attlist Para_char_mix*
 ;
syntax Msgaud_attlist
        = 
        Common_attrib Msgaud_role_attrib Local_msgaud_attrib
 ;
syntax Local_msgexplan_attrib
        = 
        ()
 ;
syntax Msgexplan_role_attrib
        = 
        Role_attrib
 ;
syntax Msgexplan
        = 
        msgexplan: Msgexplan_attlist Title? Component_mix+
 ;
syntax Msgexplan_attlist
        = 
        Common_attrib Msgexplan_role_attrib Local_msgexplan_attrib
 ;
syntax Local_qandaset_attrib
        = 
        ()
 ;
syntax Qandaset_role_attrib
        = 
        Role_attrib
 ;
syntax Qandaset
        = 
        qandaset: Qandaset_attlist Blockinfo? Formalobject_title_content? Qandaset_mix* (Qandadiv+ | Qandaentry+)
 ;
syntax Qandaset_attlist
        = 
        ("qanda" | "number" | "none")? Common_attrib Qandaset_role_attrib Local_qandaset_attrib
 ;
syntax Local_qandadiv_attrib
        = 
        ()
 ;
syntax Qandadiv_role_attrib
        = 
        Role_attrib
 ;
syntax Qandadiv
        = 
        qandadiv: Qandadiv_attlist Blockinfo? Formalobject_title_content? Qandaset_mix* (Qandadiv+ | Qandaentry+)
 ;
syntax Qandadiv_attlist
        = 
        Common_attrib Qandadiv_role_attrib Local_qandadiv_attrib
 ;
syntax Local_qandaentry_attrib
        = 
        ()
 ;
syntax Qandaentry_role_attrib
        = 
        Role_attrib
 ;
syntax Qandaentry
        = 
        qandaentry: Qandaentry_attlist Blockinfo? Revhistory? Question Answer*
 ;
syntax Qandaentry_attlist
        = 
        Common_attrib Qandaentry_role_attrib Local_qandaentry_attrib
 ;
syntax Local_question_attrib
        = 
        ()
 ;
syntax Question_role_attrib
        = 
        Role_attrib
 ;
syntax Question
        = 
        question: Question_attlist Label? Qandaset_mix+
 ;
syntax Question_attlist
        = 
        Common_attrib Question_role_attrib Local_question_attrib
 ;
syntax Local_answer_attrib
        = 
        ()
 ;
syntax Answer_role_attrib
        = 
        Role_attrib
 ;
syntax Answer
        = 
        answer: Answer_attlist Label? Qandaset_mix* Qandaentry*
 ;
syntax Answer_attlist
        = 
        Common_attrib Answer_role_attrib Local_answer_attrib
 ;
syntax Local_label_attrib
        = 
        ()
 ;
syntax Label_role_attrib
        = 
        Role_attrib
 ;
syntax Label
        = 
        label: Label_attlist Word_char_mix*
 ;
syntax Label_attlist
        = 
        Common_attrib Label_role_attrib Local_label_attrib
 ;
syntax Local_procedure_attrib
        = 
        ()
 ;
syntax Procedure_role_attrib
        = 
        Role_attrib
 ;
syntax Procedure
        = 
        procedure: Procedure_attlist Blockinfo? Formalobject_title_content? Component_mix* Step+
 ;
syntax Procedure_attlist
        = 
        Common_attrib Procedure_role_attrib Local_procedure_attrib
 ;
syntax Local_step_attrib
        = 
        ()
 ;
syntax Step_role_attrib
        = 
        Role_attrib
 ;
syntax Step
        = 
        step: Step_attlist Title? ((Component_mix+ (Substeps Component_mix*)?) | (Substeps Component_mix*))
 ;
syntax Step_attlist
        = 
        ("optional" | "required")? Common_attrib Step_role_attrib Local_step_attrib
 ;
syntax Local_substeps_attrib
        = 
        ()
 ;
syntax Substeps_role_attrib
        = 
        Role_attrib
 ;
syntax Substeps
        = 
        substeps: Substeps_attlist Step+
 ;
syntax Substeps_attlist
        = 
        ("optional" | "required")? Common_attrib Substeps_role_attrib Local_substeps_attrib
 ;
syntax Local_sidebarinfo_attrib
        = 
        ()
 ;
syntax Sidebarinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Sidebarinfo
        = 
        sidebarinfo: Sidebarinfo_attlist Info_class+
 ;
syntax Sidebarinfo_attlist
        = 
        Common_attrib Sidebarinfo_role_attrib Local_sidebarinfo_attrib
 ;
syntax Local_sidebar_attrib
        = 
        ()
 ;
syntax Sidebar_role_attrib
        = 
        Role_attrib
 ;
syntax Sidebar
        = 
        sidebar: Sidebar_attlist Sidebarinfo? Formalobject_title_content? Sidebar_mix+
 ;
syntax Sidebar_attlist
        = 
        Common_attrib Sidebar_role_attrib Local_sidebar_attrib
 ;
syntax Local_abstract_attrib
        = 
        ()
 ;
syntax Abstract_role_attrib
        = 
        Role_attrib
 ;
syntax Abstract
        = 
        abstract: Abstract_attlist Title? Para_class+
 ;
syntax Abstract_attlist
        = 
        Common_attrib Abstract_role_attrib Local_abstract_attrib
 ;
syntax Local_authorblurb_attrib
        = 
        ()
 ;
syntax Authorblurb_role_attrib
        = 
        Role_attrib
 ;
syntax Authorblurb
        = 
        authorblurb: Authorblurb_attlist Title? Para_class+
 ;
syntax Authorblurb_attlist
        = 
        Common_attrib Authorblurb_role_attrib Local_authorblurb_attrib
 ;
syntax Local_personblurb_attrib
        = 
        ()
 ;
syntax Personblurb_role_attrib
        = 
        Role_attrib
 ;
syntax Personblurb
        = 
        personblurb: Personblurb_attlist Title? Para_class+
 ;
syntax Personblurb_attlist
        = 
        Common_attrib Personblurb_role_attrib Local_personblurb_attrib
 ;
syntax Local_blockquote_attrib
        = 
        ()
 ;
syntax Blockquote_role_attrib
        = 
        Role_attrib
 ;
syntax Blockquote
        = 
        blockquote: Blockquote_attlist Title? Attribution? Component_mix+
 ;
syntax Blockquote_attlist
        = 
        Common_attrib Blockquote_role_attrib Local_blockquote_attrib
 ;
syntax Local_attribution_attrib
        = 
        ()
 ;
syntax Attribution_role_attrib
        = 
        Role_attrib
 ;
syntax Attribution
        = 
        attribution: Attribution_attlist Para_char_mix*
 ;
syntax Attribution_attlist
        = 
        Common_attrib Attribution_role_attrib Local_attribution_attrib
 ;
syntax Local_bridgehead_attrib
        = 
        ()
 ;
syntax Bridgehead_role_attrib
        = 
        Role_attrib
 ;
syntax Bridgehead
        = 
        bridgehead: Bridgehead_attlist Title_char_mix*
 ;
syntax Bridgehead_attlist
        = 
        ("other" | "sect1" | "sect2" | "sect3" | "sect4" | "sect5")? Common_attrib Bridgehead_role_attrib Local_bridgehead_attrib
 ;
syntax Local_remark_attrib
        = 
        ()
 ;
syntax Remark_role_attrib
        = 
        Role_attrib
 ;
syntax Remark
        = 
        remark: Remark_attlist Para_char_mix*
 ;
syntax Remark_attlist
        = 
        Common_attrib Remark_role_attrib Local_remark_attrib
 ;
syntax Local_epigraph_attrib
        = 
        ()
 ;
syntax Epigraph_role_attrib
        = 
        Role_attrib
 ;
syntax Epigraph
        = 
        epigraph: Epigraph_attlist Attribution? (Para_class | Literallayout)+
 ;
syntax Epigraph_attlist
        = 
        Common_attrib Epigraph_role_attrib Local_epigraph_attrib
 ;
syntax Local_footnote_attrib
        = 
        ()
 ;
syntax Footnote_role_attrib
        = 
        Role_attrib
 ;
syntax Footnote
        = 
        footnote: Footnote_attlist Footnote_mix+
 ;
syntax Footnote_attlist
        = 
        Label_attrib Common_attrib Footnote_role_attrib Local_footnote_attrib
 ;
syntax Local_highlights_attrib
        = 
        ()
 ;
syntax Highlights_role_attrib
        = 
        Role_attrib
 ;
syntax Highlights
        = 
        highlights: Highlights_attlist Highlights_mix+
 ;
syntax Highlights_attlist
        = 
        Common_attrib Highlights_role_attrib Local_highlights_attrib
 ;
syntax Local_formalpara_attrib
        = 
        ()
 ;
syntax Formalpara_role_attrib
        = 
        Role_attrib
 ;
syntax Formalpara
        = 
        formalpara: Formalpara_attlist Title Ndxterm_class* Para
 ;
syntax Formalpara_attlist
        = 
        Common_attrib Formalpara_role_attrib Local_formalpara_attrib
 ;
syntax Local_para_attrib
        = 
        ()
 ;
syntax Para_role_attrib
        = 
        Role_attrib
 ;
syntax Para
        = 
        para: Para_attlist (Para_char_mix | Para_mix)*
 ;
syntax Para_attlist
        = 
        Common_attrib Para_role_attrib Local_para_attrib
 ;
syntax Local_simpara_attrib
        = 
        ()
 ;
syntax Simpara_role_attrib
        = 
        Role_attrib
 ;
syntax Simpara
        = 
        simpara: Simpara_attlist Para_char_mix*
 ;
syntax Simpara_attlist
        = 
        Common_attrib Simpara_role_attrib Local_simpara_attrib
 ;
syntax Local_admon_attrib
        = 
        ()
 ;
syntax Admon_role_attrib
        = 
        Role_attrib
 ;
syntax Caution
        = 
        caution: Caution_attlist Title? Admon_mix+
 ;
syntax Caution_attlist
        = 
        Common_attrib Admon_role_attrib Local_admon_attrib
 ;
syntax Important
        = 
        important: Important_attlist Title? Admon_mix+
 ;
syntax Important_attlist
        = 
        Common_attrib Admon_role_attrib Local_admon_attrib
 ;
syntax Note
        = 
        note: Note_attlist Title? Admon_mix+
 ;
syntax Note_attlist
        = 
        Common_attrib Admon_role_attrib Local_admon_attrib
 ;
syntax Tip
        = 
        tip: Tip_attlist Title? Admon_mix+
 ;
syntax Tip_attlist
        = 
        Common_attrib Admon_role_attrib Local_admon_attrib
 ;
syntax Warning
        = 
        warning: Warning_attlist Title? Admon_mix+
 ;
syntax Warning_attlist
        = 
        Common_attrib Admon_role_attrib Local_admon_attrib
 ;
syntax Local_glosslist_attrib
        = 
        ()
 ;
syntax Glosslist_role_attrib
        = 
        Role_attrib
 ;
syntax Glosslist
        = 
        glosslist: Glosslist_attlist Glossentry+
 ;
syntax Glosslist_attlist
        = 
        Common_attrib Glosslist_role_attrib Local_glosslist_attrib
 ;
syntax Local_glossentry_attrib
        = 
        ()
 ;
syntax Glossentry_role_attrib
        = 
        Role_attrib
 ;
syntax Glossentry
        = 
        glossentry: Glossentry_attlist Glossterm Acronym? Abbrev? Ndxterm_class* Revhistory? (Glosssee | Glossdef+)
 ;
syntax Glossentry_attlist
        = 
        String sortas? Common_attrib Glossentry_role_attrib Local_glossentry_attrib
 ;
syntax Local_glossdef_attrib
        = 
        ()
 ;
syntax Glossdef_role_attrib
        = 
        Role_attrib
 ;
syntax Glossdef
        = 
        glossdef: Glossdef_attlist Glossdef_mix+ Glossseealso*
 ;
syntax Glossdef_attlist
        = 
        String subject? Common_attrib Glossdef_role_attrib Local_glossdef_attrib
 ;
syntax Local_glosssee_attrib
        = 
        ()
 ;
syntax Glosssee_role_attrib
        = 
        Role_attrib
 ;
syntax Glosssee
        = 
        glosssee: Glosssee_attlist Para_char_mix*
 ;
syntax Glosssee_attlist
        = 
        String otherterm? Common_attrib Glosssee_role_attrib Local_glosssee_attrib
 ;
syntax Local_glossseealso_attrib
        = 
        ()
 ;
syntax Glossseealso_role_attrib
        = 
        Role_attrib
 ;
syntax Glossseealso
        = 
        glossseealso: Glossseealso_attlist Para_char_mix*
 ;
syntax Glossseealso_attlist
        = 
        String otherterm? Common_attrib Glossseealso_role_attrib Local_glossseealso_attrib
 ;
syntax Local_itemizedlist_attrib
        = 
        ()
 ;
syntax Itemizedlist_role_attrib
        = 
        Role_attrib
 ;
syntax Itemizedlist
        = 
        itemizedlist: Itemizedlist_attlist Blockinfo? Formalobject_title_content? Listpreamble_mix* Listitem+
 ;
syntax Itemizedlist_attlist
        = 
        ("normal" | "compact")? Mark_attrib Common_attrib Itemizedlist_role_attrib Local_itemizedlist_attrib
 ;
syntax Local_orderedlist_attrib
        = 
        ()
 ;
syntax Orderedlist_role_attrib
        = 
        Role_attrib
 ;
syntax Orderedlist
        = 
        orderedlist: Orderedlist_attlist Blockinfo? Formalobject_title_content? Listpreamble_mix* Listitem+
 ;
syntax Orderedlist_attlist
        = 
        ("arabic" | "upperalpha" | "loweralpha" | "upperroman" | "lowerroman")? ("inherit" | "ignore")? ("continues" | "restarts")? ("normal" | "compact")? Common_attrib Orderedlist_role_attrib Local_orderedlist_attrib
 ;
syntax Local_listitem_attrib
        = 
        ()
 ;
syntax Listitem_role_attrib
        = 
        Role_attrib
 ;
syntax Listitem
        = 
        listitem: Listitem_attlist Component_mix+
 ;
syntax Listitem_attlist
        = 
        String override? Common_attrib Listitem_role_attrib Local_listitem_attrib
 ;
syntax Local_segmentedlist_attrib
        = 
        ()
 ;
syntax Segmentedlist_role_attrib
        = 
        Role_attrib
 ;
syntax Segmentedlist
        = 
        segmentedlist: Segmentedlist_attlist Formalobject_title_content? Segtitle+ Seglistitem+
 ;
syntax Segmentedlist_attlist
        = 
        Common_attrib Segmentedlist_role_attrib Local_segmentedlist_attrib
 ;
syntax Local_segtitle_attrib
        = 
        ()
 ;
syntax Segtitle_role_attrib
        = 
        Role_attrib
 ;
syntax Segtitle
        = 
        segtitle: Segtitle_attlist Title_char_mix*
 ;
syntax Segtitle_attlist
        = 
        Common_attrib Segtitle_role_attrib Local_segtitle_attrib
 ;
syntax Local_seglistitem_attrib
        = 
        ()
 ;
syntax Seglistitem_role_attrib
        = 
        Role_attrib
 ;
syntax Seglistitem
        = 
        seglistitem: Seglistitem_attlist Seg+
 ;
syntax Seglistitem_attlist
        = 
        Common_attrib Seglistitem_role_attrib Local_seglistitem_attrib
 ;
syntax Local_seg_attrib
        = 
        ()
 ;
syntax Seg_role_attrib
        = 
        Role_attrib
 ;
syntax Seg
        = 
        seg: Seg_attlist Para_char_mix*
 ;
syntax Seg_attlist
        = 
        Common_attrib Seg_role_attrib Local_seg_attrib
 ;
syntax Local_simplelist_attrib
        = 
        ()
 ;
syntax Simplelist_role_attrib
        = 
        Role_attrib
 ;
syntax Simplelist
        = 
        simplelist: Simplelist_attlist Member+
 ;
syntax Simplelist_attlist
        = 
        String columns? ("inline" | "vert" | "horiz")? Common_attrib Simplelist_role_attrib Local_simplelist_attrib
 ;
syntax Local_member_attrib
        = 
        ()
 ;
syntax Member_role_attrib
        = 
        Role_attrib
 ;
syntax Member
        = 
        member: Member_attlist Para_char_mix*
 ;
syntax Member_attlist
        = 
        Common_attrib Member_role_attrib Local_member_attrib
 ;
syntax Local_variablelist_attrib
        = 
        ()
 ;
syntax Variablelist_role_attrib
        = 
        Role_attrib
 ;
syntax Variablelist
        = 
        variablelist: Variablelist_attlist Blockinfo? Formalobject_title_content? Listpreamble_mix* Varlistentry+
 ;
syntax Variablelist_attlist
        = 
        String termlength? Common_attrib Variablelist_role_attrib Local_variablelist_attrib
 ;
syntax Local_varlistentry_attrib
        = 
        ()
 ;
syntax Varlistentry_role_attrib
        = 
        Role_attrib
 ;
syntax Varlistentry
        = 
        varlistentry: Varlistentry_attlist Term+ Listitem
 ;
syntax Varlistentry_attlist
        = 
        Common_attrib Varlistentry_role_attrib Local_varlistentry_attrib
 ;
syntax Local_term_attrib
        = 
        ()
 ;
syntax Term_role_attrib
        = 
        Role_attrib
 ;
syntax Term
        = 
        term: Term_attlist Para_char_mix*
 ;
syntax Term_attlist
        = 
        Common_attrib Term_role_attrib Local_term_attrib
 ;
syntax Local_calloutlist_attrib
        = 
        ()
 ;
syntax Calloutlist_role_attrib
        = 
        Role_attrib
 ;
syntax Calloutlist
        = 
        calloutlist: Calloutlist_attlist Formalobject_title_content? Callout+
 ;
syntax Calloutlist_attlist
        = 
        Common_attrib Calloutlist_role_attrib Local_calloutlist_attrib
 ;
syntax Local_callout_attrib
        = 
        ()
 ;
syntax Callout_role_attrib
        = 
        Role_attrib
 ;
syntax Callout
        = 
        callout: Callout_attlist Component_mix+
 ;
syntax Callout_attlist
        = 
        String arearefs Common_attrib Callout_role_attrib Local_callout_attrib
 ;
syntax Local_example_attrib
        = 
        ()
 ;
syntax Example_role_attrib
        = 
        Role_attrib
 ;
syntax Example
        = 
        example: Example_attlist Blockinfo? Formalobject_title_content Example_mix+
 ;
syntax Example_attlist
        = 
        Label_attrib Width_attrib Common_attrib Example_role_attrib Local_example_attrib
 ;
syntax Local_informalexample_attrib
        = 
        ()
 ;
syntax Informalexample_role_attrib
        = 
        Role_attrib
 ;
syntax Informalexample
        = 
        informalexample: Informalexample_attlist Blockinfo? Example_mix+
 ;
syntax Informalexample_attlist
        = 
        Width_attrib Common_attrib Informalexample_role_attrib Local_informalexample_attrib
 ;
syntax Local_programlistingco_attrib
        = 
        ()
 ;
syntax Programlistingco_role_attrib
        = 
        Role_attrib
 ;
syntax Programlistingco
        = 
        programlistingco: Programlistingco_attlist Areaspec Programlisting Calloutlist*
 ;
syntax Programlistingco_attlist
        = 
        Common_attrib Programlistingco_role_attrib Local_programlistingco_attrib
 ;
syntax Local_areaspec_attrib
        = 
        ()
 ;
syntax Areaspec_role_attrib
        = 
        Role_attrib
 ;
syntax Areaspec
        = 
        areaspec: Areaspec_attlist (Area | Areaset)+
 ;
syntax Areaspec_attlist
        = 
        ("calspair" | "linecolumn" | "linerange" | "linecolumnpair" | "other")? String otherunits? Common_attrib Areaspec_role_attrib Local_areaspec_attrib
 ;
syntax Local_area_attrib
        = 
        ()
 ;
syntax Area_role_attrib
        = 
        Role_attrib
 ;
syntax Area
        = 
        area: Area_attlist ()
 ;
syntax Area_attlist
        = 
        Label_attrib Linkends_attrib ("calspair" | "linecolumn" | "linerange" | "linecolumnpair" | "other")? String otherunits? String coords Idreq_common_attrib Area_role_attrib Local_area_attrib
 ;
syntax Local_areaset_attrib
        = 
        ()
 ;
syntax Areaset_role_attrib
        = 
        Role_attrib
 ;
syntax Areaset
        = 
        areaset: Areaset_attlist Area+
 ;
syntax Areaset_attlist
        = 
        Label_attrib ("calspair" | "linecolumn" | "linerange" | "linecolumnpair" | "other")? String otherunits? String coords Idreq_common_attrib Areaset_role_attrib Local_areaset_attrib
 ;
syntax Local_programlisting_attrib
        = 
        ()
 ;
syntax Programlisting_role_attrib
        = 
        Role_attrib
 ;
syntax Programlisting
        = 
        programlisting: Programlisting_attlist (Para_char_mix | Co | Coref | Lineannotation | Textobject)*
 ;
syntax Programlisting_attlist
        = 
        Width_attrib Linespecific_attrib Common_attrib Programlisting_role_attrib Local_programlisting_attrib
 ;
syntax Local_literallayout_attrib
        = 
        ()
 ;
syntax Literallayout_role_attrib
        = 
        Role_attrib
 ;
syntax Literallayout
        = 
        literallayout: Literallayout_attlist (Para_char_mix | Co | Coref | Textobject | Lineannotation)*
 ;
syntax Literallayout_attlist
        = 
        Width_attrib Linespecific_attrib ("monospaced" | "normal")? Common_attrib Literallayout_role_attrib Local_literallayout_attrib
 ;
syntax Local_screenco_attrib
        = 
        ()
 ;
syntax Screenco_role_attrib
        = 
        Role_attrib
 ;
syntax Screenco
        = 
        screenco: Screenco_attlist Areaspec Screen Calloutlist*
 ;
syntax Screenco_attlist
        = 
        Common_attrib Screenco_role_attrib Local_screenco_attrib
 ;
syntax Local_screen_attrib
        = 
        ()
 ;
syntax Screen_role_attrib
        = 
        Role_attrib
 ;
syntax Screen
        = 
        screen: Screen_attlist (Para_char_mix | Co | Coref | Textobject | Lineannotation)*
 ;
syntax Screen_attlist
        = 
        Width_attrib Linespecific_attrib Common_attrib Screen_role_attrib Local_screen_attrib
 ;
syntax Local_screenshot_attrib
        = 
        ()
 ;
syntax Screenshot_role_attrib
        = 
        Role_attrib
 ;
syntax Screenshot
        = 
        screenshot: Screenshot_attlist Screeninfo? (Graphic | Graphicco | Mediaobject | Mediaobjectco)
 ;
syntax Screenshot_attlist
        = 
        Common_attrib Screenshot_role_attrib Local_screenshot_attrib
 ;
syntax Local_screeninfo_attrib
        = 
        ()
 ;
syntax Screeninfo_role_attrib
        = 
        Role_attrib
 ;
syntax Screeninfo
        = 
        screeninfo: Screeninfo_attlist Para_char_mix*
 ;
syntax Screeninfo_attlist
        = 
        Common_attrib Screeninfo_role_attrib Local_screeninfo_attrib
 ;
syntax Local_figure_attrib
        = 
        ()
 ;
syntax Figure_role_attrib
        = 
        Role_attrib
 ;
syntax Figure
        = 
        figure: Figure_attlist Blockinfo? Formalobject_title_content (Figure_mix | Link_char_class)+
 ;
syntax Figure_attlist
        = 
        Yesorno_attvals float? Yesorno_attvals pgwide? Label_attrib Common_attrib Figure_role_attrib Local_figure_attrib
 ;
syntax Local_informalfigure_attrib
        = 
        ()
 ;
syntax Informalfigure_role_attrib
        = 
        Role_attrib
 ;
syntax Informalfigure
        = 
        informalfigure: Informalfigure_attlist Blockinfo? (Figure_mix | Link_char_class)+
 ;
syntax Informalfigure_attlist
        = 
        Yesorno_attvals float? Yesorno_attvals pgwide? Label_attrib Common_attrib Informalfigure_role_attrib Local_informalfigure_attrib
 ;
syntax Local_graphicco_attrib
        = 
        ()
 ;
syntax Graphicco_role_attrib
        = 
        Role_attrib
 ;
syntax Graphicco
        = 
        graphicco: Graphicco_attlist Areaspec Graphic Calloutlist*
 ;
syntax Graphicco_attlist
        = 
        Common_attrib Graphicco_role_attrib Local_graphicco_attrib
 ;
syntax Local_graphic_attrib
        = 
        ()
 ;
syntax Graphic_role_attrib
        = 
        Role_attrib
 ;
syntax Graphic
        = 
        graphic: Graphic_attlist ()
 ;
syntax Graphic_attlist
        = 
        Graphics_attrib Common_attrib Graphic_role_attrib Local_graphic_attrib
 ;
syntax Local_inlinegraphic_attrib
        = 
        ()
 ;
syntax Inlinegraphic_role_attrib
        = 
        Role_attrib
 ;
syntax Inlinegraphic
        = 
        inlinegraphic: Inlinegraphic_attlist ()
 ;
syntax Inlinegraphic_attlist
        = 
        Graphics_attrib Common_attrib Inlinegraphic_role_attrib Local_inlinegraphic_attrib
 ;
syntax Local_mediaobject_attrib
        = 
        ()
 ;
syntax Mediaobject_role_attrib
        = 
        Role_attrib
 ;
syntax Mediaobject
        = 
        mediaobject: Mediaobject_attlist Objectinfo? Mediaobject_mix+ Caption?
 ;
syntax Mediaobject_attlist
        = 
        Common_attrib Mediaobject_role_attrib Local_mediaobject_attrib
 ;
syntax Local_inlinemediaobject_attrib
        = 
        ()
 ;
syntax Inlinemediaobject_role_attrib
        = 
        Role_attrib
 ;
syntax Inlinemediaobject
        = 
        inlinemediaobject: Inlinemediaobject_attlist Objectinfo? Mediaobject_mix+
 ;
syntax Inlinemediaobject_attlist
        = 
        Common_attrib Inlinemediaobject_role_attrib Local_inlinemediaobject_attrib
 ;
syntax Local_videoobject_attrib
        = 
        ()
 ;
syntax Videoobject_role_attrib
        = 
        Role_attrib
 ;
syntax Videoobject
        = 
        videoobject: Videoobject_attlist Objectinfo? Videodata
 ;
syntax Videoobject_attlist
        = 
        Common_attrib Videoobject_role_attrib Local_videoobject_attrib
 ;
syntax Local_audioobject_attrib
        = 
        ()
 ;
syntax Audioobject_role_attrib
        = 
        Role_attrib
 ;
syntax Audioobject
        = 
        audioobject: Audioobject_attlist Objectinfo? Audiodata
 ;
syntax Audioobject_attlist
        = 
        Common_attrib Audioobject_role_attrib Local_audioobject_attrib
 ;
syntax Local_imageobject_attrib
        = 
        ()
 ;
syntax Imageobject_role_attrib
        = 
        Role_attrib
 ;
syntax Imageobject
        = 
        imageobject: Imageobject_attlist Objectinfo? Imagedata
 ;
syntax Imageobject_attlist
        = 
        Common_attrib Imageobject_role_attrib Local_imageobject_attrib
 ;
syntax Local_textobject_attrib
        = 
        ()
 ;
syntax Textobject_role_attrib
        = 
        Role_attrib
 ;
syntax Textobject
        = 
        textobject: Textobject_attlist Objectinfo? (Phrase | Textdata | Textobject_mix+)
 ;
syntax Textobject_attlist
        = 
        Common_attrib Textobject_role_attrib Local_textobject_attrib
 ;
syntax Local_objectinfo_attrib
        = 
        ()
 ;
syntax Objectinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Objectinfo
        = 
        objectinfo: Objectinfo_attlist Info_class+
 ;
syntax Objectinfo_attlist
        = 
        Common_attrib Objectinfo_role_attrib Local_objectinfo_attrib
 ;
syntax Local_objectdata_attrib
        = 
        ()
 ;
syntax Objectdata_attrib
        = 
        String entityref? String fileref? Notation_class? String srccredit? Local_objectdata_attrib
 ;
syntax Local_videodata_attrib
        = 
        ()
 ;
syntax Videodata_role_attrib
        = 
        Role_attrib
 ;
syntax Videodata
        = 
        videodata: Videodata_attlist ()
 ;
syntax Videodata_attlist
        = 
        String width? String contentwidth? String depth? String contentdepth? ("left" | "right" | "center")? ("top" | "middle" | "bottom")? String scale? Yesorno_attvals scalefit? Objectdata_attrib Common_attrib Videodata_role_attrib Local_videodata_attrib
 ;
syntax Local_audiodata_attrib
        = 
        ()
 ;
syntax Audiodata_role_attrib
        = 
        Role_attrib
 ;
syntax Audiodata
        = 
        audiodata: Audiodata_attlist ()
 ;
syntax Audiodata_attlist
        = 
        Objectdata_attrib Common_attrib Audiodata_role_attrib Local_audiodata_attrib
 ;
syntax Local_imagedata_attrib
        = 
        ()
 ;
syntax Imagedata_role_attrib
        = 
        Role_attrib
 ;
syntax Imagedata
        = 
        imagedata: Imagedata_attlist ()
 ;
syntax Imagedata_attlist
        = 
        String width? String contentwidth? String depth? String contentdepth? ("left" | "right" | "center")? ("top" | "middle" | "bottom")? String scale? Yesorno_attvals scalefit? Objectdata_attrib Common_attrib Imagedata_role_attrib Local_imagedata_attrib
 ;
syntax Local_textdata_attrib
        = 
        ()
 ;
syntax Textdata_role_attrib
        = 
        Role_attrib
 ;
syntax Textdata
        = 
        textdata: Textdata_attlist ()
 ;
syntax Textdata_attlist
        = 
        String encoding? Objectdata_attrib Common_attrib Textdata_role_attrib Local_textdata_attrib
 ;
syntax Local_caption_attrib
        = 
        ()
 ;
syntax Caption_role_attrib
        = 
        Role_attrib
 ;
syntax Caption
        = 
        caption: Caption_attlist Textobject_mix*
 ;
syntax Caption_attlist
        = 
        Common_attrib Caption_role_attrib Local_caption_attrib
 ;
syntax Local_mediaobjectco_attrib
        = 
        ()
 ;
syntax Mediaobjectco_role_attrib
        = 
        Role_attrib
 ;
syntax Mediaobjectco
        = 
        mediaobjectco: Mediaobjectco_attlist Objectinfo? Imageobjectco (Imageobjectco | Textobject)*
 ;
syntax Mediaobjectco_attlist
        = 
        Common_attrib Mediaobjectco_role_attrib Local_mediaobjectco_attrib
 ;
syntax Local_imageobjectco_attrib
        = 
        ()
 ;
syntax Imageobjectco_role_attrib
        = 
        Role_attrib
 ;
syntax Imageobjectco
        = 
        imageobjectco: Imageobjectco_attlist Areaspec Imageobject Calloutlist*
 ;
syntax Imageobjectco_attlist
        = 
        Common_attrib Imageobjectco_role_attrib Local_imageobjectco_attrib
 ;
syntax Equation_content
        = 
        Alt? (Graphic+ | Mediaobject+)
 ;
syntax Inlineequation_content
        = 
        Alt? (Graphic+ | Inlinemediaobject+)
 ;
syntax Local_equation_attrib
        = 
        ()
 ;
syntax Equation_role_attrib
        = 
        Role_attrib
 ;
syntax Equation
        = 
        equation: Equation_attlist Blockinfo? Formalobject_title_content? (Informalequation | Equation_content)
 ;
syntax Equation_attlist
        = 
        Label_attrib Common_attrib Equation_role_attrib Local_equation_attrib
 ;
syntax Local_informalequation_attrib
        = 
        ()
 ;
syntax Informalequation_role_attrib
        = 
        Role_attrib
 ;
syntax Informalequation
        = 
        informalequation: Informalequation_attlist Blockinfo? Equation_content
 ;
syntax Informalequation_attlist
        = 
        Common_attrib Informalequation_role_attrib Local_informalequation_attrib
 ;
syntax Local_inlineequation_attrib
        = 
        ()
 ;
syntax Inlineequation_role_attrib
        = 
        Role_attrib
 ;
syntax Inlineequation
        = 
        inlineequation: Inlineequation_attlist Inlineequation_content
 ;
syntax Inlineequation_attlist
        = 
        Common_attrib Inlineequation_role_attrib Local_inlineequation_attrib
 ;
syntax Local_alt_attrib
        = 
        ()
 ;
syntax Alt_role_attrib
        = 
        Role_attrib
 ;
syntax Alt
        = 
        alt: Alt_attlist String
 ;
syntax Alt_attlist
        = 
        Common_attrib Alt_role_attrib Local_alt_attrib
 ;
syntax Tables_role_attrib
        = 
        Role_attrib
 ;
syntax Bodyatt
        = 
        Label_attrib
 ;
syntax Secur
        = 
        Common_attrib Tables_role_attrib
 ;
syntax Common_table_attribs
        = 
        Bodyatt Secur
 ;
syntax Tbl_table_mdl
        = 
        Blockinfo? Formalobject_title_content Ndxterm_class* Textobject* (Graphic+ | Mediaobject+ | Tgroup+)
 ;
syntax Tbl_entry_mdl
        = Para_char_mix
        | Tabentry_mix
 ;
syntax Local_informaltable_attrib
        = 
        ()
 ;
syntax Informaltable
        = 
        informaltable: Informaltable_attlist Blockinfo? Textobject* (Graphic+ | Mediaobject+ | Tgroup+)
 ;
syntax Informaltable_attlist
        = 
        ("top" | "bottom" | "topbot" | "all" | "sides" | "none")? Yesorno_attvals colsep? Yesorno_attvals rowsep? Common_table_attribs Tbl_table_att Local_informaltable_attrib
 ;
syntax Local_synopsis_attrib
        = 
        ()
 ;
syntax Synopsis_role_attrib
        = 
        Role_attrib
 ;
syntax Synopsis
        = 
        synopsis: Synopsis_attlist (Para_char_mix | Graphic | Mediaobject | Co | Coref | Textobject | Lineannotation)*
 ;
syntax Synopsis_attlist
        = 
        Label_attrib Linespecific_attrib Common_attrib Synopsis_role_attrib Local_synopsis_attrib
 ;
syntax Local_cmdsynopsis_attrib
        = 
        ()
 ;
syntax Cmdsynopsis_role_attrib
        = 
        Role_attrib
 ;
syntax Cmdsynopsis
        = 
        cmdsynopsis: Cmdsynopsis_attlist (Command | Arg | Group | Sbr)+ Synopfragment*
 ;
syntax Cmdsynopsis_attlist
        = 
        Label_attrib String sepchar? String cmdlength? Common_attrib Cmdsynopsis_role_attrib Local_cmdsynopsis_attrib
 ;
syntax Local_arg_attrib
        = 
        ()
 ;
syntax Arg_role_attrib
        = 
        Role_attrib
 ;
syntax Arg
        = 
        arg: Arg_attlist (String | Arg | Group | Option | Synopfragmentref | Replaceable | Sbr)*
 ;
syntax Arg_attlist
        = 
        ("opt" | "req" | "plain")? ("norepeat" | "repeat")? Common_attrib Arg_role_attrib Local_arg_attrib
 ;
syntax Local_group_attrib
        = 
        ()
 ;
syntax Group_role_attrib
        = 
        Role_attrib
 ;
syntax Group
        = 
        group: Group_attlist (Arg | Group | Option | Synopfragmentref | Replaceable | Sbr)+
 ;
syntax Group_attlist
        = 
        ("opt" | "req" | "plain")? ("norepeat" | "repeat")? Common_attrib Group_role_attrib Local_group_attrib
 ;
syntax Local_sbr_attrib
        = 
        ()
 ;
syntax Sbr_role_attrib
        = 
        Role_attrib
 ;
syntax Sbr
        = 
        sbr: Sbr_attlist ()
 ;
syntax Sbr_attlist
        = 
        Common_attrib Sbr_role_attrib Local_sbr_attrib
 ;
syntax Local_synopfragmentref_attrib
        = 
        ()
 ;
syntax Synopfragmentref_role_attrib
        = 
        Role_attrib
 ;
syntax Synopfragmentref
        = 
        synopfragmentref: Synopfragmentref_attlist String
 ;
syntax Synopfragmentref_attlist
        = 
        Linkendreq_attrib Common_attrib Synopfragmentref_role_attrib Local_synopfragmentref_attrib
 ;
syntax Local_synopfragment_attrib
        = 
        ()
 ;
syntax Synopfragment_role_attrib
        = 
        Role_attrib
 ;
syntax Synopfragment
        = 
        synopfragment: Synopfragment_attlist (Arg | Group)+
 ;
syntax Synopfragment_attlist
        = 
        Idreq_common_attrib Synopfragment_role_attrib Local_synopfragment_attrib
 ;
syntax Local_funcsynopsis_attrib
        = 
        ()
 ;
syntax Funcsynopsis_role_attrib
        = 
        Role_attrib
 ;
syntax Funcsynopsis
        = 
        funcsynopsis: Funcsynopsis_attlist (Funcsynopsisinfo | Funcprototype)+
 ;
syntax Funcsynopsis_attlist
        = 
        Label_attrib Common_attrib Funcsynopsis_role_attrib Local_funcsynopsis_attrib
 ;
syntax Local_funcsynopsisinfo_attrib
        = 
        ()
 ;
syntax Funcsynopsisinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Funcsynopsisinfo
        = 
        funcsynopsisinfo: Funcsynopsisinfo_attlist (Cptr_char_mix | Textobject | Lineannotation)*
 ;
syntax Funcsynopsisinfo_attlist
        = 
        Linespecific_attrib Common_attrib Funcsynopsisinfo_role_attrib Local_funcsynopsisinfo_attrib
 ;
syntax Local_funcprototype_attrib
        = 
        ()
 ;
syntax Funcprototype_role_attrib
        = 
        Role_attrib
 ;
syntax Funcprototype
        = 
        funcprototype: Funcprototype_attlist Funcdef (Void | Varargs | Paramdef+)
 ;
syntax Funcprototype_attlist
        = 
        Common_attrib Funcprototype_role_attrib Local_funcprototype_attrib
 ;
syntax Local_funcdef_attrib
        = 
        ()
 ;
syntax Funcdef_role_attrib
        = 
        Role_attrib
 ;
syntax Funcdef
        = 
        funcdef: Funcdef_attlist (String | Type | Replaceable | Function)*
 ;
syntax Funcdef_attlist
        = 
        Common_attrib Funcdef_role_attrib Local_funcdef_attrib
 ;
syntax Local_void_attrib
        = 
        ()
 ;
syntax Void_role_attrib
        = 
        Role_attrib
 ;
syntax Void
        = 
        void: Void_attlist ()
 ;
syntax Void_attlist
        = 
        Common_attrib Void_role_attrib Local_void_attrib
 ;
syntax Local_varargs_attrib
        = 
        ()
 ;
syntax Varargs_role_attrib
        = 
        Role_attrib
 ;
syntax Varargs
        = 
        varargs: Varargs_attlist ()
 ;
syntax Varargs_attlist
        = 
        Common_attrib Varargs_role_attrib Local_varargs_attrib
 ;
syntax Local_paramdef_attrib
        = 
        ()
 ;
syntax Paramdef_role_attrib
        = 
        Role_attrib
 ;
syntax Paramdef
        = 
        paramdef: Paramdef_attlist (String | Type | Replaceable | Parameter | Funcparams)*
 ;
syntax Paramdef_attlist
        = 
        Common_attrib Paramdef_role_attrib Local_paramdef_attrib
 ;
syntax Local_funcparams_attrib
        = 
        ()
 ;
syntax Funcparams_role_attrib
        = 
        Role_attrib
 ;
syntax Funcparams
        = 
        funcparams: Funcparams_attlist Cptr_char_mix*
 ;
syntax Funcparams_attlist
        = 
        Common_attrib Funcparams_role_attrib Local_funcparams_attrib
 ;
syntax Local_classsynopsis_attrib
        = 
        ()
 ;
syntax Classsynopsis_role_attrib
        = 
        Role_attrib
 ;
syntax Classsynopsis
        = 
        classsynopsis: Classsynopsis_attlist (Ooclass | Oointerface | Ooexception)+ (Classsynopsisinfo | Fieldsynopsis | Method_synop_class)*
 ;
syntax Classsynopsis_attlist
        = 
        String language? ("class" | "interface")? Common_attrib Classsynopsis_role_attrib Local_classsynopsis_attrib
 ;
syntax Local_classsynopsisinfo_attrib
        = 
        ()
 ;
syntax Classsynopsisinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Classsynopsisinfo
        = 
        classsynopsisinfo: Classsynopsisinfo_attlist (Cptr_char_mix | Textobject | Lineannotation)*
 ;
syntax Classsynopsisinfo_attlist
        = 
        Linespecific_attrib Common_attrib Classsynopsisinfo_role_attrib Local_classsynopsisinfo_attrib
 ;
syntax Local_ooclass_attrib
        = 
        ()
 ;
syntax Ooclass_role_attrib
        = 
        Role_attrib
 ;
syntax Ooclass
        = 
        ooclass: Ooclass_attlist Modifier* Classname
 ;
syntax Ooclass_attlist
        = 
        Common_attrib Ooclass_role_attrib Local_ooclass_attrib
 ;
syntax Local_oointerface_attrib
        = 
        ()
 ;
syntax Oointerface_role_attrib
        = 
        Role_attrib
 ;
syntax Oointerface
        = 
        oointerface: Oointerface_attlist Modifier* Interfacename
 ;
syntax Oointerface_attlist
        = 
        Common_attrib Oointerface_role_attrib Local_oointerface_attrib
 ;
syntax Local_ooexception_attrib
        = 
        ()
 ;
syntax Ooexception_role_attrib
        = 
        Role_attrib
 ;
syntax Ooexception
        = 
        ooexception: Ooexception_attlist Modifier* Exceptionname
 ;
syntax Ooexception_attlist
        = 
        Common_attrib Ooexception_role_attrib Local_ooexception_attrib
 ;
syntax Local_modifier_attrib
        = 
        ()
 ;
syntax Modifier_role_attrib
        = 
        Role_attrib
 ;
syntax Modifier
        = 
        modifier: Modifier_attlist Smallcptr_char_mix*
 ;
syntax Modifier_attlist
        = 
        Common_attrib Modifier_role_attrib Local_modifier_attrib
 ;
syntax Local_interfacename_attrib
        = 
        ()
 ;
syntax Interfacename_role_attrib
        = 
        Role_attrib
 ;
syntax Interfacename
        = 
        interfacename: Interfacename_attlist Cptr_char_mix*
 ;
syntax Interfacename_attlist
        = 
        Common_attrib Interfacename_role_attrib Local_interfacename_attrib
 ;
syntax Local_exceptionname_attrib
        = 
        ()
 ;
syntax Exceptionname_role_attrib
        = 
        Role_attrib
 ;
syntax Exceptionname
        = 
        exceptionname: Exceptionname_attlist Smallcptr_char_mix*
 ;
syntax Exceptionname_attlist
        = 
        Common_attrib Exceptionname_role_attrib Local_exceptionname_attrib
 ;
syntax Local_fieldsynopsis_attrib
        = 
        ()
 ;
syntax Fieldsynopsis_role_attrib
        = 
        Role_attrib
 ;
syntax Fieldsynopsis
        = 
        fieldsynopsis: Fieldsynopsis_attlist Modifier* Type? Varname Initializer?
 ;
syntax Fieldsynopsis_attlist
        = 
        String language? Common_attrib Fieldsynopsis_role_attrib Local_fieldsynopsis_attrib
 ;
syntax Local_initializer_attrib
        = 
        ()
 ;
syntax Initializer_role_attrib
        = 
        Role_attrib
 ;
syntax Initializer
        = 
        initializer: Initializer_attlist Smallcptr_char_mix*
 ;
syntax Initializer_attlist
        = 
        Common_attrib Initializer_role_attrib Local_initializer_attrib
 ;
syntax Local_constructorsynopsis_attrib
        = 
        ()
 ;
syntax Constructorsynopsis_role_attrib
        = 
        Role_attrib
 ;
syntax Constructorsynopsis
        = 
        constructorsynopsis: Constructorsynopsis_attlist Modifier* Methodname? (Methodparam+ | Void) Exceptionname*
 ;
syntax Constructorsynopsis_attlist
        = 
        String language? Common_attrib Constructorsynopsis_role_attrib Local_constructorsynopsis_attrib
 ;
syntax Local_destructorsynopsis_attrib
        = 
        ()
 ;
syntax Destructorsynopsis_role_attrib
        = 
        Role_attrib
 ;
syntax Destructorsynopsis
        = 
        destructorsynopsis: Destructorsynopsis_attlist Modifier* Methodname? (Methodparam+ | Void) Exceptionname*
 ;
syntax Destructorsynopsis_attlist
        = 
        String language? Common_attrib Destructorsynopsis_role_attrib Local_destructorsynopsis_attrib
 ;
syntax Local_methodsynopsis_attrib
        = 
        ()
 ;
syntax Methodsynopsis_role_attrib
        = 
        Role_attrib
 ;
syntax Methodsynopsis
        = 
        methodsynopsis: Methodsynopsis_attlist Modifier* (Type | Void)? Methodname (Methodparam+ | Void) Exceptionname* Modifier*
 ;
syntax Methodsynopsis_attlist
        = 
        String language? Common_attrib Methodsynopsis_role_attrib Local_methodsynopsis_attrib
 ;
syntax Local_methodname_attrib
        = 
        ()
 ;
syntax Methodname_role_attrib
        = 
        Role_attrib
 ;
syntax Methodname
        = 
        methodname: Methodname_attlist Smallcptr_char_mix*
 ;
syntax Methodname_attlist
        = 
        Common_attrib Methodname_role_attrib Local_methodname_attrib
 ;
syntax Local_methodparam_attrib
        = 
        ()
 ;
syntax Methodparam_role_attrib
        = 
        Role_attrib
 ;
syntax Methodparam
        = 
        methodparam: Methodparam_attlist Modifier* Type? ((Parameter Initializer?) | Funcparams) Modifier*
 ;
syntax Methodparam_attlist
        = 
        ("opt" | "req" | "plain")? ("norepeat" | "repeat")? Common_attrib Methodparam_role_attrib Local_methodparam_attrib
 ;
syntax Local_ackno_attrib
        = 
        ()
 ;
syntax Ackno_role_attrib
        = 
        Role_attrib
 ;
syntax Ackno
        = 
        ackno: Ackno_attlist Docinfo_char_mix*
 ;
syntax Ackno_attlist
        = 
        Common_attrib Ackno_role_attrib Local_ackno_attrib
 ;
syntax Local_address_attrib
        = 
        ()
 ;
syntax Address_role_attrib
        = 
        Role_attrib
 ;
syntax Address
        = 
        address: Address_attlist (String | Personname | Person_ident_mix | Street | Pob | Postcode | City | State | Country | Phone | Fax | Email | Otheraddr)*
 ;
syntax Address_attlist
        = 
        Linespecific_attrib Common_attrib Address_role_attrib Local_address_attrib
 ;
syntax Local_street_attrib
        = 
        ()
 ;
syntax Street_role_attrib
        = 
        Role_attrib
 ;
syntax Street
        = 
        street: Street_attlist Docinfo_char_mix*
 ;
syntax Street_attlist
        = 
        Common_attrib Street_role_attrib Local_street_attrib
 ;
syntax Local_pob_attrib
        = 
        ()
 ;
syntax Pob_role_attrib
        = 
        Role_attrib
 ;
syntax Pob
        = 
        pob: Pob_attlist Docinfo_char_mix*
 ;
syntax Pob_attlist
        = 
        Common_attrib Pob_role_attrib Local_pob_attrib
 ;
syntax Local_postcode_attrib
        = 
        ()
 ;
syntax Postcode_role_attrib
        = 
        Role_attrib
 ;
syntax Postcode
        = 
        postcode: Postcode_attlist Docinfo_char_mix*
 ;
syntax Postcode_attlist
        = 
        Common_attrib Postcode_role_attrib Local_postcode_attrib
 ;
syntax Local_city_attrib
        = 
        ()
 ;
syntax City_role_attrib
        = 
        Role_attrib
 ;
syntax City
        = 
        city: City_attlist Docinfo_char_mix*
 ;
syntax City_attlist
        = 
        Common_attrib City_role_attrib Local_city_attrib
 ;
syntax Local_state_attrib
        = 
        ()
 ;
syntax State_role_attrib
        = 
        Role_attrib
 ;
syntax State
        = 
        state: State_attlist Docinfo_char_mix*
 ;
syntax State_attlist
        = 
        Common_attrib State_role_attrib Local_state_attrib
 ;
syntax Local_country_attrib
        = 
        ()
 ;
syntax Country_role_attrib
        = 
        Role_attrib
 ;
syntax Country
        = 
        country: Country_attlist Docinfo_char_mix*
 ;
syntax Country_attlist
        = 
        Common_attrib Country_role_attrib Local_country_attrib
 ;
syntax Local_phone_attrib
        = 
        ()
 ;
syntax Phone_role_attrib
        = 
        Role_attrib
 ;
syntax Phone
        = 
        phone: Phone_attlist Docinfo_char_mix*
 ;
syntax Phone_attlist
        = 
        Common_attrib Phone_role_attrib Local_phone_attrib
 ;
syntax Local_fax_attrib
        = 
        ()
 ;
syntax Fax_role_attrib
        = 
        Role_attrib
 ;
syntax Fax
        = 
        fax: Fax_attlist Docinfo_char_mix*
 ;
syntax Fax_attlist
        = 
        Common_attrib Fax_role_attrib Local_fax_attrib
 ;
syntax Local_otheraddr_attrib
        = 
        ()
 ;
syntax Otheraddr_role_attrib
        = 
        Role_attrib
 ;
syntax Otheraddr
        = 
        otheraddr: Otheraddr_attlist Docinfo_char_mix*
 ;
syntax Otheraddr_attlist
        = 
        Common_attrib Otheraddr_role_attrib Local_otheraddr_attrib
 ;
syntax Local_affiliation_attrib
        = 
        ()
 ;
syntax Affiliation_role_attrib
        = 
        Role_attrib
 ;
syntax Affiliation
        = 
        affiliation: Affiliation_attlist Shortaffil? Jobtitle* Orgname? Orgdiv* Address*
 ;
syntax Affiliation_attlist
        = 
        Common_attrib Affiliation_role_attrib Local_affiliation_attrib
 ;
syntax Local_shortaffil_attrib
        = 
        ()
 ;
syntax Shortaffil_role_attrib
        = 
        Role_attrib
 ;
syntax Shortaffil
        = 
        shortaffil: Shortaffil_attlist Docinfo_char_mix*
 ;
syntax Shortaffil_attlist
        = 
        Common_attrib Shortaffil_role_attrib Local_shortaffil_attrib
 ;
syntax Local_jobtitle_attrib
        = 
        ()
 ;
syntax Jobtitle_role_attrib
        = 
        Role_attrib
 ;
syntax Jobtitle
        = 
        jobtitle: Jobtitle_attlist Docinfo_char_mix*
 ;
syntax Jobtitle_attlist
        = 
        Common_attrib Jobtitle_role_attrib Local_jobtitle_attrib
 ;
syntax Local_orgdiv_attrib
        = 
        ()
 ;
syntax Orgdiv_role_attrib
        = 
        Role_attrib
 ;
syntax Orgdiv
        = 
        orgdiv: Orgdiv_attlist Docinfo_char_mix*
 ;
syntax Orgdiv_attlist
        = 
        Common_attrib Orgdiv_role_attrib Local_orgdiv_attrib
 ;
syntax Local_artpagenums_attrib
        = 
        ()
 ;
syntax Artpagenums_role_attrib
        = 
        Role_attrib
 ;
syntax Artpagenums
        = 
        artpagenums: Artpagenums_attlist Docinfo_char_mix*
 ;
syntax Artpagenums_attlist
        = 
        Common_attrib Artpagenums_role_attrib Local_artpagenums_attrib
 ;
syntax Local_personname_attrib
        = 
        ()
 ;
syntax Personname_role_attrib
        = 
        Role_attrib
 ;
syntax Personname
        = 
        personname: Personname_attlist (Honorific | Firstname | Surname | Lineage | Othername)+
 ;
syntax Personname_attlist
        = 
        Common_attrib Personname_role_attrib Local_personname_attrib
 ;
syntax Local_author_attrib
        = 
        ()
 ;
syntax Author_role_attrib
        = 
        Role_attrib
 ;
syntax Author
        = 
        author: Author_attlist (Personname | Person_ident_mix+) (Personblurb | Email | Address)*
 ;
syntax Author_attlist
        = 
        Common_attrib Author_role_attrib Local_author_attrib
 ;
syntax Local_authorgroup_attrib
        = 
        ()
 ;
syntax Authorgroup_role_attrib
        = 
        Role_attrib
 ;
syntax Authorgroup
        = 
        authorgroup: Authorgroup_attlist (Author | Editor | Collab | Corpauthor | Othercredit)+
 ;
syntax Authorgroup_attlist
        = 
        Common_attrib Authorgroup_role_attrib Local_authorgroup_attrib
 ;
syntax Local_collab_attrib
        = 
        ()
 ;
syntax Collab_role_attrib
        = 
        Role_attrib
 ;
syntax Collab
        = 
        collab: Collab_attlist Collabname Affiliation*
 ;
syntax Collab_attlist
        = 
        Common_attrib Collab_role_attrib Local_collab_attrib
 ;
syntax Local_collabname_attrib
        = 
        ()
 ;
syntax Collabname_role_attrib
        = 
        Role_attrib
 ;
syntax Collabname
        = 
        collabname: Collabname_attlist Docinfo_char_mix*
 ;
syntax Collabname_attlist
        = 
        Common_attrib Collabname_role_attrib Local_collabname_attrib
 ;
syntax Local_authorinitials_attrib
        = 
        ()
 ;
syntax Authorinitials_role_attrib
        = 
        Role_attrib
 ;
syntax Authorinitials
        = 
        authorinitials: Authorinitials_attlist Docinfo_char_mix*
 ;
syntax Authorinitials_attlist
        = 
        Common_attrib Authorinitials_role_attrib Local_authorinitials_attrib
 ;
syntax Local_confgroup_attrib
        = 
        ()
 ;
syntax Confgroup_role_attrib
        = 
        Role_attrib
 ;
syntax Confgroup
        = 
        confgroup: Confgroup_attlist (Confdates | Conftitle | Confnum | Address | Confsponsor)*
 ;
syntax Confgroup_attlist
        = 
        Common_attrib Confgroup_role_attrib Local_confgroup_attrib
 ;
syntax Local_confdates_attrib
        = 
        ()
 ;
syntax Confdates_role_attrib
        = 
        Role_attrib
 ;
syntax Confdates
        = 
        confdates: Confdates_attlist Docinfo_char_mix*
 ;
syntax Confdates_attlist
        = 
        Common_attrib Confdates_role_attrib Local_confdates_attrib
 ;
syntax Local_conftitle_attrib
        = 
        ()
 ;
syntax Conftitle_role_attrib
        = 
        Role_attrib
 ;
syntax Conftitle
        = 
        conftitle: Conftitle_attlist Docinfo_char_mix*
 ;
syntax Conftitle_attlist
        = 
        Common_attrib Conftitle_role_attrib Local_conftitle_attrib
 ;
syntax Local_confnum_attrib
        = 
        ()
 ;
syntax Confnum_role_attrib
        = 
        Role_attrib
 ;
syntax Confnum
        = 
        confnum: Confnum_attlist Docinfo_char_mix*
 ;
syntax Confnum_attlist
        = 
        Common_attrib Confnum_role_attrib Local_confnum_attrib
 ;
syntax Local_confsponsor_attrib
        = 
        ()
 ;
syntax Confsponsor_role_attrib
        = 
        Role_attrib
 ;
syntax Confsponsor
        = 
        confsponsor: Confsponsor_attlist Docinfo_char_mix*
 ;
syntax Confsponsor_attlist
        = 
        Common_attrib Confsponsor_role_attrib Local_confsponsor_attrib
 ;
syntax Local_contractnum_attrib
        = 
        ()
 ;
syntax Contractnum_role_attrib
        = 
        Role_attrib
 ;
syntax Contractnum
        = 
        contractnum: Contractnum_attlist Docinfo_char_mix*
 ;
syntax Contractnum_attlist
        = 
        Common_attrib Contractnum_role_attrib Local_contractnum_attrib
 ;
syntax Local_contractsponsor_attrib
        = 
        ()
 ;
syntax Contractsponsor_role_attrib
        = 
        Role_attrib
 ;
syntax Contractsponsor
        = 
        contractsponsor: Contractsponsor_attlist Docinfo_char_mix*
 ;
syntax Contractsponsor_attlist
        = 
        Common_attrib Contractsponsor_role_attrib Local_contractsponsor_attrib
 ;
syntax Local_copyright_attrib
        = 
        ()
 ;
syntax Copyright_role_attrib
        = 
        Role_attrib
 ;
syntax Copyright
        = 
        copyright: Copyright_attlist Year+ Holder*
 ;
syntax Copyright_attlist
        = 
        Common_attrib Copyright_role_attrib Local_copyright_attrib
 ;
syntax Local_year_attrib
        = 
        ()
 ;
syntax Year_role_attrib
        = 
        Role_attrib
 ;
syntax Year
        = 
        year: Year_attlist Docinfo_char_mix*
 ;
syntax Year_attlist
        = 
        Common_attrib Year_role_attrib Local_year_attrib
 ;
syntax Local_holder_attrib
        = 
        ()
 ;
syntax Holder_role_attrib
        = 
        Role_attrib
 ;
syntax Holder
        = 
        holder: Holder_attlist Docinfo_char_mix*
 ;
syntax Holder_attlist
        = 
        Common_attrib Holder_role_attrib Local_holder_attrib
 ;
syntax Local_corpauthor_attrib
        = 
        ()
 ;
syntax Corpauthor_role_attrib
        = 
        Role_attrib
 ;
syntax Corpauthor
        = 
        corpauthor: Corpauthor_attlist Docinfo_char_mix*
 ;
syntax Corpauthor_attlist
        = 
        Common_attrib Corpauthor_role_attrib Local_corpauthor_attrib
 ;
syntax Local_corpname_attrib
        = 
        ()
 ;
syntax Corpname
        = 
        corpname: Corpname_attlist Docinfo_char_mix*
 ;
syntax Corpname_role_attrib
        = 
        Role_attrib
 ;
syntax Corpname_attlist
        = 
        Common_attrib Corpname_role_attrib Local_corpname_attrib
 ;
syntax Local_date_attrib
        = 
        ()
 ;
syntax Date_role_attrib
        = 
        Role_attrib
 ;
syntax Date
        = 
        date: Date_attlist Docinfo_char_mix*
 ;
syntax Date_attlist
        = 
        Common_attrib Date_role_attrib Local_date_attrib
 ;
syntax Local_edition_attrib
        = 
        ()
 ;
syntax Edition_role_attrib
        = 
        Role_attrib
 ;
syntax Edition
        = 
        edition: Edition_attlist Docinfo_char_mix*
 ;
syntax Edition_attlist
        = 
        Common_attrib Edition_role_attrib Local_edition_attrib
 ;
syntax Local_editor_attrib
        = 
        ()
 ;
syntax Editor_role_attrib
        = 
        Role_attrib
 ;
syntax Editor
        = 
        editor: Editor_attlist (Personname | Person_ident_mix+) (Personblurb | Email | Address)*
 ;
syntax Editor_attlist
        = 
        Common_attrib Editor_role_attrib Local_editor_attrib
 ;
syntax Local_isbn_attrib
        = 
        ()
 ;
syntax Isbn_role_attrib
        = 
        Role_attrib
 ;
syntax Isbn
        = 
        isbn: Isbn_attlist Docinfo_char_mix*
 ;
syntax Isbn_attlist
        = 
        Common_attrib Isbn_role_attrib Local_isbn_attrib
 ;
syntax Local_issn_attrib
        = 
        ()
 ;
syntax Issn_role_attrib
        = 
        Role_attrib
 ;
syntax Issn
        = 
        issn: Issn_attlist Docinfo_char_mix*
 ;
syntax Issn_attlist
        = 
        Common_attrib Issn_role_attrib Local_issn_attrib
 ;
syntax Biblio_class_attrib
        = 
        ("uri" | "doi" | "isbn" | "issn" | "libraryofcongress" | "pubnumber" | "other")? String otherclass?
 ;
syntax Local_biblioid_attrib
        = 
        ()
 ;
syntax Biblioid_role_attrib
        = 
        Role_attrib
 ;
syntax Biblioid
        = 
        biblioid: Biblioid_attlist Docinfo_char_mix*
 ;
syntax Biblioid_attlist
        = 
        Biblio_class_attrib Common_attrib Biblioid_role_attrib Local_biblioid_attrib
 ;
syntax Local_citebiblioid_attrib
        = 
        ()
 ;
syntax Citebiblioid_role_attrib
        = 
        Role_attrib
 ;
syntax Citebiblioid
        = 
        citebiblioid: Citebiblioid_attlist Docinfo_char_mix*
 ;
syntax Citebiblioid_attlist
        = 
        Biblio_class_attrib Common_attrib Citebiblioid_role_attrib Local_citebiblioid_attrib
 ;
syntax Local_bibliosource_attrib
        = 
        ()
 ;
syntax Bibliosource_role_attrib
        = 
        Role_attrib
 ;
syntax Bibliosource
        = 
        bibliosource: Bibliosource_attlist Docinfo_char_mix*
 ;
syntax Bibliosource_attlist
        = 
        Biblio_class_attrib Common_attrib Bibliosource_role_attrib Local_bibliosource_attrib
 ;
syntax Local_bibliorelation_attrib
        = 
        ()
 ;
syntax Local_bibliorelation_types
        = 
        ()
 ;
syntax Bibliorelation_type_attrib
        = 
        ("isversionof" | "hasversion" | "isreplacedby" | "replaces" | "isrequiredby" | "requires" | "ispartof" | "haspart" | "isreferencedby" | "references" | "isformatof" | "hasformat" | "othertype" | Local_bibliorelation_types)? String othertype?
 ;
syntax Bibliorelation_role_attrib
        = 
        Role_attrib
 ;
syntax Bibliorelation
        = 
        bibliorelation: Bibliorelation_attlist Docinfo_char_mix*
 ;
syntax Bibliorelation_attlist
        = 
        Biblio_class_attrib Bibliorelation_type_attrib Common_attrib Bibliorelation_role_attrib Local_bibliorelation_attrib
 ;
syntax Local_bibliocoverage_attrib
        = 
        ()
 ;
syntax Bibliocoverage_role_attrib
        = 
        Role_attrib
 ;
syntax Bibliocoverage
        = 
        bibliocoverage: Bibliocoverage_attlist Docinfo_char_mix*
 ;
syntax Bibliocoverage_attlist
        = 
        ("dcmipoint" | "iso3166" | "dcmibox" | "tgn" | "otherspatial")? String otherspatial? ("dcmiperiod" | "w3c-dtf" | "othertemporal")? String othertemporal? Common_attrib Bibliocoverage_role_attrib Local_bibliocoverage_attrib
 ;
syntax Local_invpartnumber_attrib
        = 
        ()
 ;
syntax Invpartnumber_role_attrib
        = 
        Role_attrib
 ;
syntax Invpartnumber
        = 
        invpartnumber: Invpartnumber_attlist Docinfo_char_mix*
 ;
syntax Invpartnumber_attlist
        = 
        Common_attrib Invpartnumber_role_attrib Local_invpartnumber_attrib
 ;
syntax Local_issuenum_attrib
        = 
        ()
 ;
syntax Issuenum_role_attrib
        = 
        Role_attrib
 ;
syntax Issuenum
        = 
        issuenum: Issuenum_attlist Docinfo_char_mix*
 ;
syntax Issuenum_attlist
        = 
        Common_attrib Issuenum_role_attrib Local_issuenum_attrib
 ;
syntax Local_legalnotice_attrib
        = 
        ()
 ;
syntax Legalnotice_role_attrib
        = 
        Role_attrib
 ;
syntax Legalnotice
        = 
        legalnotice: Legalnotice_attlist Blockinfo? Title? Legalnotice_mix+
 ;
syntax Legalnotice_attlist
        = 
        Common_attrib Legalnotice_role_attrib Local_legalnotice_attrib
 ;
syntax Local_modespec_attrib
        = 
        ()
 ;
syntax Modespec_role_attrib
        = 
        Role_attrib
 ;
syntax Modespec
        = 
        modespec: Modespec_attlist Docinfo_char_mix*
 ;
syntax Modespec_attlist
        = 
        Notation_class? Common_attrib Modespec_role_attrib Local_modespec_attrib
 ;
syntax Local_orgname_attrib
        = 
        ()
 ;
syntax Orgname_role_attrib
        = 
        Role_attrib
 ;
syntax Orgname
        = 
        orgname: Orgname_attlist Docinfo_char_mix*
 ;
syntax Orgname_attlist
        = 
        Common_attrib ("corporation" | "nonprofit" | "consortium" | "informal" | "other")? String otherclass? Orgname_role_attrib Local_orgname_attrib
 ;
syntax Local_othercredit_attrib
        = 
        ()
 ;
syntax Othercredit_role_attrib
        = 
        Role_attrib
 ;
syntax Othercredit
        = 
        othercredit: Othercredit_attlist (Personname | Person_ident_mix+) (Personblurb | Email | Address)*
 ;
syntax Othercredit_attlist
        = 
        Common_attrib Othercredit_role_attrib Local_othercredit_attrib
 ;
syntax Local_pagenums_attrib
        = 
        ()
 ;
syntax Pagenums_role_attrib
        = 
        Role_attrib
 ;
syntax Pagenums
        = 
        pagenums: Pagenums_attlist Docinfo_char_mix*
 ;
syntax Pagenums_attlist
        = 
        Common_attrib Pagenums_role_attrib Local_pagenums_attrib
 ;
syntax Local_contrib_attrib
        = 
        ()
 ;
syntax Contrib_role_attrib
        = 
        Role_attrib
 ;
syntax Contrib
        = 
        contrib: Contrib_attlist Docinfo_char_mix*
 ;
syntax Contrib_attlist
        = 
        Common_attrib Contrib_role_attrib Local_contrib_attrib
 ;
syntax Local_firstname_attrib
        = 
        ()
 ;
syntax Firstname_role_attrib
        = 
        Role_attrib
 ;
syntax Firstname
        = 
        firstname: Firstname_attlist Docinfo_char_mix*
 ;
syntax Firstname_attlist
        = 
        Common_attrib Firstname_role_attrib Local_firstname_attrib
 ;
syntax Local_honorific_attrib
        = 
        ()
 ;
syntax Honorific_role_attrib
        = 
        Role_attrib
 ;
syntax Honorific
        = 
        honorific: Honorific_attlist Docinfo_char_mix*
 ;
syntax Honorific_attlist
        = 
        Common_attrib Honorific_role_attrib Local_honorific_attrib
 ;
syntax Local_lineage_attrib
        = 
        ()
 ;
syntax Lineage_role_attrib
        = 
        Role_attrib
 ;
syntax Lineage
        = 
        lineage: Lineage_attlist Docinfo_char_mix*
 ;
syntax Lineage_attlist
        = 
        Common_attrib Lineage_role_attrib Local_lineage_attrib
 ;
syntax Local_othername_attrib
        = 
        ()
 ;
syntax Othername_role_attrib
        = 
        Role_attrib
 ;
syntax Othername
        = 
        othername: Othername_attlist Docinfo_char_mix*
 ;
syntax Othername_attlist
        = 
        Common_attrib Othername_role_attrib Local_othername_attrib
 ;
syntax Local_surname_attrib
        = 
        ()
 ;
syntax Surname_role_attrib
        = 
        Role_attrib
 ;
syntax Surname
        = 
        surname: Surname_attlist Docinfo_char_mix*
 ;
syntax Surname_attlist
        = 
        Common_attrib Surname_role_attrib Local_surname_attrib
 ;
syntax Local_printhistory_attrib
        = 
        ()
 ;
syntax Printhistory_role_attrib
        = 
        Role_attrib
 ;
syntax Printhistory
        = 
        printhistory: Printhistory_attlist Para_class+
 ;
syntax Printhistory_attlist
        = 
        Common_attrib Printhistory_role_attrib Local_printhistory_attrib
 ;
syntax Local_productname_attrib
        = 
        ()
 ;
syntax Productname_role_attrib
        = 
        Role_attrib
 ;
syntax Productname
        = 
        productname: Productname_attlist Para_char_mix*
 ;
syntax Productname_attlist
        = 
        ("service" | "trade" | "registered" | "copyright")? Common_attrib Productname_role_attrib Local_productname_attrib
 ;
syntax Local_productnumber_attrib
        = 
        ()
 ;
syntax Productnumber_role_attrib
        = 
        Role_attrib
 ;
syntax Productnumber
        = 
        productnumber: Productnumber_attlist Docinfo_char_mix*
 ;
syntax Productnumber_attlist
        = 
        Common_attrib Productnumber_role_attrib Local_productnumber_attrib
 ;
syntax Local_pubdate_attrib
        = 
        ()
 ;
syntax Pubdate_role_attrib
        = 
        Role_attrib
 ;
syntax Pubdate
        = 
        pubdate: Pubdate_attlist Docinfo_char_mix*
 ;
syntax Pubdate_attlist
        = 
        Common_attrib Pubdate_role_attrib Local_pubdate_attrib
 ;
syntax Local_publisher_attrib
        = 
        ()
 ;
syntax Publisher_role_attrib
        = 
        Role_attrib
 ;
syntax Publisher
        = 
        publisher: Publisher_attlist Publishername Address*
 ;
syntax Publisher_attlist
        = 
        Common_attrib Publisher_role_attrib Local_publisher_attrib
 ;
syntax Local_publishername_attrib
        = 
        ()
 ;
syntax Publishername_role_attrib
        = 
        Role_attrib
 ;
syntax Publishername
        = 
        publishername: Publishername_attlist Docinfo_char_mix*
 ;
syntax Publishername_attlist
        = 
        Common_attrib Publishername_role_attrib Local_publishername_attrib
 ;
syntax Local_pubsnumber_attrib
        = 
        ()
 ;
syntax Pubsnumber_role_attrib
        = 
        Role_attrib
 ;
syntax Pubsnumber
        = 
        pubsnumber: Pubsnumber_attlist Docinfo_char_mix*
 ;
syntax Pubsnumber_attlist
        = 
        Common_attrib Pubsnumber_role_attrib Local_pubsnumber_attrib
 ;
syntax Local_releaseinfo_attrib
        = 
        ()
 ;
syntax Releaseinfo_role_attrib
        = 
        Role_attrib
 ;
syntax Releaseinfo
        = 
        releaseinfo: Releaseinfo_attlist Docinfo_char_mix*
 ;
syntax Releaseinfo_attlist
        = 
        Common_attrib Releaseinfo_role_attrib Local_releaseinfo_attrib
 ;
syntax Local_revhistory_attrib
        = 
        ()
 ;
syntax Revhistory_role_attrib
        = 
        Role_attrib
 ;
syntax Revhistory
        = 
        revhistory: Revhistory_attlist Revision+
 ;
syntax Revhistory_attlist
        = 
        Common_attrib Revhistory_role_attrib Local_revhistory_attrib
 ;
syntax Local_revision_attrib
        = 
        ()
 ;
syntax Revision_role_attrib
        = 
        Role_attrib
 ;
syntax Revision
        = 
        revision: Revision_attlist Revnumber Date Authorinitials* (Revremark | Revdescription)?
 ;
syntax Revision_attlist
        = 
        Common_attrib Revision_role_attrib Local_revision_attrib
 ;
syntax Local_revnumber_attrib
        = 
        ()
 ;
syntax Revnumber_role_attrib
        = 
        Role_attrib
 ;
syntax Revnumber
        = 
        revnumber: Revnumber_attlist Docinfo_char_mix*
 ;
syntax Revnumber_attlist
        = 
        Common_attrib Revnumber_role_attrib Local_revnumber_attrib
 ;
syntax Local_revremark_attrib
        = 
        ()
 ;
syntax Revremark_role_attrib
        = 
        Role_attrib
 ;
syntax Revremark
        = 
        revremark: Revremark_attlist Docinfo_char_mix*
 ;
syntax Revremark_attlist
        = 
        Common_attrib Revremark_role_attrib Local_revremark_attrib
 ;
syntax Local_revdescription_attrib
        = 
        ()
 ;
syntax Revdescription_role_attrib
        = 
        Role_attrib
 ;
syntax Revdescription
        = 
        revdescription: Revdescription_attlist Revdescription_mix+
 ;
syntax Revdescription_attlist
        = 
        Common_attrib Revdescription_role_attrib Local_revdescription_attrib
 ;
syntax Local_seriesvolnums_attrib
        = 
        ()
 ;
syntax Seriesvolnums_role_attrib
        = 
        Role_attrib
 ;
syntax Seriesvolnums
        = 
        seriesvolnums: Seriesvolnums_attlist Docinfo_char_mix*
 ;
syntax Seriesvolnums_attlist
        = 
        Common_attrib Seriesvolnums_role_attrib Local_seriesvolnums_attrib
 ;
syntax Local_volumenum_attrib
        = 
        ()
 ;
syntax Volumenum_role_attrib
        = 
        Role_attrib
 ;
syntax Volumenum
        = 
        volumenum: Volumenum_attlist Docinfo_char_mix*
 ;
syntax Volumenum_attlist
        = 
        Common_attrib Volumenum_role_attrib Local_volumenum_attrib
 ;
syntax Local_accel_attrib
        = 
        ()
 ;
syntax Accel_role_attrib
        = 
        Role_attrib
 ;
syntax Accel
        = 
        accel: Accel_attlist Smallcptr_char_mix*
 ;
syntax Accel_attlist
        = 
        Common_attrib Accel_role_attrib Local_accel_attrib
 ;
syntax Local_action_attrib
        = 
        ()
 ;
syntax Action_role_attrib
        = 
        Role_attrib
 ;
syntax Action
        = 
        action: Action_attlist Cptr_char_mix*
 ;
syntax Action_attlist
        = 
        Moreinfo_attrib Common_attrib Action_role_attrib Local_action_attrib
 ;
syntax Local_application_attrib
        = 
        ()
 ;
syntax Application_role_attrib
        = 
        Role_attrib
 ;
syntax Application
        = 
        application: Application_attlist Para_char_mix*
 ;
syntax Application_attlist
        = 
        ("hardware" | "software")? Moreinfo_attrib Common_attrib Application_role_attrib Local_application_attrib
 ;
syntax Local_classname_attrib
        = 
        ()
 ;
syntax Classname_role_attrib
        = 
        Role_attrib
 ;
syntax Classname
        = 
        classname: Classname_attlist Smallcptr_char_mix*
 ;
syntax Classname_attlist
        = 
        Common_attrib Classname_role_attrib Local_classname_attrib
 ;
syntax Local_co_attrib
        = 
        ()
 ;
syntax Co_role_attrib
        = 
        Role_attrib
 ;
syntax Co
        = 
        co: Co_attlist ()
 ;
syntax Co_attlist
        = 
        Label_attrib Linkends_attrib Idreq_common_attrib Co_role_attrib Local_co_attrib
 ;
syntax Local_coref_attrib
        = 
        ()
 ;
syntax Coref_role_attrib
        = 
        Role_attrib
 ;
syntax Coref
        = 
        coref: Coref_attlist ()
 ;
syntax Coref_attlist
        = 
        Label_attrib Linkendreq_attrib Common_attrib Coref_role_attrib Local_coref_attrib
 ;
syntax Local_command_attrib
        = 
        ()
 ;
syntax Command_role_attrib
        = 
        Role_attrib
 ;
syntax Command
        = 
        command: Command_attlist Cptr_char_mix*
 ;
syntax Command_attlist
        = 
        Moreinfo_attrib Common_attrib Command_role_attrib Local_command_attrib
 ;
syntax Local_computeroutput_attrib
        = 
        ()
 ;
syntax Computeroutput_role_attrib
        = 
        Role_attrib
 ;
syntax Computeroutput
        = 
        computeroutput: Computeroutput_attlist (Cptr_char_mix | Co)*
 ;
syntax Computeroutput_attlist
        = 
        Moreinfo_attrib Common_attrib Computeroutput_role_attrib Local_computeroutput_attrib
 ;
syntax Local_database_attrib
        = 
        ()
 ;
syntax Database_role_attrib
        = 
        Role_attrib
 ;
syntax Database
        = 
        database: Database_attlist Cptr_char_mix*
 ;
syntax Database_attlist
        = 
        ("name" | "table" | "field" | "key1" | "key2" | "record")? Moreinfo_attrib Common_attrib Database_role_attrib Local_database_attrib
 ;
syntax Local_email_attrib
        = 
        ()
 ;
syntax Email_role_attrib
        = 
        Role_attrib
 ;
syntax Email
        = 
        email: Email_attlist Docinfo_char_mix*
 ;
syntax Email_attlist
        = 
        Common_attrib Email_role_attrib Local_email_attrib
 ;
syntax Local_envar_attrib
        = 
        ()
 ;
syntax Envar_role_attrib
        = 
        Role_attrib
 ;
syntax Envar
        = 
        envar: Envar_attlist Smallcptr_char_mix*
 ;
syntax Envar_attlist
        = 
        Common_attrib Envar_role_attrib Local_envar_attrib
 ;
syntax Local_errorcode_attrib
        = 
        ()
 ;
syntax Errorcode_role_attrib
        = 
        Role_attrib
 ;
syntax Errorcode
        = 
        errorcode: Errorcode_attlist Smallcptr_char_mix*
 ;
syntax Errorcode_attlist
        = 
        Moreinfo_attrib Common_attrib Errorcode_role_attrib Local_errorcode_attrib
 ;
syntax Local_errorname_attrib
        = 
        ()
 ;
syntax Errorname_role_attrib
        = 
        Role_attrib
 ;
syntax Errorname
        = 
        errorname: Errorname_attlist Smallcptr_char_mix*
 ;
syntax Errorname_attlist
        = 
        Common_attrib Errorname_role_attrib Local_errorname_attrib
 ;
syntax Local_errortext_attrib
        = 
        ()
 ;
syntax Errortext_role_attrib
        = 
        Role_attrib
 ;
syntax Errortext
        = 
        errortext: Errortext_attlist Smallcptr_char_mix*
 ;
syntax Errortext_attlist
        = 
        Common_attrib Errortext_role_attrib Local_errortext_attrib
 ;
syntax Local_errortype_attrib
        = 
        ()
 ;
syntax Errortype_role_attrib
        = 
        Role_attrib
 ;
syntax Errortype
        = 
        errortype: Errortype_attlist Smallcptr_char_mix*
 ;
syntax Errortype_attlist
        = 
        Common_attrib Errortype_role_attrib Local_errortype_attrib
 ;
syntax Local_filename_attrib
        = 
        ()
 ;
syntax Filename_role_attrib
        = 
        Role_attrib
 ;
syntax Filename
        = 
        filename: Filename_attlist Cptr_char_mix*
 ;
syntax Filename_attlist
        = 
        ("headerfile" | "partition" | "devicefile" | "libraryfile" | "directory" | "extension" | "symlink")? String path? Moreinfo_attrib Common_attrib Filename_role_attrib Local_filename_attrib
 ;
syntax Local_function_attrib
        = 
        ()
 ;
syntax Function_role_attrib
        = 
        Role_attrib
 ;
syntax Function
        = 
        function: Function_attlist Cptr_char_mix*
 ;
syntax Function_attlist
        = 
        Moreinfo_attrib Common_attrib Function_role_attrib Local_function_attrib
 ;
syntax Local_guibutton_attrib
        = 
        ()
 ;
syntax Guibutton_role_attrib
        = 
        Role_attrib
 ;
syntax Guibutton
        = 
        guibutton: Guibutton_attlist (Smallcptr_char_mix | Accel)*
 ;
syntax Guibutton_attlist
        = 
        Moreinfo_attrib Common_attrib Guibutton_role_attrib Local_guibutton_attrib
 ;
syntax Local_guiicon_attrib
        = 
        ()
 ;
syntax Guiicon_role_attrib
        = 
        Role_attrib
 ;
syntax Guiicon
        = 
        guiicon: Guiicon_attlist (Smallcptr_char_mix | Accel)*
 ;
syntax Guiicon_attlist
        = 
        Moreinfo_attrib Common_attrib Guiicon_role_attrib Local_guiicon_attrib
 ;
syntax Local_guilabel_attrib
        = 
        ()
 ;
syntax Guilabel_role_attrib
        = 
        Role_attrib
 ;
syntax Guilabel
        = 
        guilabel: Guilabel_attlist (Smallcptr_char_mix | Accel)*
 ;
syntax Guilabel_attlist
        = 
        Moreinfo_attrib Common_attrib Guilabel_role_attrib Local_guilabel_attrib
 ;
syntax Local_guimenu_attrib
        = 
        ()
 ;
syntax Guimenu_role_attrib
        = 
        Role_attrib
 ;
syntax Guimenu
        = 
        guimenu: Guimenu_attlist (Smallcptr_char_mix | Accel)*
 ;
syntax Guimenu_attlist
        = 
        Moreinfo_attrib Common_attrib Guimenu_role_attrib Local_guimenu_attrib
 ;
syntax Local_guimenuitem_attrib
        = 
        ()
 ;
syntax Guimenuitem_role_attrib
        = 
        Role_attrib
 ;
syntax Guimenuitem
        = 
        guimenuitem: Guimenuitem_attlist (Smallcptr_char_mix | Accel)*
 ;
syntax Guimenuitem_attlist
        = 
        Moreinfo_attrib Common_attrib Guimenuitem_role_attrib Local_guimenuitem_attrib
 ;
syntax Local_guisubmenu_attrib
        = 
        ()
 ;
syntax Guisubmenu_role_attrib
        = 
        Role_attrib
 ;
syntax Guisubmenu
        = 
        guisubmenu: Guisubmenu_attlist (Smallcptr_char_mix | Accel)*
 ;
syntax Guisubmenu_attlist
        = 
        Moreinfo_attrib Common_attrib Guisubmenu_role_attrib Local_guisubmenu_attrib
 ;
syntax Local_hardware_attrib
        = 
        ()
 ;
syntax Hardware_role_attrib
        = 
        Role_attrib
 ;
syntax Hardware
        = 
        hardware: Hardware_attlist Cptr_char_mix*
 ;
syntax Hardware_attlist
        = 
        Moreinfo_attrib Common_attrib Hardware_role_attrib Local_hardware_attrib
 ;
syntax Local_interface_attrib
        = 
        ()
 ;
syntax Interface_role_attrib
        = 
        Role_attrib
 ;
syntax Interface
        = 
        interface: Interface_attlist (Smallcptr_char_mix | Accel)*
 ;
syntax Interface_attlist
        = 
        Moreinfo_attrib Common_attrib Interface_role_attrib Local_interface_attrib
 ;
syntax Local_keycap_attrib
        = 
        ()
 ;
syntax Keycap_role_attrib
        = 
        Role_attrib
 ;
syntax Keycap
        = 
        keycap: Keycap_attlist Cptr_char_mix*
 ;
syntax Keycap_attlist
        = 
        Moreinfo_attrib Common_attrib Keycap_role_attrib Local_keycap_attrib
 ;
syntax Local_keycode_attrib
        = 
        ()
 ;
syntax Keycode_role_attrib
        = 
        Role_attrib
 ;
syntax Keycode
        = 
        keycode: Keycode_attlist Smallcptr_char_mix*
 ;
syntax Keycode_attlist
        = 
        Common_attrib Keycode_role_attrib Local_keycode_attrib
 ;
syntax Local_keycombo_attrib
        = 
        ()
 ;
syntax Keycombo_role_attrib
        = 
        Role_attrib
 ;
syntax Keycombo
        = 
        keycombo: Keycombo_attlist (Keycap | Keycombo | Keysym | Mousebutton)+
 ;
syntax Keycombo_attlist
        = 
        Keyaction_attrib Moreinfo_attrib Common_attrib Keycombo_role_attrib Local_keycombo_attrib
 ;
syntax Local_keysym_attrib
        = 
        ()
 ;
syntax Keysysm_role_attrib
        = 
        Role_attrib
 ;
syntax Keysym
        = 
        keysym: Keysym_attlist Smallcptr_char_mix*
 ;
syntax Keysym_attlist
        = 
        Common_attrib Keysysm_role_attrib Local_keysym_attrib
 ;
syntax Local_lineannotation_attrib
        = 
        ()
 ;
syntax Lineannotation_role_attrib
        = 
        Role_attrib
 ;
syntax Lineannotation
        = 
        lineannotation: Lineannotation_attlist Para_char_mix*
 ;
syntax Lineannotation_attlist
        = 
        Common_attrib Lineannotation_role_attrib Local_lineannotation_attrib
 ;
syntax Local_literal_attrib
        = 
        ()
 ;
syntax Literal_role_attrib
        = 
        Role_attrib
 ;
syntax Literal
        = 
        literal: Literal_attlist Cptr_char_mix*
 ;
syntax Literal_attlist
        = 
        Moreinfo_attrib Common_attrib Literal_role_attrib Local_literal_attrib
 ;
syntax Local_constant_attrib
        = 
        ()
 ;
syntax Constant_role_attrib
        = 
        Role_attrib
 ;
syntax Constant
        = 
        constant: Constant_attlist Smallcptr_char_mix*
 ;
syntax Constant_attlist
        = 
        "limit"? Common_attrib Constant_role_attrib Local_constant_attrib
 ;
syntax Local_varname_attrib
        = 
        ()
 ;
syntax Varname_role_attrib
        = 
        Role_attrib
 ;
syntax Varname
        = 
        varname: Varname_attlist Smallcptr_char_mix*
 ;
syntax Varname_attlist
        = 
        Common_attrib Varname_role_attrib Local_varname_attrib
 ;
syntax Local_markup_attrib
        = 
        ()
 ;
syntax Markup_role_attrib
        = 
        Role_attrib
 ;
syntax Markup
        = 
        markup: Markup_attlist Smallcptr_char_mix*
 ;
syntax Markup_attlist
        = 
        Common_attrib Markup_role_attrib Local_markup_attrib
 ;
syntax Local_medialabel_attrib
        = 
        ()
 ;
syntax Medialabel_role_attrib
        = 
        Role_attrib
 ;
syntax Medialabel
        = 
        medialabel: Medialabel_attlist Smallcptr_char_mix*
 ;
syntax Medialabel_attlist
        = 
        ("cartridge" | "cdrom" | "disk" | "tape")? Common_attrib Medialabel_role_attrib Local_medialabel_attrib
 ;
syntax Local_menuchoice_attrib
        = 
        ()
 ;
syntax Menuchoice_role_attrib
        = 
        Role_attrib
 ;
syntax Menuchoice
        = 
        menuchoice: Menuchoice_attlist Shortcut? (Guibutton | Guiicon | Guilabel | Guimenu | Guimenuitem | Guisubmenu | Interface)+
 ;
syntax Menuchoice_attlist
        = 
        Moreinfo_attrib Common_attrib Menuchoice_role_attrib Local_menuchoice_attrib
 ;
syntax Local_shortcut_attrib
        = 
        ()
 ;
syntax Shortcut_role_attrib
        = 
        Role_attrib
 ;
syntax Shortcut
        = 
        shortcut: Shortcut_attlist (Keycap | Keycombo | Keysym | Mousebutton)+
 ;
syntax Shortcut_attlist
        = 
        Keyaction_attrib Moreinfo_attrib Common_attrib Shortcut_role_attrib Local_shortcut_attrib
 ;
syntax Local_mousebutton_attrib
        = 
        ()
 ;
syntax Mousebutton_role_attrib
        = 
        Role_attrib
 ;
syntax Mousebutton
        = 
        mousebutton: Mousebutton_attlist Smallcptr_char_mix*
 ;
syntax Mousebutton_attlist
        = 
        Moreinfo_attrib Common_attrib Mousebutton_role_attrib Local_mousebutton_attrib
 ;
syntax Local_msgtext_attrib
        = 
        ()
 ;
syntax Msgtext_role_attrib
        = 
        Role_attrib
 ;
syntax Msgtext
        = 
        msgtext: Msgtext_attlist Component_mix+
 ;
syntax Msgtext_attlist
        = 
        Common_attrib Msgtext_role_attrib Local_msgtext_attrib
 ;
syntax Local_option_attrib
        = 
        ()
 ;
syntax Option_role_attrib
        = 
        Role_attrib
 ;
syntax Option
        = 
        option: Option_attlist Cptr_char_mix*
 ;
syntax Option_attlist
        = 
        Common_attrib Option_role_attrib Local_option_attrib
 ;
syntax Local_optional_attrib
        = 
        ()
 ;
syntax Optional_role_attrib
        = 
        Role_attrib
 ;
syntax Optional
        = 
        optional: Optional_attlist Cptr_char_mix*
 ;
syntax Optional_attlist
        = 
        Common_attrib Optional_role_attrib Local_optional_attrib
 ;
syntax Local_parameter_attrib
        = 
        ()
 ;
syntax Parameter_role_attrib
        = 
        Role_attrib
 ;
syntax Parameter
        = 
        parameter: Parameter_attlist Cptr_char_mix*
 ;
syntax Parameter_attlist
        = 
        ("command" | "function" | "option")? Moreinfo_attrib Common_attrib Parameter_role_attrib Local_parameter_attrib
 ;
syntax Local_prompt_attrib
        = 
        ()
 ;
syntax Prompt_role_attrib
        = 
        Role_attrib
 ;
syntax Prompt
        = 
        prompt: Prompt_attlist (Smallcptr_char_mix | Co)*
 ;
syntax Prompt_attlist
        = 
        Moreinfo_attrib Common_attrib Prompt_role_attrib Local_prompt_attrib
 ;
syntax Local_property_attrib
        = 
        ()
 ;
syntax Property_role_attrib
        = 
        Role_attrib
 ;
syntax Property
        = 
        property: Property_attlist Cptr_char_mix*
 ;
syntax Property_attlist
        = 
        Moreinfo_attrib Common_attrib Property_role_attrib Local_property_attrib
 ;
syntax Local_replaceable_attrib
        = 
        ()
 ;
syntax Replaceable_role_attrib
        = 
        Role_attrib
 ;
syntax Replaceable
        = 
        replaceable: Replaceable_attlist (String | Link_char_class | Optional | Base_char_class | Other_char_class | Inlinegraphic | Inlinemediaobject | Co)*
 ;
syntax Replaceable_attlist
        = 
        ("command" | "function" | "option" | "parameter")? Common_attrib Replaceable_role_attrib Local_replaceable_attrib
 ;
syntax Local_returnvalue_attrib
        = 
        ()
 ;
syntax Returnvalue_role_attrib
        = 
        Role_attrib
 ;
syntax Returnvalue
        = 
        returnvalue: Returnvalue_attlist Smallcptr_char_mix*
 ;
syntax Returnvalue_attlist
        = 
        Common_attrib Returnvalue_role_attrib Local_returnvalue_attrib
 ;
syntax Local_sgmltag_attrib
        = 
        ()
 ;
syntax Sgmltag_role_attrib
        = 
        Role_attrib
 ;
syntax Sgmltag
        = 
        sgmltag: Sgmltag_attlist Smallcptr_char_mix*
 ;
syntax Sgmltag_attlist
        = 
        ("attribute" | "attvalue" | "element" | "endtag" | "emptytag" | "genentity" | "numcharref" | "paramentity" | "pi" | "xmlpi" | "starttag" | "sgmlcomment")? Common_attrib Sgmltag_role_attrib Local_sgmltag_attrib
 ;
syntax Local_structfield_attrib
        = 
        ()
 ;
syntax Structfield_role_attrib
        = 
        Role_attrib
 ;
syntax Structfield
        = 
        structfield: Structfield_attlist Smallcptr_char_mix*
 ;
syntax Structfield_attlist
        = 
        Common_attrib Structfield_role_attrib Local_structfield_attrib
 ;
syntax Local_structname_attrib
        = 
        ()
 ;
syntax Structname_role_attrib
        = 
        Role_attrib
 ;
syntax Structname
        = 
        structname: Structname_attlist Smallcptr_char_mix*
 ;
syntax Structname_attlist
        = 
        Common_attrib Structname_role_attrib Local_structname_attrib
 ;
syntax Local_symbol_attrib
        = 
        ()
 ;
syntax Symbol_role_attrib
        = 
        Role_attrib
 ;
syntax Symbol
        = 
        symbol: Symbol_attlist Smallcptr_char_mix*
 ;
syntax Symbol_attlist
        = 
        "limit"? Common_attrib Symbol_role_attrib Local_symbol_attrib
 ;
syntax Local_systemitem_attrib
        = 
        ()
 ;
syntax Systemitem_role_attrib
        = 
        Role_attrib
 ;
syntax Systemitem
        = 
        systemitem: Systemitem_attlist (Cptr_char_mix | Acronym | Co)*
 ;
syntax Systemitem_attlist
        = 
        ("constant" | "event" | "eventhandler" | "domainname" | "fqdomainname" | "ipaddress" | "netmask" | "etheraddress" | "groupname" | "library" | "macro" | "osname" | "filesystem" | "resource" | "systemname" | "username" | "newsgroup")? Moreinfo_attrib Common_attrib Systemitem_role_attrib Local_systemitem_attrib
 ;
syntax Local_token_attrib
        = 
        ()
 ;
syntax Token_role_attrib
        = 
        Role_attrib
 ;
syntax Token
        = 
        token: Token_attlist Smallcptr_char_mix*
 ;
syntax Token_attlist
        = 
        Common_attrib Token_role_attrib Local_token_attrib
 ;
syntax Local_type_attrib
        = 
        ()
 ;
syntax Type_role_attrib
        = 
        Role_attrib
 ;
syntax Type
        = 
        type: Type_attlist Smallcptr_char_mix*
 ;
syntax Type_attlist
        = 
        Common_attrib Type_role_attrib Local_type_attrib
 ;
syntax Local_userinput_attrib
        = 
        ()
 ;
syntax Userinput_role_attrib
        = 
        Role_attrib
 ;
syntax Userinput
        = 
        userinput: Userinput_attlist (Cptr_char_mix | Co)*
 ;
syntax Userinput_attlist
        = 
        Moreinfo_attrib Common_attrib Userinput_role_attrib Local_userinput_attrib
 ;
syntax Local_abbrev_attrib
        = 
        ()
 ;
syntax Abbrev_role_attrib
        = 
        Role_attrib
 ;
syntax Abbrev
        = 
        abbrev: Abbrev_attlist Word_char_mix*
 ;
syntax Abbrev_attlist
        = 
        Common_attrib Abbrev_role_attrib Local_abbrev_attrib
 ;
syntax Local_acronym_attrib
        = 
        ()
 ;
syntax Acronym_role_attrib
        = 
        Role_attrib
 ;
syntax Acronym
        = 
        acronym: Acronym_attlist Word_char_mix*
 ;
syntax Acronym_attlist
        = 
        Common_attrib Acronym_role_attrib Local_acronym_attrib
 ;
syntax Local_citation_attrib
        = 
        ()
 ;
syntax Citation_role_attrib
        = 
        Role_attrib
 ;
syntax Citation
        = 
        citation: Citation_attlist Para_char_mix*
 ;
syntax Citation_attlist
        = 
        Common_attrib Citation_role_attrib Local_citation_attrib
 ;
syntax Local_citerefentry_attrib
        = 
        ()
 ;
syntax Citerefentry_role_attrib
        = 
        Role_attrib
 ;
syntax Citerefentry
        = 
        citerefentry: Citerefentry_attlist Refentrytitle Manvolnum?
 ;
syntax Citerefentry_attlist
        = 
        Common_attrib Citerefentry_role_attrib Local_citerefentry_attrib
 ;
syntax Local_refentrytitle_attrib
        = 
        ()
 ;
syntax Refentrytitle_role_attrib
        = 
        Role_attrib
 ;
syntax Refentrytitle
        = 
        refentrytitle: Refentrytitle_attlist Para_char_mix*
 ;
syntax Refentrytitle_attlist
        = 
        Common_attrib Refentrytitle_role_attrib Local_refentrytitle_attrib
 ;
syntax Local_manvolnum_attrib
        = 
        ()
 ;
syntax Namvolnum_role_attrib
        = 
        Role_attrib
 ;
syntax Manvolnum
        = 
        manvolnum: Manvolnum_attlist Word_char_mix*
 ;
syntax Manvolnum_attlist
        = 
        Common_attrib Namvolnum_role_attrib Local_manvolnum_attrib
 ;
syntax Local_citetitle_attrib
        = 
        ()
 ;
syntax Citetitle_role_attrib
        = 
        Role_attrib
 ;
syntax Citetitle
        = 
        citetitle: Citetitle_attlist Para_char_mix*
 ;
syntax Citetitle_attlist
        = 
        ("article" | "book" | "chapter" | "part" | "refentry" | "section" | "journal" | "series" | "set" | "manuscript")? Common_attrib Citetitle_role_attrib Local_citetitle_attrib
 ;
syntax Local_emphasis_attrib
        = 
        ()
 ;
syntax Emphasis_role_attrib
        = 
        Role_attrib
 ;
syntax Emphasis
        = 
        emphasis: Emphasis_attlist Para_char_mix*
 ;
syntax Emphasis_attlist
        = 
        Common_attrib Emphasis_role_attrib Local_emphasis_attrib
 ;
syntax Local_firstterm_attrib
        = 
        ()
 ;
syntax Firstterm_role_attrib
        = 
        Role_attrib
 ;
syntax Firstterm
        = 
        firstterm: Firstterm_attlist Word_char_mix*
 ;
syntax Firstterm_attlist
        = 
        Linkend_attrib Common_attrib Firstterm_role_attrib Local_firstterm_attrib
 ;
syntax Local_foreignphrase_attrib
        = 
        ()
 ;
syntax Foreignphrase_role_attrib
        = 
        Role_attrib
 ;
syntax Foreignphrase
        = 
        foreignphrase: Foreignphrase_attlist Para_char_mix*
 ;
syntax Foreignphrase_attlist
        = 
        Common_attrib Foreignphrase_role_attrib Local_foreignphrase_attrib
 ;
syntax Local_glossterm_attrib
        = 
        ()
 ;
syntax Glossterm_role_attrib
        = 
        Role_attrib
 ;
syntax Glossterm
        = 
        glossterm: Glossterm_attlist Para_char_mix*
 ;
syntax Glossterm_attlist
        = 
        Linkend_attrib String baseform? Common_attrib Glossterm_role_attrib Local_glossterm_attrib
 ;
syntax Local_phrase_attrib
        = 
        ()
 ;
syntax Phrase_role_attrib
        = 
        Role_attrib
 ;
syntax Phrase
        = 
        phrase: Phrase_attlist Para_char_mix*
 ;
syntax Phrase_attlist
        = 
        Common_attrib Phrase_role_attrib Local_phrase_attrib
 ;
syntax Local_quote_attrib
        = 
        ()
 ;
syntax Quote_role_attrib
        = 
        Role_attrib
 ;
syntax Quote
        = 
        quote: Quote_attlist Para_char_mix*
 ;
syntax Quote_attlist
        = 
        Common_attrib Quote_role_attrib Local_quote_attrib
 ;
syntax Local_ssscript_attrib
        = 
        ()
 ;
syntax Ssscript_role_attrib
        = 
        Role_attrib
 ;
syntax Subscript
        = 
        subscript: Subscript_attlist (String | Link_char_class | Emphasis | Replaceable | Symbol | Inlinegraphic | Inlinemediaobject | Base_char_class | Other_char_class)*
 ;
syntax Subscript_attlist
        = 
        Common_attrib Ssscript_role_attrib Local_ssscript_attrib
 ;
syntax Superscript
        = 
        superscript: Superscript_attlist (String | Link_char_class | Emphasis | Replaceable | Symbol | Inlinegraphic | Inlinemediaobject | Base_char_class | Other_char_class)*
 ;
syntax Superscript_attlist
        = 
        Common_attrib Ssscript_role_attrib Local_ssscript_attrib
 ;
syntax Local_trademark_attrib
        = 
        ()
 ;
syntax Trademark_role_attrib
        = 
        Role_attrib
 ;
syntax Trademark
        = 
        trademark: Trademark_attlist (String | Link_char_class | Tech_char_class | Base_char_class | Other_char_class | Inlinegraphic | Inlinemediaobject | Emphasis)*
 ;
syntax Trademark_attlist
        = 
        ("service" | "trade" | "registered" | "copyright")? Common_attrib Trademark_role_attrib Local_trademark_attrib
 ;
syntax Local_wordasword_attrib
        = 
        ()
 ;
syntax Wordasword_role_attrib
        = 
        Role_attrib
 ;
syntax Wordasword
        = 
        wordasword: Wordasword_attlist Word_char_mix*
 ;
syntax Wordasword_attlist
        = 
        Common_attrib Wordasword_role_attrib Local_wordasword_attrib
 ;
syntax Local_link_attrib
        = 
        ()
 ;
syntax Link_role_attrib
        = 
        Role_attrib
 ;
syntax Link
        = 
        link: Link_attlist Para_char_mix*
 ;
syntax Link_attlist
        = 
        String endterm? Linkendreq_attrib String type? Common_attrib Link_role_attrib Local_link_attrib
 ;
syntax Local_olink_attrib
        = 
        ()
 ;
syntax Olink_role_attrib
        = 
        Role_attrib
 ;
syntax Olink
        = 
        olink: Olink_attlist Para_char_mix*
 ;
syntax Olink_attlist
        = 
        String targetdocent? String linkmode? String localinfo? String type? String targetdoc? String targetptr? Common_attrib Olink_role_attrib Local_olink_attrib
 ;
syntax Local_ulink_attrib
        = 
        ()
 ;
syntax Ulink_role_attrib
        = 
        Role_attrib
 ;
syntax Ulink
        = 
        ulink: Ulink_attlist Para_char_mix*
 ;
syntax Ulink_attlist
        = 
        String url String type? Common_attrib Ulink_role_attrib Local_ulink_attrib
 ;
syntax Local_footnoteref_attrib
        = 
        ()
 ;
syntax Footnoteref_role_attrib
        = 
        Role_attrib
 ;
syntax Footnoteref
        = 
        footnoteref: Footnoteref_attlist ()
 ;
syntax Footnoteref_attlist
        = 
        Linkendreq_attrib Label_attrib Common_attrib Footnoteref_role_attrib Local_footnoteref_attrib
 ;
syntax Local_xref_attrib
        = 
        ()
 ;
syntax Xref_role_attrib
        = 
        Role_attrib
 ;
syntax Xref
        = 
        xref: Xref_attlist ()
 ;
syntax Xref_attlist
        = 
        String endterm? Linkendreq_attrib Common_attrib Xref_role_attrib Local_xref_attrib
 ;
syntax Local_anchor_attrib
        = 
        ()
 ;
syntax Anchor_role_attrib
        = 
        Role_attrib
 ;
syntax Anchor
        = 
        anchor: Anchor_attlist ()
 ;
syntax Anchor_attlist
        = 
        Idreq_attrib Pagenum_attrib Remap_attrib Xreflabel_attrib Revisionflag_attrib Effectivity_attrib Anchor_role_attrib Local_anchor_attrib
 ;
syntax Local_beginpage_attrib
        = 
        ()
 ;
syntax Beginpage_role_attrib
        = 
        Role_attrib
 ;
syntax Beginpage
        = 
        beginpage: Beginpage_attlist ()
 ;
syntax Beginpage_attlist
        = 
        Pagenum_attrib Common_attrib Beginpage_role_attrib Local_beginpage_attrib
 ;
syntax Local_indexterm_attrib
        = 
        ()
 ;
syntax Indexterm_role_attrib
        = 
        Role_attrib
 ;
syntax Indexterm
        = 
        indexterm: Indexterm_attlist Primary? ((Secondary ((Tertiary (See | Seealso+)?) | See | Seealso+)?) | See | Seealso+)?
 ;
syntax Indexterm_attlist
        = 
        Pagenum_attrib ("all" | "global" | "local")? ("preferred" | "normal")? ("singular" | "startofrange" | "endofrange")? String startref? String zone? Common_attrib Indexterm_role_attrib Local_indexterm_attrib
 ;
syntax Local_primsecter_attrib
        = 
        ()
 ;
syntax Primsecter_role_attrib
        = 
        Role_attrib
 ;
syntax Primary
        = 
        primary: Primary_attlist Ndxterm_char_mix*
 ;
syntax Primary_attlist
        = 
        String sortas? Common_attrib Primsecter_role_attrib Local_primsecter_attrib
 ;
syntax Secondary
        = 
        secondary: Secondary_attlist Ndxterm_char_mix*
 ;
syntax Secondary_attlist
        = 
        String sortas? Common_attrib Primsecter_role_attrib Local_primsecter_attrib
 ;
syntax Tertiary
        = 
        tertiary: Tertiary_attlist Ndxterm_char_mix*
 ;
syntax Tertiary_attlist
        = 
        String sortas? Common_attrib Primsecter_role_attrib Local_primsecter_attrib
 ;
syntax Local_seeseealso_attrib
        = 
        ()
 ;
syntax Seeseealso_role_attrib
        = 
        Role_attrib
 ;
syntax See
        = 
        see: See_attlist Ndxterm_char_mix*
 ;
syntax See_attlist
        = 
        Common_attrib Seeseealso_role_attrib Local_seeseealso_attrib
 ;
syntax Seealso
        = 
        seealso: Seealso_attlist Ndxterm_char_mix*
 ;
syntax Seealso_attlist
        = 
        Common_attrib Seeseealso_role_attrib Local_seeseealso_attrib
 ;

public void main()
{
	registerLanguage("Walsh", "ext", set(str input, loc org) {return parse(#set, input, org);});
	println("Language registered.");
}
