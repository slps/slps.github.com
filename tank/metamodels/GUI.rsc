@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GUI

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
