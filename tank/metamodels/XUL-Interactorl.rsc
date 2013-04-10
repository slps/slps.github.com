@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XUL_Interactorl

syntax UIModel
        = 
        Windows windows Function functions+
 ;
syntax Windows
        = 
        String id String title Orients orient String style HeaderCss headers+ HeaderJScript headersJScript+
 ;
syntax Button
        = 
        String tooltiptext String image
 ;
syntax Orients
        = horizontal: ()
        | vertical: ()
 ;
syntax Image
        = 
        src: String
 ;
syntax RadioGroup
        = 
        Radio radiobuttons+
 ;
syntax Radio
        = 
        String id String label Boolean selected Boolean disabled
 ;
syntax ListBox
        = 
        Integer rows ListItem listitems+
 ;
syntax ListItem
        = 
        String label String value
 ;
syntax MenuList
        = 
        MenuItem menuitems+
 ;
syntax MenuItem
        = 
        label: String
 ;
syntax Vbox
        = 
        ()
 ;
syntax Hbox
        = 
        ()
 ;
syntax Containement
        = Button
        | Image
        | RadioGroup
        | ListBox
        | MenuList
        | TabBox
        | TextBox
        | Spacer
        | Label
        | Grid
        | CheckBox
        | Caption
        | Description
        | String style String accesskey String class Integer maxlength String label Orients orient String minlength String onclick String disabled
 ;
syntax GroupBox
        = 
        ()
 ;
syntax Container
        = Windows
        | Vbox
        | Hbox
        | GroupBox
        | Row
        | Column
        | TabPanel
        | Interactor xulInteractors+
 ;
syntax Interactor
        = Radio
        | ListItem
        | MenuItem
        | Containement
        | Container
        | Integer flex String id String stat String style Event events+
 ;
syntax TabBox
        = 
        Interactor tabPanels+
 ;
syntax TextBox
        = 
        Boolean multiline String value
 ;
syntax Spacer
        = 
        ()
 ;
syntax Label
        = 
        String value String control
 ;
syntax Grid
        = 
        Column columns+ Row rows+
 ;
syntax Row
        = 
        ()
 ;
syntax Column
        = 
        ()
 ;
syntax CheckBox
        = 
        checked: Boolean
 ;
syntax Caption
        = 
        label: String
 ;
syntax Description
        = 
        value: String
 ;
syntax HeaderCss
        = 
        String ref String type
 ;
syntax HeaderJScript
        = 
        ref: String
 ;
syntax TabPanel
        = 
        String id Orients orient
 ;
syntax Event
        = OnClick
        | Parameter functionCallParameters+ String functionCalledName String name
 ;
syntax Parameter
        = 
        String value String name
 ;
syntax OnClick
        = 
        ()
 ;
syntax Function
        = 
        String name UIModel functionUIModel String body
 ;
