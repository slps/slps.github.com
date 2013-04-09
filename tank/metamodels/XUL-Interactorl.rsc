@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XUL_Interactorl

syntax UIModel
        = 
        ANY windows ANY functions+
 ;
syntax Windows
        = 
        ANY id ANY title ANY orient ANY style ANY headers+ ANY headersJScript+
 ;
syntax Button
        = 
        ANY tooltiptext ANY image
 ;
syntax Orients
        = horizontal: ()
        | vertical: ()
 ;
syntax Image
        = 
        src: ANY
 ;
syntax RadioGroup
        = 
        ANY radiobuttons+
 ;
syntax Radio
        = 
        ANY id ANY label ANY selected ANY disabled
 ;
syntax ListBox
        = 
        ANY rows ANY listitems+
 ;
syntax ListItem
        = 
        ANY label ANY value
 ;
syntax MenuList
        = 
        ANY menuitems+
 ;
syntax MenuItem
        = 
        label: ANY
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
        = 
        ANY style ANY accesskey ANY class ANY maxlength ANY label ANY orient ANY minlength ANY onclick ANY disabled
 ;
syntax GroupBox
        = 
        ()
 ;
syntax Container
        = 
        ANY xulInteractors+
 ;
syntax Interactor
        = 
        ANY flex ANY id ANY stat ANY style ANY events+
 ;
syntax TabBox
        = 
        ANY tabPanels+
 ;
syntax TextBox
        = 
        ANY multiline ANY value
 ;
syntax Spacer
        = 
        ()
 ;
syntax Label
        = 
        ANY value ANY control
 ;
syntax Grid
        = 
        ANY columns+ ANY rows+
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
        checked: ANY
 ;
syntax Caption
        = 
        label: ANY
 ;
syntax Description
        = 
        value: ANY
 ;
syntax HeaderCss
        = 
        ANY ref ANY type
 ;
syntax HeaderJScript
        = 
        ref: ANY
 ;
syntax TabPanel
        = 
        ANY id ANY orient
 ;
syntax Event
        = 
        ANY functionCallParameters+ ANY functionCalledName ANY name
 ;
syntax Parameter
        = 
        ANY value ANY name
 ;
syntax OnClick
        = 
        ()
 ;
syntax Function
        = 
        ANY name ANY functionUIModel ANY body
 ;
