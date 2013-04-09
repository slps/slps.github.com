@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GUI

syntax LocatedElement
        = 
        ()
 ;
syntax Named
        = 
        ()
 ;
syntax GUI
        = 
        ANY guiTabs+
 ;
syntax Tab
        = 
        ANY title ANY gui ANY group
 ;
syntax Composant
        = 
        ()
 ;
syntax Layout
        = default: ()
        | horizontal: ()
        | vertical: ()
 ;
syntax Group
        = 
        ANY title ANY layout ANY description ANY tabGroup ANY composants+
 ;
syntax Label
        = 
        text: ANY
 ;
syntax TextArea
        = 
        ANY text ANY nbRows
 ;
syntax Table
        = 
        ANY tabColumns+
 ;
syntax Column
        = 
        ANY title ANY columnTab
 ;
syntax ComboBox
        = 
        ANY listRows+
 ;
syntax Row
        = 
        ANY rowList ANY text ANY listItems+
 ;
syntax Item
        = 
        ANY itemList ANY text
 ;
syntax Button
        = 
        title: ANY
 ;
