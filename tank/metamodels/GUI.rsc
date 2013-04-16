@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GUI

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = Named
        | Column
 ;
syntax Named
        = GUI
        | Tab
        | Composant
 ;
syntax GUI
        = 
        Tab guiTabs+
 ;
syntax Tab
        = 
        String title GUI gui Group group
 ;
syntax Composant
        = Group
        | Label
        | TextArea
        | Table
        | ComboBox
        | Row
        | Item
        | Button
 ;
syntax Layout
        = default: ()
        | horizontal: ()
        | vertical: ()
 ;
syntax Group
        = 
        String title Layout layout String description Tab tabGroup Composant composants+
 ;
syntax Label
        = 
        text: String
 ;
syntax TextArea
        = 
        String text Integer nbRows
 ;
syntax Table
        = 
        Column tabColumns+
 ;
syntax Column
        = 
        String title Table columnTab
 ;
syntax ComboBox
        = 
        Row listRows+
 ;
syntax Row
        = 
        ComboBox rowList String text Item listItems+
 ;
syntax Item
        = 
        Row itemList String text
 ;
syntax Button
        = 
        title: String
 ;
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
