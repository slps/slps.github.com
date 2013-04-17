all:
	cp ../slps/topics/grammars/hats/abs/grammar.bgf tank/hats/abs.bgf
	_dev/format tank hats/abs hats/abs
	_dev/format tank fl/antlr fl/antlr
	_dev/format tank fl/dcg fl/dcg
	_dev/format tank fl/sdf fl/sdf
	_dev/format tank fl/txl fl/txl
	_dev/format tank fl/ecore fl/ecore
	_dev/format tank fl/emf fl/emf
	_dev/format tank fl/xsd fl/xsd
	_dev/format tank fl/om fl/om
	_dev/format tank fl/jaxb fl/jaxb
	cp ../slps/topics/grammars/metasyntax/bgf/grammar.bgf tank/metasyntax/bgf.bgf
	_dev/format tank metasyntax/bgf metasyntax/bgf
	cp ../slps/topics/grammars/metasyntax/bnf-sdf/grammar.bgf tank/metasyntax/bnf-sdf.bgf
	_dev/format tank metasyntax/bnf-sdf metasyntax/bnf-sdf
	cp ../slps/topics/grammars/metasyntax/ebnf-bgf/grammar.bgf tank/metasyntax/ebnf-bgf.bgf
	_dev/format tank metasyntax/ebnf-bgf metasyntax/ebnf-bgf
	cp ../slps/topics/grammars/metasyntax/ebnf-iso-1/grammar.bgf tank/metasyntax/ebnf-iso-1.bgf
	_dev/format tank metasyntax/ebnf-iso-1 metasyntax/ebnf-iso-1
	cp ../slps/topics/grammars/metasyntax/ebnf-iso-2/grammar.bgf tank/metasyntax/ebnf-iso-2.bgf
	_dev/format tank metasyntax/ebnf-iso-2 metasyntax/ebnf-iso-2
	cp ../slps/topics/grammars/metasyntax/ebnf-iso-3/grammar.bgf tank/metasyntax/ebnf-iso-3.bgf
	_dev/format tank metasyntax/ebnf-iso-3 metasyntax/ebnf-iso-3
	cp ../slps/topics/grammars/metasyntax/ebnf-sdf/grammar.bgf tank/metasyntax/ebnf-sdf.bgf
	_dev/format tank metasyntax/ebnf-sdf metasyntax/ebnf-sdf
	cp ../slps/topics/grammars/metasyntax/lll-ldta/grammar.bgf tank/metasyntax/lll-ldta.bgf
	_dev/format tank metasyntax/lll-ldta metasyntax/lll-ldta
	cp ../slps/topics/grammars/metasyntax/lll-kort/grammar.bgf tank/metasyntax/lll-kort.bgf
	_dev/format tank metasyntax/lll-kort metasyntax/lll-kort
	cp ../slps/topics/grammars/metasyntax/relaxng/grammar.bgf tank/metasyntax/relaxng.bgf
	_dev/format tank metasyntax/relaxng metasyntax/relaxng
	cp ../slps/topics/grammars/metasyntax/txl/grammar.bgf tank/metasyntax/txl.bgf
	_dev/format tank metasyntax/txl metasyntax/txl
	cp ../slps/topics/grammars/metasyntax/yacc-sdf/grammar.bgf tank/metasyntax/yacc-sdf.bgf
	_dev/format tank metasyntax/yacc-sdf metasyntax/yacc-sdf
	cp ../slps/topics/grammars/ocl/expressions/grammar.bgf tank/ocl/expressions.bgf
	_dev/format tank ocl/expressions ocl/expressions
	cp ../slps/topics/grammars/ocl/uml/grammar.bgf tank/ocl/uml.bgf
	_dev/format tank ocl/uml ocl/uml
	cp ../slps/topics/grammars/ocl/operations/grammar.bgf tank/ocl/operations.bgf
	_dev/format tank ocl/operations ocl/operations
	cp ../slps/topics/grammars/ocl/types/grammar.bgf tank/ocl/types.bgf
	_dev/format tank ocl/types ocl/types
	cp ../slps/topics/grammars/ocl/values/grammar.bgf tank/ocl/values.bgf
	_dev/format tank ocl/values ocl/values
	cp ../slps/topics/grammars/markup/atom/grammar.bgf tank/markup/atom.bgf
	_dev/format tank markup/atom markup/atom
	cp ../slps/topics/grammars/markup/bugzilla/grammar.bgf tank/markup/bugzilla.bgf
	_dev/format tank markup/bugzilla markup/bugzilla
	cp ../slps/topics/grammars/markup/cml/grammar.bgf tank/markup/cml.bgf
	_dev/format tank markup/cml markup/cml
	cp ../slps/topics/grammars/markup/docbook/grammar.bgf tank/markup/docbook.bgf
	_dev/format tank markup/docbook markup/docbook
	cp ../slps/topics/grammars/markup/ebxml/grammar.bgf tank/markup/ebxml.bgf
	_dev/format tank markup/ebxml markup/ebxml
	cp ../slps/topics/grammars/markup/graphml/grammar.bgf tank/markup/graphml.bgf
	_dev/format tank markup/graphml markup/graphml
	cp ../slps/topics/grammars/markup/kml/grammar.bgf tank/markup/kml.bgf
	_dev/format tank markup/kml markup/kml
	cp ../slps/topics/grammars/pnml/pnmlcoremodel/grammar.bgf tank/pnml/pnmlcoremodel.bgf
	_dev/format tank pnml/pnmlcoremodel pnml/pnmlcoremodel
	cp ../slps/topics/grammars/pnml/anyElement/grammar.bgf tank/pnml/anyElement.bgf
	_dev/format tank pnml/anyElement pnml/anyElement
	cp ../slps/topics/grammars/pnml/conventions/grammar.bgf tank/pnml/conventions.bgf
	_dev/format tank pnml/conventions pnml/conventions
	cp ../slps/topics/grammars/pnml/ptnet/grammar.bgf tank/pnml/ptnet.bgf
	_dev/format tank pnml/ptnet pnml/ptnet
	cp ../slps/topics/grammars/pnml/booleans/grammar.bgf tank/pnml/booleans.bgf
	_dev/format tank pnml/booleans pnml/booleans
	cp ../slps/topics/grammars/pnml/finiteenumerations/grammar.bgf tank/pnml/finiteenumerations.bgf
	_dev/format tank pnml/finiteenumerations pnml/finiteenumerations
	cp ../slps/topics/grammars/pnml/cyclicenumerations/grammar.bgf tank/pnml/cyclicenumerations.bgf
	_dev/format tank pnml/cyclicenumerations pnml/cyclicenumerations
	cp ../slps/topics/grammars/pnml/finiteintranges/grammar.bgf tank/pnml/finiteintranges.bgf
	_dev/format tank pnml/finiteintranges pnml/finiteintranges
	cp ../slps/topics/grammars/pnml/dots/grammar.bgf tank/pnml/dots.bgf
	_dev/format tank pnml/dots pnml/dots
	cp ../slps/topics/grammars/pnml/multisets/grammar.bgf tank/pnml/multisets.bgf
	_dev/format tank pnml/multisets pnml/multisets
	cp ../slps/topics/grammars/pnml/partitions/grammar.bgf tank/pnml/partitions.bgf
	_dev/format tank pnml/partitions pnml/partitions
	cp ../slps/topics/grammars/pnml/lists/grammar.bgf tank/pnml/lists.bgf
	_dev/format tank pnml/lists pnml/lists
	cp ../slps/topics/grammars/pnml/integers/grammar.bgf tank/pnml/integers.bgf
	_dev/format tank pnml/integers pnml/integers
	cp ../slps/topics/grammars/pnml/strings/grammar.bgf tank/pnml/strings.bgf
	_dev/format tank pnml/strings pnml/strings
	cp ../slps/topics/grammars/pnml/terms/grammar.bgf tank/pnml/terms.bgf
	_dev/format tank pnml/terms pnml/terms
	cp ../slps/topics/grammars/pnml/arbitrarydeclarations/grammar.bgf tank/pnml/arbitrarydeclarations.bgf
	_dev/format tank pnml/arbitrarydeclarations pnml/arbitrarydeclarations
	cp ../slps/topics/grammars/pnml/hlcorestructure/grammar.bgf tank/pnml/hlcorestructure.bgf
	_dev/format tank pnml/hlcorestructure pnml/hlcorestructure
	cp ../slps/topics/grammars/pnml/hlpng/grammar.bgf tank/pnml/hlpng.bgf
	_dev/format tank pnml/hlpng pnml/hlpng
	cp ../slps/topics/grammars/pnml/symmetricnet/grammar.bgf tank/pnml/symmetricnet.bgf
	_dev/format tank pnml/symmetricnet pnml/symmetricnet
	cp ../slps/topics/grammars/pnml/highlevelnet/grammar.bgf tank/pnml/highlevelnet.bgf
	_dev/format tank pnml/highlevelnet pnml/highlevelnet
	cp ../slps/topics/grammars/pnml/ext-specialarcs/grammar.bgf tank/pnml/ext-specialarcs.bgf
	_dev/format tank pnml/ext-specialarcs pnml/ext-specialarcs
	cp ../slps/topics/grammars/pnml/ext-reset/grammar.bgf tank/pnml/ext-reset.bgf
	_dev/format tank pnml/ext-reset pnml/ext-reset
	cp ../slps/topics/grammars/pnml/ext-inhibitor/grammar.bgf tank/pnml/ext-inhibitor.bgf
	_dev/format tank pnml/ext-inhibitor pnml/ext-inhibitor
	cp ../slps/topics/grammars/pnml/ext-resetinhibitor/grammar.bgf tank/pnml/ext-resetinhibitor.bgf
	_dev/format tank pnml/ext-resetinhibitor pnml/ext-resetinhibitor
	cp ../slps/topics/grammars/pnml/guyard-modular/grammar.bgf tank/pnml/guyard-modular.bgf
	_dev/format tank pnml/guyard-modular pnml/guyard-modular
	cp ../slps/topics/grammars/pnml/guyard-simplified/grammar.bgf tank/pnml/guyard-simplified.bgf
	_dev/format tank pnml/guyard-simplified pnml/guyard-simplified
	cp ../slps/topics/grammars/pnml/guyard-basic/grammar.bgf tank/pnml/guyard-basic.bgf
	_dev/format tank pnml/guyard-basic pnml/guyard-basic
	cp ../slps/topics/grammars/pnml/guyard-structured/grammar.bgf tank/pnml/guyard-structured.bgf
	_dev/format tank pnml/guyard-structured pnml/guyard-structured
	cp ../slps/topics/grammars/pnml/touzet/grammar.bgf tank/pnml/touzet.bgf
	_dev/format tank pnml/touzet pnml/touzet
	cp ../slps/topics/grammars/markup/r2ml/grammar.bgf tank/markup/r2ml.bgf
	_dev/format tank markup/r2ml markup/r2ml
	cp ../slps/topics/grammars/markup/rss/grammar.bgf tank/markup/rss.bgf
	_dev/format tank markup/rss markup/rss
	_dev/format tank tescol/reference Reference
	_dev/format tank tescol/00000 00000
	_dev/format tank tescol/00001 00001
	_dev/format tank tescol/00010 00010
	_dev/format tank tescol/00011 00011
	_dev/format tank tescol/00100 00100
	_dev/format tank tescol/00101 00101
	_dev/format tank tescol/00110 00110
	_dev/format tank tescol/00111 00111
	_dev/format tank tescol/01000 01000
	_dev/format tank tescol/01001 01001
	_dev/format tank tescol/01010 01010
	_dev/format tank tescol/01011 01011
	_dev/format tank tescol/01100 01100
	_dev/format tank tescol/01101 01101
	_dev/format tank tescol/01110 01110
	_dev/format tank tescol/01111 01111
	_dev/format tank tescol/10000 10000
	_dev/format tank tescol/10001 10001
	_dev/format tank tescol/10010 10010
	_dev/format tank tescol/10011 10011
	_dev/format tank tescol/10100 10100
	_dev/format tank tescol/10101 10101
	_dev/format tank tescol/10110 10110
	_dev/format tank tescol/10111 10111
	_dev/format tank tescol/11000 11000
	_dev/format tank tescol/11001 11001
	_dev/format tank tescol/11010 11010
	_dev/format tank tescol/11011 11011
	_dev/format tank tescol/11100 11100
	_dev/format tank tescol/11101 11101
	_dev/format tank tescol/11110 11110
	_dev/format tank tescol/11111 11111
				cp ../slps/topics/grammars/metamodels/ACG/grammar.bgf tank/metamodels/ACG.bgf
	_dev/format tank metamodels/ACG metamodels/ACG
	cp ../slps/topics/grammars/metamodels/ACME/grammar.bgf tank/metamodels/ACME.bgf
	_dev/format tank metamodels/ACME metamodels/ACME
	cp ../slps/topics/grammars/metamodels/ADELFE/grammar.bgf tank/metamodels/ADELFE.bgf
	_dev/format tank metamodels/ADELFE metamodels/ADELFE
	cp ../slps/topics/grammars/metamodels/Agate/grammar.bgf tank/metamodels/Agate.bgf
	_dev/format tank metamodels/Agate metamodels/Agate
	cp ../slps/topics/grammars/metamodels/ATL/grammar.bgf tank/metamodels/ATL.bgf
	_dev/format tank metamodels/ATL metamodels/ATL
	cp ../slps/topics/grammars/metamodels/AWKPrograms/grammar.bgf tank/metamodels/AWKPrograms.bgf
	_dev/format tank metamodels/AWKPrograms metamodels/AWKPrograms
	cp ../slps/topics/grammars/metamodels/XMorphLanguage_abstractSyntax/grammar.bgf tank/metamodels/XMorphLanguage_abstractSyntax.bgf
	_dev/format tank metamodels/XMorphLanguage_abstractSyntax metamodels/XMorphLanguage_abstractSyntax
	cp ../slps/topics/grammars/metamodels/TroposActorConcept/grammar.bgf tank/metamodels/TroposActorConcept.bgf
	_dev/format tank metamodels/TroposActorConcept metamodels/TroposActorConcept
	cp ../slps/topics/grammars/metamodels/Amble/grammar.bgf tank/metamodels/Amble.bgf
	_dev/format tank metamodels/Amble metamodels/Amble
	cp ../slps/topics/grammars/metamodels/Ant/grammar.bgf tank/metamodels/Ant.bgf
	_dev/format tank metamodels/Ant metamodels/Ant
	cp ../slps/topics/grammars/metamodels/AntScripts/grammar.bgf tank/metamodels/AntScripts.bgf
	_dev/format tank metamodels/AntScripts metamodels/AntScripts
	cp ../slps/topics/grammars/metamodels/AnyLogic/grammar.bgf tank/metamodels/AnyLogic.bgf
	_dev/format tank metamodels/AnyLogic metamodels/AnyLogic
	cp ../slps/topics/grammars/metamodels/Architectural_Description/grammar.bgf tank/metamodels/Architectural_Description.bgf
	_dev/format tank metamodels/Architectural_Description metamodels/Architectural_Description
	cp ../slps/topics/grammars/metamodels/AsmL/grammar.bgf tank/metamodels/AsmL.bgf
	_dev/format tank metamodels/AsmL metamodels/AsmL
	cp ../slps/topics/grammars/metamodels/BMM/grammar.bgf tank/metamodels/BMM.bgf
	_dev/format tank metamodels/BMM metamodels/BMM
	cp ../slps/topics/grammars/metamodels/BPEL/grammar.bgf tank/metamodels/BPEL.bgf
	_dev/format tank metamodels/BPEL metamodels/BPEL
	cp ../slps/topics/grammars/metamodels/BPMN/grammar.bgf tank/metamodels/BPMN.bgf
	_dev/format tank metamodels/BPMN metamodels/BPMN
	cp ../slps/topics/grammars/metamodels/IEEE1471ViewpointM2/grammar.bgf tank/metamodels/IEEE1471ViewpointM2.bgf
	_dev/format tank metamodels/IEEE1471ViewpointM2 metamodels/IEEE1471ViewpointM2
	cp ../slps/topics/grammars/metamodels/Book/grammar.bgf tank/metamodels/Book.bgf
	_dev/format tank metamodels/Book metamodels/Book
	cp ../slps/topics/grammars/metamodels/Bossa/grammar.bgf tank/metamodels/Bossa.bgf
	_dev/format tank metamodels/Bossa metamodels/Bossa
	cp ../slps/topics/grammars/metamodels/BusinessEntityModel/grammar.bgf tank/metamodels/BusinessEntityModel.bgf
	_dev/format tank metamodels/BusinessEntityModel metamodels/BusinessEntityModel
	cp ../slps/topics/grammars/metamodels/BusinessProcessModel/grammar.bgf tank/metamodels/BusinessProcessModel.bgf
	_dev/format tank metamodels/BusinessProcessModel metamodels/BusinessProcessModel
	cp ../slps/topics/grammars/metamodels/CADM/grammar.bgf tank/metamodels/CADM.bgf
	_dev/format tank metamodels/CADM metamodels/CADM
	cp ../slps/topics/grammars/metamodels/CDE/grammar.bgf tank/metamodels/CDE.bgf
	_dev/format tank metamodels/CDE metamodels/CDE
	cp ../slps/topics/grammars/metamodels/CFG/grammar.bgf tank/metamodels/CFG.bgf
	_dev/format tank metamodels/CFG metamodels/CFG
	cp ../slps/topics/grammars/metamodels/COBOL/grammar.bgf tank/metamodels/COBOL.bgf
	_dev/format tank metamodels/COBOL metamodels/COBOL
	cp ../slps/topics/grammars/metamodels/CORBAComponent/grammar.bgf tank/metamodels/CORBAComponent.bgf
	_dev/format tank metamodels/CORBAComponent metamodels/CORBAComponent
	cp ../slps/topics/grammars/metamodels/CPL/grammar.bgf tank/metamodels/CPL.bgf
	_dev/format tank metamodels/CPL metamodels/CPL
	cp ../slps/topics/grammars/metamodels/CPR/grammar.bgf tank/metamodels/CPR.bgf
	_dev/format tank metamodels/CPR metamodels/CPR
	cp ../slps/topics/grammars/metamodels/CSM/grammar.bgf tank/metamodels/CSM.bgf
	_dev/format tank metamodels/CSM metamodels/CSM
	cp ../slps/topics/grammars/metamodels/CWMCore/grammar.bgf tank/metamodels/CWMCore.bgf
	_dev/format tank metamodels/CWMCore metamodels/CWMCore
	cp ../slps/topics/grammars/metamodels/CWMRelationalData/grammar.bgf tank/metamodels/CWMRelationalData.bgf
	_dev/format tank metamodels/CWMRelationalData metamodels/CWMRelationalData
	cp ../slps/topics/grammars/metamodels/MiningMart_ViewCaseRepresentation/grammar.bgf tank/metamodels/MiningMart_ViewCaseRepresentation.bgf
	_dev/format tank metamodels/MiningMart_ViewCaseRepresentation metamodels/MiningMart_ViewCaseRepresentation
	cp ../slps/topics/grammars/metamodels/ChocoModel/grammar.bgf tank/metamodels/ChocoModel.bgf
	_dev/format tank metamodels/ChocoModel metamodels/ChocoModel
	cp ../slps/topics/grammars/metamodels/Class/grammar.bgf tank/metamodels/Class.bgf
	_dev/format tank metamodels/Class metamodels/Class
	cp ../slps/topics/grammars/metamodels/ClassicModels/grammar.bgf tank/metamodels/ClassicModels.bgf
	_dev/format tank metamodels/ClassicModels metamodels/ClassicModels
	cp ../slps/topics/grammars/metamodels/cmt.owl/grammar.bgf tank/metamodels/cmt.owl.bgf
	_dev/format tank metamodels/cmt.owl metamodels/cmt.owl
	cp ../slps/topics/grammars/metamodels/Cocus.owl/grammar.bgf tank/metamodels/Cocus.owl.bgf
	_dev/format tank metamodels/Cocus.owl metamodels/Cocus.owl
	cp ../slps/topics/grammars/metamodels/CompanyStructure/grammar.bgf tank/metamodels/CompanyStructure.bgf
	_dev/format tank metamodels/CompanyStructure metamodels/CompanyStructure
	cp ../slps/topics/grammars/metamodels/ComponentUML/grammar.bgf tank/metamodels/ComponentUML.bgf
	_dev/format tank metamodels/ComponentUML metamodels/ComponentUML
	cp ../slps/topics/grammars/metamodels/IEEE1471ConceptualModel/grammar.bgf tank/metamodels/IEEE1471ConceptualModel.bgf
	_dev/format tank metamodels/IEEE1471ConceptualModel metamodels/IEEE1471ConceptualModel
	cp ../slps/topics/grammars/metamodels/confOf.owl/grammar.bgf tank/metamodels/confOf.owl.bgf
	_dev/format tank metamodels/confOf.owl metamodels/confOf.owl
	cp ../slps/topics/grammars/metamodels/confious.owl/grammar.bgf tank/metamodels/confious.owl.bgf
	_dev/format tank metamodels/confious.owl metamodels/confious.owl
	cp ../slps/topics/grammars/metamodels/Contact/grammar.bgf tank/metamodels/Contact.bgf
	_dev/format tank metamodels/Contact metamodels/Contact
	cp ../slps/topics/grammars/metamodels/ControllerUML/grammar.bgf tank/metamodels/ControllerUML.bgf
	_dev/format tank metamodels/ControllerUML metamodels/ControllerUML
	cp ../slps/topics/grammars/metamodels/Cristal/grammar.bgf tank/metamodels/Cristal.bgf
	_dev/format tank metamodels/Cristal metamodels/Cristal
	cp ../slps/topics/grammars/metamodels/crs_dr.owl/grammar.bgf tank/metamodels/crs_dr.owl.bgf
	_dev/format tank metamodels/crs_dr.owl metamodels/crs_dr.owl
	cp ../slps/topics/grammars/metamodels/DSL/grammar.bgf tank/metamodels/DSL.bgf
	_dev/format tank metamodels/DSL metamodels/DSL
	cp ../slps/topics/grammars/metamodels/DSLtools/grammar.bgf tank/metamodels/DSLtools.bgf
	_dev/format tank metamodels/DSLtools metamodels/DSLtools
	cp ../slps/topics/grammars/metamodels/DSLModel/grammar.bgf tank/metamodels/DSLModel.bgf
	_dev/format tank metamodels/DSLModel metamodels/DSLModel
	cp ../slps/topics/grammars/metamodels/DTD/grammar.bgf tank/metamodels/DTD.bgf
	_dev/format tank metamodels/DTD metamodels/DTD
	cp ../slps/topics/grammars/metamodels/DTMP/grammar.bgf tank/metamodels/DTMP.bgf
	_dev/format tank metamodels/DTMP metamodels/DTMP
	cp ../slps/topics/grammars/metamodels/DXF/grammar.bgf tank/metamodels/DXF.bgf
	_dev/format tank metamodels/DXF metamodels/DXF
	cp ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLBasicDef/grammar.bgf tank/metamodels/MSVisio_DatadiagramMLBasicDef.bgf
	_dev/format tank metamodels/MSVisio_DatadiagramMLBasicDef metamodels/MSVisio_DatadiagramMLBasicDef
	cp ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLSimplified/grammar.bgf tank/metamodels/MSVisio_DatadiagramMLSimplified.bgf
	_dev/format tank metamodels/MSVisio_DatadiagramMLSimplified metamodels/MSVisio_DatadiagramMLSimplified
	cp ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLTextFormat/grammar.bgf tank/metamodels/MSVisio_DatadiagramMLTextFormat.bgf
	_dev/format tank metamodels/MSVisio_DatadiagramMLTextFormat metamodels/MSVisio_DatadiagramMLTextFormat
	cp ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLXForm/grammar.bgf tank/metamodels/MSVisio_DatadiagramMLXForm.bgf
	_dev/format tank metamodels/MSVisio_DatadiagramMLXForm metamodels/MSVisio_DatadiagramMLXForm
	cp ../slps/topics/grammars/metamodels/deployment/grammar.bgf tank/metamodels/deployment.bgf
	_dev/format tank metamodels/deployment metamodels/deployment
	cp ../slps/topics/grammars/metamodels/DiagramInterchange/grammar.bgf tank/metamodels/DiagramInterchange.bgf
	_dev/format tank metamodels/DiagramInterchange metamodels/DiagramInterchange
	cp ../slps/topics/grammars/metamodels/DoDAF/grammar.bgf tank/metamodels/DoDAF.bgf
	_dev/format tank metamodels/DoDAF metamodels/DoDAF
	cp ../slps/topics/grammars/metamodels/DoDAF-OV5/grammar.bgf tank/metamodels/DoDAF-OV5.bgf
	_dev/format tank metamodels/DoDAF-OV5 metamodels/DoDAF-OV5
	cp ../slps/topics/grammars/metamodels/DoDAF-SV4/grammar.bgf tank/metamodels/DoDAF-SV4.bgf
	_dev/format tank metamodels/DoDAF-SV4 metamodels/DoDAF-SV4
	cp ../slps/topics/grammars/metamodels/DoDAF-SV5/grammar.bgf tank/metamodels/DoDAF-SV5.bgf
	_dev/format tank metamodels/DoDAF-SV5 metamodels/DoDAF-SV5
	cp ../slps/topics/grammars/metamodels/DotNET_SystemReflection/grammar.bgf tank/metamodels/DotNET_SystemReflection.bgf
	_dev/format tank metamodels/DotNET_SystemReflection metamodels/DotNET_SystemReflection
	cp ../slps/topics/grammars/metamodels/EAI/grammar.bgf tank/metamodels/EAI.bgf
	_dev/format tank metamodels/EAI metamodels/EAI
	cp ../slps/topics/grammars/metamodels/EG/grammar.bgf tank/metamodels/EG.bgf
	_dev/format tank metamodels/EG metamodels/EG
	cp ../slps/topics/grammars/metamodels/EQN/grammar.bgf tank/metamodels/EQN.bgf
	_dev/format tank metamodels/EQN metamodels/EQN
	cp ../slps/topics/grammars/metamodels/EXPRESS/grammar.bgf tank/metamodels/EXPRESS.bgf
	_dev/format tank metamodels/EXPRESS metamodels/EXPRESS
	cp ../slps/topics/grammars/metamodels/EXPRESSb/grammar.bgf tank/metamodels/EXPRESSb.bgf
	_dev/format tank metamodels/EXPRESSb metamodels/EXPRESSb
	cp ../slps/topics/grammars/metamodels/EclipseLaunchConfigurations/grammar.bgf tank/metamodels/EclipseLaunchConfigurations.bgf
	_dev/format tank metamodels/EclipseLaunchConfigurations metamodels/EclipseLaunchConfigurations
	cp ../slps/topics/grammars/metamodels/EclipsePlugIn/grammar.bgf tank/metamodels/EclipsePlugIn.bgf
	_dev/format tank metamodels/EclipsePlugIn metamodels/EclipsePlugIn
	cp ../slps/topics/grammars/metamodels/edas.owl/grammar.bgf tank/metamodels/edas.owl.bgf
	_dev/format tank metamodels/edas.owl metamodels/edas.owl
	cp ../slps/topics/grammars/metamodels/ekaw.owl/grammar.bgf tank/metamodels/ekaw.owl.bgf
	_dev/format tank metamodels/ekaw.owl metamodels/ekaw.owl
	cp ../slps/topics/grammars/metamodels/Family/grammar.bgf tank/metamodels/Family.bgf
	_dev/format tank metamodels/Family metamodels/Family
	cp ../slps/topics/grammars/metamodels/FeatureDiagrams/grammar.bgf tank/metamodels/FeatureDiagrams.bgf
	_dev/format tank metamodels/FeatureDiagrams metamodels/FeatureDiagrams
	cp ../slps/topics/grammars/metamodels/Automaton/grammar.bgf tank/metamodels/Automaton.bgf
	_dev/format tank metamodels/Automaton metamodels/Automaton
	cp ../slps/topics/grammars/metamodels/FiniteStateMachine/grammar.bgf tank/metamodels/FiniteStateMachine.bgf
	_dev/format tank metamodels/FiniteStateMachine metamodels/FiniteStateMachine
	cp ../slps/topics/grammars/metamodels/FlatSignalFlow/grammar.bgf tank/metamodels/FlatSignalFlow.bgf
	_dev/format tank metamodels/FlatSignalFlow metamodels/FlatSignalFlow
	cp ../slps/topics/grammars/metamodels/GAIA/grammar.bgf tank/metamodels/GAIA.bgf
	_dev/format tank metamodels/GAIA metamodels/GAIA
	cp ../slps/topics/grammars/metamodels/Grafcet/grammar.bgf tank/metamodels/Grafcet.bgf
	_dev/format tank metamodels/Grafcet metamodels/Grafcet
	cp ../slps/topics/grammars/metamodels/GUI/grammar.bgf tank/metamodels/GUI.bgf
	_dev/format tank metamodels/GUI metamodels/GUI
	cp ../slps/topics/grammars/metamodels/Gantt/grammar.bgf tank/metamodels/Gantt.bgf
	_dev/format tank metamodels/Gantt metamodels/Gantt
	cp ../slps/topics/grammars/metamodels/GenericOutline/grammar.bgf tank/metamodels/GenericOutline.bgf
	_dev/format tank metamodels/GenericOutline metamodels/GenericOutline
	cp ../slps/topics/grammars/metamodels/GenericEditor/grammar.bgf tank/metamodels/GenericEditor.bgf
	_dev/format tank metamodels/GenericEditor metamodels/GenericEditor
	cp ../slps/topics/grammars/metamodels/GeoTrans/grammar.bgf tank/metamodels/GeoTrans.bgf
	_dev/format tank metamodels/GeoTrans metamodels/GeoTrans
	cp ../slps/topics/grammars/metamodels/TroposGoalAndPlanConcepts/grammar.bgf tank/metamodels/TroposGoalAndPlanConcepts.bgf
	_dev/format tank metamodels/TroposGoalAndPlanConcepts metamodels/TroposGoalAndPlanConcepts
	cp ../slps/topics/grammars/metamodels/HAL/grammar.bgf tank/metamodels/HAL.bgf
	_dev/format tank metamodels/HAL metamodels/HAL
	cp ../slps/topics/grammars/metamodels/HPROF/grammar.bgf tank/metamodels/HPROF.bgf
	_dev/format tank metamodels/HPROF metamodels/HPROF
	cp ../slps/topics/grammars/metamodels/HierarchicalSignalFlow/grammar.bgf tank/metamodels/HierarchicalSignalFlow.bgf
	_dev/format tank metamodels/HierarchicalSignalFlow metamodels/HierarchicalSignalFlow
	cp ../slps/topics/grammars/metamodels/HierarchicalStateMachine/grammar.bgf tank/metamodels/HierarchicalStateMachine.bgf
	_dev/format tank metamodels/HierarchicalStateMachine metamodels/HierarchicalStateMachine
	cp ../slps/topics/grammars/metamodels/HybridAutomata/grammar.bgf tank/metamodels/HybridAutomata.bgf
	_dev/format tank metamodels/HybridAutomata metamodels/HybridAutomata
	cp ../slps/topics/grammars/metamodels/IMSTransactionMessage/grammar.bgf tank/metamodels/IMSTransactionMessage.bgf
	_dev/format tank metamodels/IMSTransactionMessage metamodels/IMSTransactionMessage
	cp ../slps/topics/grammars/metamodels/IRL/grammar.bgf tank/metamodels/IRL.bgf
	_dev/format tank metamodels/IRL metamodels/IRL
	cp ../slps/topics/grammars/metamodels/iasted.owl/grammar.bgf tank/metamodels/iasted.owl.bgf
	_dev/format tank metamodels/iasted.owl metamodels/iasted.owl
	cp ../slps/topics/grammars/metamodels/TroposIntegratingActorConcept/grammar.bgf tank/metamodels/TroposIntegratingActorConcept.bgf
	_dev/format tank metamodels/TroposIntegratingActorConcept metamodels/TroposIntegratingActorConcept
	cp ../slps/topics/grammars/metamodels/Jess/grammar.bgf tank/metamodels/Jess.bgf
	_dev/format tank metamodels/Jess metamodels/Jess
	cp ../slps/topics/grammars/metamodels/KDM/grammar.bgf tank/metamodels/KDM.bgf
	_dev/format tank metamodels/KDM metamodels/KDM
	cp ../slps/topics/grammars/metamodels/KDMSimplified/grammar.bgf tank/metamodels/KDMSimplified.bgf
	_dev/format tank metamodels/KDMSimplified metamodels/KDMSimplified
	cp ../slps/topics/grammars/metamodels/KM3/grammar.bgf tank/metamodels/KM3.bgf
	_dev/format tank metamodels/KM3 metamodels/KM3
	cp ../slps/topics/grammars/metamodels/Klaper/grammar.bgf tank/metamodels/Klaper.bgf
	_dev/format tank metamodels/Klaper metamodels/Klaper
	cp ../slps/topics/grammars/metamodels/LQN/grammar.bgf tank/metamodels/LQN.bgf
	_dev/format tank metamodels/LQN metamodels/LQN
	cp ../slps/topics/grammars/metamodels/LaTeX/grammar.bgf tank/metamodels/LaTeX.bgf
	_dev/format tank metamodels/LaTeX metamodels/LaTeX
	cp ../slps/topics/grammars/metamodels/M/grammar.bgf tank/metamodels/M.bgf
	_dev/format tank metamodels/M metamodels/M
	cp ../slps/topics/grammars/metamodels/Marte/grammar.bgf tank/metamodels/Marte.bgf
	_dev/format tank metamodels/Marte metamodels/Marte
	cp ../slps/topics/grammars/metamodels/MAS/grammar.bgf tank/metamodels/MAS.bgf
	_dev/format tank metamodels/MAS metamodels/MAS
	cp ../slps/topics/grammars/metamodels/Matlab/grammar.bgf tank/metamodels/Matlab.bgf
	_dev/format tank metamodels/Matlab metamodels/Matlab
	cp ../slps/topics/grammars/metamodels/MSProject/grammar.bgf tank/metamodels/MSProject.bgf
	_dev/format tank metamodels/MSProject metamodels/MSProject
	cp ../slps/topics/grammars/metamodels/MSProject2/grammar.bgf tank/metamodels/MSProject2.bgf
	_dev/format tank metamodels/MSProject2 metamodels/MSProject2
	cp ../slps/topics/grammars/metamodels/MTRANS/grammar.bgf tank/metamodels/MTRANS.bgf
	_dev/format tank metamodels/MTRANS metamodels/MTRANS
	cp ../slps/topics/grammars/metamodels/Make/grammar.bgf tank/metamodels/Make.bgf
	_dev/format tank metamodels/Make metamodels/Make
	cp ../slps/topics/grammars/metamodels/Mantis/grammar.bgf tank/metamodels/Mantis.bgf
	_dev/format tank metamodels/Mantis metamodels/Mantis
	cp ../slps/topics/grammars/metamodels/Maude/grammar.bgf tank/metamodels/Maude.bgf
	_dev/format tank metamodels/Maude metamodels/Maude
	cp ../slps/topics/grammars/metamodels/MavenMaven/grammar.bgf tank/metamodels/MavenMaven.bgf
	_dev/format tank metamodels/MavenMaven metamodels/MavenMaven
	cp ../slps/topics/grammars/metamodels/MavenProject/grammar.bgf tank/metamodels/MavenProject.bgf
	_dev/format tank metamodels/MavenProject metamodels/MavenProject
	cp ../slps/topics/grammars/metamodels/Measure/grammar.bgf tank/metamodels/Measure.bgf
	_dev/format tank metamodels/Measure metamodels/Measure
	cp ../slps/topics/grammars/metamodels/METAH/grammar.bgf tank/metamodels/METAH.bgf
	_dev/format tank metamodels/METAH metamodels/METAH
	cp ../slps/topics/grammars/metamodels/Metrics/grammar.bgf tank/metamodels/Metrics.bgf
	_dev/format tank metamodels/Metrics metamodels/Metrics
	cp ../slps/topics/grammars/metamodels/MICRO.owl/grammar.bgf tank/metamodels/MICRO.owl.bgf
	_dev/format tank metamodels/MICRO.owl metamodels/MICRO.owl
	cp ../slps/topics/grammars/metamodels/MiningMart/grammar.bgf tank/metamodels/MiningMart.bgf
	_dev/format tank metamodels/MiningMart metamodels/MiningMart
	cp ../slps/topics/grammars/metamodels/MoDAF-AV/grammar.bgf tank/metamodels/MoDAF-AV.bgf
	_dev/format tank metamodels/MoDAF-AV metamodels/MoDAF-AV
	cp ../slps/topics/grammars/metamodels/MonitorProgram/grammar.bgf tank/metamodels/MonitorProgram.bgf
	_dev/format tank metamodels/MonitorProgram metamodels/MonitorProgram
	cp ../slps/topics/grammars/metamodels/mlhim2/grammar.bgf tank/metamodels/mlhim2.bgf
	_dev/format tank metamodels/mlhim2 metamodels/mlhim2
	cp ../slps/topics/grammars/metamodels/MoMM/grammar.bgf tank/metamodels/MoMM.bgf
	_dev/format tank metamodels/MoMM metamodels/MoMM
	cp ../slps/topics/grammars/metamodels/MySQL/grammar.bgf tank/metamodels/MySQL.bgf
	_dev/format tank metamodels/MySQL metamodels/MySQL
	cp ../slps/topics/grammars/metamodels/News/grammar.bgf tank/metamodels/News.bgf
	_dev/format tank metamodels/News metamodels/News
	cp ../slps/topics/grammars/metamodels/ODP-CV/grammar.bgf tank/metamodels/ODP-CV.bgf
	_dev/format tank metamodels/ODP-CV metamodels/ODP-CV
	cp ../slps/topics/grammars/metamodels/ODP-NV/grammar.bgf tank/metamodels/ODP-NV.bgf
	_dev/format tank metamodels/ODP-NV metamodels/ODP-NV
	cp ../slps/topics/grammars/metamodels/ODP-EV/grammar.bgf tank/metamodels/ODP-EV.bgf
	_dev/format tank metamodels/ODP-EV metamodels/ODP-EV
	cp ../slps/topics/grammars/metamodels/ODP-IV/grammar.bgf tank/metamodels/ODP-IV.bgf
	_dev/format tank metamodels/ODP-IV metamodels/ODP-IV
	cp ../slps/topics/grammars/metamodels/ODP-TV/grammar.bgf tank/metamodels/ODP-TV.bgf
	_dev/format tank metamodels/ODP-TV metamodels/ODP-TV
	cp ../slps/topics/grammars/metamodels/OWL/grammar.bgf tank/metamodels/OWL.bgf
	_dev/format tank metamodels/OWL metamodels/OWL
	cp ../slps/topics/grammars/metamodels/OpenConf.owl/grammar.bgf tank/metamodels/OpenConf.owl.bgf
	_dev/format tank metamodels/OpenConf.owl metamodels/OpenConf.owl
	cp ../slps/topics/grammars/metamodels/OpenQVT/grammar.bgf tank/metamodels/OpenQVT.bgf
	_dev/format tank metamodels/OpenQVT metamodels/OpenQVT
	cp ../slps/topics/grammars/metamodels/PASSI/grammar.bgf tank/metamodels/PASSI.bgf
	_dev/format tank metamodels/PASSI metamodels/PASSI
	cp ../slps/topics/grammars/metamodels/PDG/grammar.bgf tank/metamodels/PDG.bgf
	_dev/format tank metamodels/PDG metamodels/PDG
	cp ../slps/topics/grammars/metamodels/PIF/grammar.bgf tank/metamodels/PIF.bgf
	_dev/format tank metamodels/PIF metamodels/PIF
	cp ../slps/topics/grammars/metamodels/PL1/grammar.bgf tank/metamodels/PL1.bgf
	_dev/format tank metamodels/PL1 metamodels/PL1
	cp ../slps/topics/grammars/metamodels/PRR/grammar.bgf tank/metamodels/PRR.bgf
	_dev/format tank metamodels/PRR metamodels/PRR
	cp ../slps/topics/grammars/metamodels/paperdyne.owl/grammar.bgf tank/metamodels/paperdyne.owl.bgf
	_dev/format tank metamodels/paperdyne.owl metamodels/paperdyne.owl
	cp ../slps/topics/grammars/metamodels/Parameters/grammar.bgf tank/metamodels/Parameters.bgf
	_dev/format tank metamodels/Parameters metamodels/Parameters
	cp ../slps/topics/grammars/metamodels/PathExp/grammar.bgf tank/metamodels/PathExp.bgf
	_dev/format tank metamodels/PathExp metamodels/PathExp
	cp ../slps/topics/grammars/metamodels/PCS.owl/grammar.bgf tank/metamodels/PCS.owl.bgf
	_dev/format tank metamodels/PCS.owl metamodels/PCS.owl
	cp ../slps/topics/grammars/metamodels/Perceptory/grammar.bgf tank/metamodels/Perceptory.bgf
	_dev/format tank metamodels/Perceptory metamodels/Perceptory
	cp ../slps/topics/grammars/metamodels/Person/grammar.bgf tank/metamodels/Person.bgf
	_dev/format tank metamodels/Person metamodels/Person
	cp ../slps/topics/grammars/metamodels/GWPNV0/grammar.bgf tank/metamodels/GWPNV0.bgf
	_dev/format tank metamodels/GWPNV0 metamodels/GWPNV0
	cp ../slps/topics/grammars/metamodels/GWPNV1/grammar.bgf tank/metamodels/GWPNV1.bgf
	_dev/format tank metamodels/GWPNV1 metamodels/GWPNV1
	cp ../slps/topics/grammars/metamodels/GWPNV2/grammar.bgf tank/metamodels/GWPNV2.bgf
	_dev/format tank metamodels/GWPNV2 metamodels/GWPNV2
	cp ../slps/topics/grammars/metamodels/GWPNV3/grammar.bgf tank/metamodels/GWPNV3.bgf
	_dev/format tank metamodels/GWPNV3 metamodels/GWPNV3
	cp ../slps/topics/grammars/metamodels/GWPNV4/grammar.bgf tank/metamodels/GWPNV4.bgf
	_dev/format tank metamodels/GWPNV4 metamodels/GWPNV4
	cp ../slps/topics/grammars/metamodels/GWPNV5/grammar.bgf tank/metamodels/GWPNV5.bgf
	_dev/format tank metamodels/GWPNV5 metamodels/GWPNV5
	cp ../slps/topics/grammars/metamodels/PetriNet_extended/grammar.bgf tank/metamodels/PetriNet_extended.bgf
	_dev/format tank metamodels/PetriNet_extended metamodels/PetriNet_extended
	cp ../slps/topics/grammars/metamodels/PluginEclipse/grammar.bgf tank/metamodels/PluginEclipse.bgf
	_dev/format tank metamodels/PluginEclipse metamodels/PluginEclipse
	cp ../slps/topics/grammars/metamodels/ProMarte/grammar.bgf tank/metamodels/ProMarte.bgf
	_dev/format tank metamodels/ProMarte metamodels/ProMarte
	cp ../slps/topics/grammars/metamodels/Problem/grammar.bgf tank/metamodels/Problem.bgf
	_dev/format tank metamodels/Problem metamodels/Problem
	cp ../slps/topics/grammars/metamodels/Program/grammar.bgf tank/metamodels/Program.bgf
	_dev/format tank metamodels/Program metamodels/Program
	cp ../slps/topics/grammars/metamodels/Promenade/grammar.bgf tank/metamodels/Promenade.bgf
	_dev/format tank metamodels/Promenade metamodels/Promenade
	cp ../slps/topics/grammars/metamodels/PtolemyII/grammar.bgf tank/metamodels/PtolemyII.bgf
	_dev/format tank metamodels/PtolemyII metamodels/PtolemyII
	cp ../slps/topics/grammars/metamodels/Publication/grammar.bgf tank/metamodels/Publication.bgf
	_dev/format tank metamodels/Publication metamodels/Publication
	cp ../slps/topics/grammars/metamodels/QVT/grammar.bgf tank/metamodels/QVT.bgf
	_dev/format tank metamodels/QVT metamodels/QVT
	cp ../slps/topics/grammars/metamodels/QoS_Characteristic/grammar.bgf tank/metamodels/QoS_Characteristic.bgf
	_dev/format tank metamodels/QoS_Characteristic metamodels/QoS_Characteristic
	cp ../slps/topics/grammars/metamodels/QoS_Profile/grammar.bgf tank/metamodels/QoS_Profile.bgf
	_dev/format tank metamodels/QoS_Profile metamodels/QoS_Profile
	cp ../slps/topics/grammars/metamodels/QoS_Statement/grammar.bgf tank/metamodels/QoS_Statement.bgf
	_dev/format tank metamodels/QoS_Statement metamodels/QoS_Statement
	cp ../slps/topics/grammars/metamodels/QoS/grammar.bgf tank/metamodels/QoS.bgf
	_dev/format tank metamodels/QoS metamodels/QoS
	cp ../slps/topics/grammars/metamodels/RDFS/grammar.bgf tank/metamodels/RDFS.bgf
	_dev/format tank metamodels/RDFS metamodels/RDFS
	cp ../slps/topics/grammars/metamodels/Relational/grammar.bgf tank/metamodels/Relational.bgf
	_dev/format tank metamodels/Relational metamodels/Relational
	cp ../slps/topics/grammars/metamodels/RelationalDBContent/grammar.bgf tank/metamodels/RelationalDBContent.bgf
	_dev/format tank metamodels/RelationalDBContent metamodels/RelationalDBContent
	cp ../slps/topics/grammars/metamodels/RelationalDBSchema/grammar.bgf tank/metamodels/RelationalDBSchema.bgf
	_dev/format tank metamodels/RelationalDBSchema metamodels/RelationalDBSchema
	cp ../slps/topics/grammars/metamodels/Repository/grammar.bgf tank/metamodels/Repository.bgf
	_dev/format tank metamodels/Repository metamodels/Repository
	cp ../slps/topics/grammars/metamodels/Reqtify/grammar.bgf tank/metamodels/Reqtify.bgf
	_dev/format tank metamodels/Reqtify metamodels/Reqtify
	cp ../slps/topics/grammars/metamodels/RequisitePro/grammar.bgf tank/metamodels/RequisitePro.bgf
	_dev/format tank metamodels/RequisitePro metamodels/RequisitePro
	cp ../slps/topics/grammars/metamodels/SBVRvoc/grammar.bgf tank/metamodels/SBVRvoc.bgf
	_dev/format tank metamodels/SBVRvoc metamodels/SBVRvoc
	cp ../slps/topics/grammars/metamodels/SCADE/grammar.bgf tank/metamodels/SCADE.bgf
	_dev/format tank metamodels/SCADE metamodels/SCADE
	cp ../slps/topics/grammars/metamodels/SEE_Design/grammar.bgf tank/metamodels/SEE_Design.bgf
	_dev/format tank metamodels/SEE_Design metamodels/SEE_Design
	cp ../slps/topics/grammars/metamodels/SPEM/grammar.bgf tank/metamodels/SPEM.bgf
	_dev/format tank metamodels/SPEM metamodels/SPEM
	cp ../slps/topics/grammars/metamodels/SPL/grammar.bgf tank/metamodels/SPL.bgf
	_dev/format tank metamodels/SPL metamodels/SPL
	cp ../slps/topics/grammars/metamodels/SQLDDL/grammar.bgf tank/metamodels/SQLDDL.bgf
	_dev/format tank metamodels/SQLDDL metamodels/SQLDDL
	cp ../slps/topics/grammars/metamodels/SQLDML/grammar.bgf tank/metamodels/SQLDML.bgf
	_dev/format tank metamodels/SQLDML metamodels/SQLDML
	cp ../slps/topics/grammars/metamodels/SVG/grammar.bgf tank/metamodels/SVG.bgf
	_dev/format tank metamodels/SVG metamodels/SVG
	cp ../slps/topics/grammars/metamodels/SWRC/grammar.bgf tank/metamodels/SWRC.bgf
	_dev/format tank metamodels/SWRC metamodels/SWRC
	cp ../slps/topics/grammars/metamodels/Scilab/grammar.bgf tank/metamodels/Scilab.bgf
	_dev/format tank metamodels/Scilab metamodels/Scilab
	cp ../slps/topics/grammars/metamodels/SecureUML/grammar.bgf tank/metamodels/SecureUML.bgf
	_dev/format tank metamodels/SecureUML metamodels/SecureUML
	cp ../slps/topics/grammars/metamodels/SeminarSchedulingSystem/grammar.bgf tank/metamodels/SeminarSchedulingSystem.bgf
	_dev/format tank metamodels/SeminarSchedulingSystem metamodels/SeminarSchedulingSystem
	cp ../slps/topics/grammars/metamodels/Sharengo/grammar.bgf tank/metamodels/Sharengo.bgf
	_dev/format tank metamodels/Sharengo metamodels/Sharengo
	cp ../slps/topics/grammars/metamodels/sigkdd.owl/grammar.bgf tank/metamodels/sigkdd.owl.bgf
	_dev/format tank metamodels/sigkdd.owl metamodels/sigkdd.owl
	cp ../slps/topics/grammars/metamodels/SignalFlow/grammar.bgf tank/metamodels/SignalFlow.bgf
	_dev/format tank metamodels/SignalFlow metamodels/SignalFlow
	cp ../slps/topics/grammars/metamodels/SimpleAirlineDomain/grammar.bgf tank/metamodels/SimpleAirlineDomain.bgf
	_dev/format tank metamodels/SimpleAirlineDomain metamodels/SimpleAirlineDomain
	cp ../slps/topics/grammars/metamodels/useCase/grammar.bgf tank/metamodels/useCase.bgf
	_dev/format tank metamodels/useCase metamodels/useCase
	cp ../slps/topics/grammars/metamodels/WSLink/grammar.bgf tank/metamodels/WSLink.bgf
	_dev/format tank metamodels/WSLink metamodels/WSLink
	cp ../slps/topics/grammars/metamodels/WTIP_SimpleClass/grammar.bgf tank/metamodels/WTIP_SimpleClass.bgf
	_dev/format tank metamodels/WTIP_SimpleClass metamodels/WTIP_SimpleClass
	cp ../slps/topics/grammars/metamodels/QVT_SimpleRDBMS/grammar.bgf tank/metamodels/QVT_SimpleRDBMS.bgf
	_dev/format tank metamodels/QVT_SimpleRDBMS metamodels/QVT_SimpleRDBMS
	cp ../slps/topics/grammars/metamodels/WTIP_SimpleRDBMS/grammar.bgf tank/metamodels/WTIP_SimpleRDBMS.bgf
	_dev/format tank metamodels/WTIP_SimpleRDBMS metamodels/WTIP_SimpleRDBMS
	cp ../slps/topics/grammars/metamodels/SimpleSBVR/grammar.bgf tank/metamodels/SimpleSBVR.bgf
	_dev/format tank metamodels/SimpleSBVR metamodels/SimpleSBVR
	cp ../slps/topics/grammars/metamodels/SimulinkStateFlow/grammar.bgf tank/metamodels/SimulinkStateFlow.bgf
	_dev/format tank metamodels/SimulinkStateFlow metamodels/SimulinkStateFlow
	cp ../slps/topics/grammars/metamodels/Conference.owl/grammar.bgf tank/metamodels/Conference.owl.bgf
	_dev/format tank metamodels/Conference.owl metamodels/Conference.owl
	cp ../slps/topics/grammars/metamodels/SoftwareQualityControl/grammar.bgf tank/metamodels/SoftwareQualityControl.bgf
	_dev/format tank metamodels/SoftwareQualityControl metamodels/SoftwareQualityControl
	cp ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLBasicDef/grammar.bgf tank/metamodels/MSOfficeExcel_SpreadsheetMLBasicDef.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLBasicDef metamodels/MSOfficeExcel_SpreadsheetMLBasicDef
	cp ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup/grammar.bgf tank/metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup
	cp ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLSimplified/grammar.bgf tank/metamodels/MSOfficeExcel_SpreadsheetMLSimplified.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLSimplified metamodels/MSOfficeExcel_SpreadsheetMLSimplified
	cp ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLStyles/grammar.bgf tank/metamodels/MSOfficeExcel_SpreadsheetMLStyles.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLStyles metamodels/MSOfficeExcel_SpreadsheetMLStyles
	cp ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp/grammar.bgf tank/metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp
	cp ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt/grammar.bgf tank/metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt
	cp ../slps/topics/grammars/metamodels/SyncCharts/grammar.bgf tank/metamodels/SyncCharts.bgf
	_dev/format tank metamodels/SyncCharts metamodels/SyncCharts
	cp ../slps/topics/grammars/metamodels/SysML/grammar.bgf tank/metamodels/SysML.bgf
	_dev/format tank metamodels/SysML metamodels/SysML
	cp ../slps/topics/grammars/metamodels/SDM/grammar.bgf tank/metamodels/SDM.bgf
	_dev/format tank metamodels/SDM metamodels/SDM
	cp ../slps/topics/grammars/metamodels/DeploymentReport/grammar.bgf tank/metamodels/DeploymentReport.bgf
	_dev/format tank metamodels/DeploymentReport metamodels/DeploymentReport
	cp ../slps/topics/grammars/metamodels/Table/grammar.bgf tank/metamodels/Table.bgf
	_dev/format tank metamodels/Table metamodels/Table
	cp ../slps/topics/grammars/metamodels/TextualPathExp/grammar.bgf tank/metamodels/TextualPathExp.bgf
	_dev/format tank metamodels/TextualPathExp metamodels/TextualPathExp
	cp ../slps/topics/grammars/metamodels/Trace/grammar.bgf tank/metamodels/Trace.bgf
	_dev/format tank metamodels/Trace metamodels/Trace
	cp ../slps/topics/grammars/metamodels/UDDI_meta-model_fragment/grammar.bgf tank/metamodels/UDDI_meta-model_fragment.bgf
	_dev/format tank metamodels/UDDI_meta-model_fragment metamodels/UDDI_meta-model_fragment
	cp ../slps/topics/grammars/metamodels/UEML/grammar.bgf tank/metamodels/UEML.bgf
	_dev/format tank metamodels/UEML metamodels/UEML
	cp ../slps/topics/grammars/metamodels/UEMLExtended/grammar.bgf tank/metamodels/UEMLExtended.bgf
	_dev/format tank metamodels/UEMLExtended metamodels/UEMLExtended
	cp ../slps/topics/grammars/metamodels/UEMLExtensionCapturingAgents/grammar.bgf tank/metamodels/UEMLExtensionCapturingAgents.bgf
	_dev/format tank metamodels/UEMLExtensionCapturingAgents metamodels/UEMLExtensionCapturingAgents
	cp ../slps/topics/grammars/metamodels/UEMLExtensionCapturingSocialEffects/grammar.bgf tank/metamodels/UEMLExtensionCapturingSocialEffects.bgf
	_dev/format tank metamodels/UEMLExtensionCapturingSocialEffects metamodels/UEMLExtensionCapturingSocialEffects
	cp ../slps/topics/grammars/metamodels/UEMLExtensionDynamicAspects/grammar.bgf tank/metamodels/UEMLExtensionDynamicAspects.bgf
	_dev/format tank metamodels/UEMLExtensionDynamicAspects metamodels/UEMLExtensionDynamicAspects
	cp ../slps/topics/grammars/metamodels/UEMLExtensionModelingAspects/grammar.bgf tank/metamodels/UEMLExtensionModelingAspects.bgf
	_dev/format tank metamodels/UEMLExtensionModelingAspects metamodels/UEMLExtensionModelingAspects
	cp ../slps/topics/grammars/metamodels/UIML-3.0/grammar.bgf tank/metamodels/UIML-3.0.bgf
	_dev/format tank metamodels/UIML-3.0 metamodels/UIML-3.0
	cp ../slps/topics/grammars/metamodels/USECASE1/grammar.bgf tank/metamodels/USECASE1.bgf
	_dev/format tank metamodels/USECASE1 metamodels/USECASE1
	cp ../slps/topics/grammars/metamodels/USECASE2/grammar.bgf tank/metamodels/USECASE2.bgf
	_dev/format tank metamodels/USECASE2 metamodels/USECASE2
	cp ../slps/topics/grammars/metamodels/UnifiedOntologyLanguage/grammar.bgf tank/metamodels/UnifiedOntologyLanguage.bgf
	_dev/format tank metamodels/UnifiedOntologyLanguage metamodels/UnifiedOntologyLanguage
	cp ../slps/topics/grammars/metamodels/UnixFS/grammar.bgf tank/metamodels/UnixFS.bgf
	_dev/format tank metamodels/UnixFS metamodels/UnixFS
	cp ../slps/topics/grammars/metamodels/UsiXML-task/grammar.bgf tank/metamodels/UsiXML-task.bgf
	_dev/format tank metamodels/UsiXML-task metamodels/UsiXML-task
	cp ../slps/topics/grammars/metamodels/WSDL/grammar.bgf tank/metamodels/WSDL.bgf
	_dev/format tank metamodels/WSDL metamodels/WSDL
	cp ../slps/topics/grammars/metamodels/WebApplications_AbstractModel/grammar.bgf tank/metamodels/WebApplications_AbstractModel.bgf
	_dev/format tank metamodels/WebApplications_AbstractModel metamodels/WebApplications_AbstractModel
	cp ../slps/topics/grammars/metamodels/WebApplications_ConceptualModel/grammar.bgf tank/metamodels/WebApplications_ConceptualModel.bgf
	_dev/format tank metamodels/WebApplications_ConceptualModel metamodels/WebApplications_ConceptualModel
	cp ../slps/topics/grammars/metamodels/WfMC/grammar.bgf tank/metamodels/WfMC.bgf
	_dev/format tank metamodels/WfMC metamodels/WfMC
	cp ../slps/topics/grammars/metamodels/WikiTable/grammar.bgf tank/metamodels/WikiTable.bgf
	_dev/format tank metamodels/WikiTable metamodels/WikiTable
	cp ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLBasicDef/grammar.bgf tank/metamodels/MSOfficeWord_WordprocessingMLBasicDef.bgf
	_dev/format tank metamodels/MSOfficeWord_WordprocessingMLBasicDef metamodels/MSOfficeWord_WordprocessingMLBasicDef
	cp ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLSimplified/grammar.bgf tank/metamodels/MSOfficeWord_WordprocessingMLSimplified.bgf
	_dev/format tank metamodels/MSOfficeWord_WordprocessingMLSimplified metamodels/MSOfficeWord_WordprocessingMLSimplified
	cp ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLStyles/grammar.bgf tank/metamodels/MSOfficeWord_WordprocessingMLStyles.bgf
	_dev/format tank metamodels/MSOfficeWord_WordprocessingMLStyles metamodels/MSOfficeWord_WordprocessingMLStyles
	cp ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLTableElts/grammar.bgf tank/metamodels/MSOfficeWord_WordprocessingMLTableElts.bgf
	_dev/format tank metamodels/MSOfficeWord_WordprocessingMLTableElts metamodels/MSOfficeWord_WordprocessingMLTableElts
	cp ../slps/topics/grammars/metamodels/WorkDefinitions/grammar.bgf tank/metamodels/WorkDefinitions.bgf
	_dev/format tank metamodels/WorkDefinitions metamodels/WorkDefinitions
	cp ../slps/topics/grammars/metamodels/XAML-Perspective/grammar.bgf tank/metamodels/XAML-Perspective.bgf
	_dev/format tank metamodels/XAML-Perspective metamodels/XAML-Perspective
	cp ../slps/topics/grammars/metamodels/XAML-ResourceDictionary/grammar.bgf tank/metamodels/XAML-ResourceDictionary.bgf
	_dev/format tank metamodels/XAML-ResourceDictionary metamodels/XAML-ResourceDictionary
	cp ../slps/topics/grammars/metamodels/ASM/grammar.bgf tank/metamodels/ASM.bgf
	_dev/format tank metamodels/ASM metamodels/ASM
	cp ../slps/topics/grammars/metamodels/XPDL-1.14/grammar.bgf tank/metamodels/XPDL-1.14.bgf
	_dev/format tank metamodels/XPDL-1.14 metamodels/XPDL-1.14
	cp ../slps/topics/grammars/metamodels/XQuery/grammar.bgf tank/metamodels/XQuery.bgf
	_dev/format tank metamodels/XQuery metamodels/XQuery
	cp ../slps/topics/grammars/metamodels/XSLT/grammar.bgf tank/metamodels/XSLT.bgf
	_dev/format tank metamodels/XSLT metamodels/XSLT
	cp ../slps/topics/grammars/metamodels/XSchema/grammar.bgf tank/metamodels/XSchema.bgf
	_dev/format tank metamodels/XSchema metamodels/XSchema
	cp ../slps/topics/grammars/metamodels/XUL-Interactorl/grammar.bgf tank/metamodels/XUL-Interactorl.bgf
	_dev/format tank metamodels/XUL-Interactorl metamodels/XUL-Interactorl
	cp ../slps/topics/grammars/metamodels/bmmOmg/grammar.bgf tank/metamodels/bmmOmg.bgf
	_dev/format tank metamodels/bmmOmg metamodels/bmmOmg
	cp ../slps/topics/grammars/metamodels/MiningMart_SimplifiedMetamodel/grammar.bgf tank/metamodels/MiningMart_SimplifiedMetamodel.bgf
	_dev/format tank metamodels/MiningMart_SimplifiedMetamodel metamodels/MiningMart_SimplifiedMetamodel
	cp ../slps/topics/grammars/metamodels/MiningMart_ViewDataRepresentation/grammar.bgf tank/metamodels/MiningMart_ViewDataRepresentation.bgf
	_dev/format tank metamodels/MiningMart_ViewDataRepresentation metamodels/MiningMart_ViewDataRepresentation
	cp ../slps/topics/grammars/metamodels/ifc2x3/grammar.bgf tank/metamodels/ifc2x3.bgf
	_dev/format tank metamodels/ifc2x3 metamodels/ifc2x3
	cp ../slps/topics/grammars/metamodels/sbvrEclipse/grammar.bgf tank/metamodels/sbvrEclipse.bgf
	_dev/format tank metamodels/sbvrEclipse metamodels/sbvrEclipse
	cp ../slps/topics/grammars/metamodels/sbvrOMG/grammar.bgf tank/metamodels/sbvrOMG.bgf
	_dev/format tank metamodels/sbvrOMG metamodels/sbvrOMG
