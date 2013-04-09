@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSVisio_DatadiagramMLBasicDef

syntax DateTimeType
        = 
        ANY year ANY month ANY day ANY hour ANY minute ANY second
 ;
syntax CellType
        = 
        ANY unit ANY formula ANY err ANY value
 ;
syntax VisioDocument
        = 
        ANY start ANY key ANY metric ANY buildnum ANY version ANY docLangId ANY docProps ANY docSettings ANY docColors ANY docPrintSetup ANY docFonts ANY docFaceNames ANY docStyleSheets ANY docDocumentSheet ANY docMasters ANY docPages ANY docWindows ANY docEventList ANY docHeaderFooter ANY docVBProjectData ANY docEmailRoutingData ANY docSolutionXML+
 ;
syntax DocumentPropertiesCollection
        = 
        ANY dps_visioDocument ANY title ANY subject ANY creator ANY manager ANY company ANY category ANY keywords ANY description ANY hyperlinkBase_href ANY alternateNames ANY template ANY buildNumberCreated ANY buildNumberEdited ANY customProps ANY timeCreated ANY timeSaved ANY timeEdited ANY timePrinted
 ;
syntax CustomPropertiesCollection
        = 
        ANY cps_docProp ANY cps_customProps+
 ;
syntax CustomProperty
        = 
        ANY cp_customProps ANY name ANY dataType
 ;
syntax VBProjectData
        = 
        ANY vpd_visioDocument ANY data
 ;
syntax EmailRoutingData
        = 
        ANY erd_visioDocument ANY data ANY size
 ;
syntax StyleSheetsCollection
        = 
        ANY sss_visioDocument ANY stylesSheets+
 ;
syntax StyleSheet
        = 
        ss_stylesSheets: ANY
 ;
syntax DocumentSheet
        = 
        ds_visioDocument: ANY
 ;
syntax PageSheet
        = 
        ()
 ;
syntax NamedElt
        = 
        ()
 ;
syntax IdentifiedElt
        = 
        ()
 ;
syntax UniqueIdElt
        = 
        ()
 ;
syntax Shape
        = 
        ANY ss_shapes ANY lineStyle ANY fillStyle ANY textStyle ANY shapeElts+
 ;
syntax ShapeElt
        = 
        ()
 ;
syntax IXElt
        = 
        ()
 ;
syntax DelElt
        = 
        ()
 ;
syntax Geom
        = 
        ANY noFill ANY noLine ANY noShow ANY noSnap ANY linesTo+ ANY movesTo+ ANY arcsTo+ ANY splineKnots+ ANY polylinesTo+ ANY infiniteLines+ ANY ellipses+ ANY ellipticalArcsTo+ ANY splineStarts+ ANY nurbsTo+
 ;
syntax XYElt
        = 
        ()
 ;
syntax LineTo
        = 
        lt_geom: ANY
 ;
syntax MoveTo
        = 
        mt_geom: ANY
 ;
syntax XYAElt
        = 
        ()
 ;
syntax ArcTo
        = 
        ac_geom: ANY
 ;
syntax SplineKnot
        = 
        sk_geom: ANY
 ;
syntax PolylineTo
        = 
        pt_geom: ANY
 ;
syntax XYABElt
        = 
        ()
 ;
syntax InfiniteLine
        = 
        il_geom: ANY
 ;
syntax XYABCDElt
        = 
        ()
 ;
syntax Ellipse
        = 
        e_geom: ANY
 ;
syntax EllipticalArcTo
        = 
        eat_geom: ANY
 ;
syntax SplineStart
        = 
        ss_geom: ANY
 ;
syntax XYABCDEElt
        = 
        ()
 ;
syntax NURBSTo
        = 
        nt_geom: ANY
 ;
syntax Text
        = 
        ANY textElts+
 ;
syntax TextElt
        = 
        ()
 ;
syntax StringElt
        = 
        value: ANY
 ;
syntax MastersCollection
        = 
        ANY ms_visioDocument ANY masters+ ANY masterShortCuts+
 ;
syntax MasterShortCut
        = 
        ANY m_masterShortCuts ANY iconSize ANY patternFlags ANY prompt ANY shortcutURL ANY shortcutHelp ANY alignName ANY icons+
 ;
syntax Icon
        = 
        ANY i_masterShortCut ANY value
 ;
syntax Master
        = 
        ANY m_masters ANY baseID ANY matchByName ANY iconSize ANY patternFlags ANY prompt ANY hidden ANY iconUpdate ANY alignName ANY masterElts+
 ;
syntax ShapesCollection
        = 
        ANY shapes+
 ;
syntax ConnectsCollection
        = 
        ANY connections+
 ;
syntax Connect
        = 
        ANY c_connects ANY fromSheet ANY toSheet ANY fromCell ANY toCell ANY fromPart ANY toPart
 ;
syntax MasterElt
        = 
        ()
 ;
syntax PagesCollection
        = 
        ANY ps_visioDocument ANY pages+
 ;
syntax Page
        = 
        ANY p_pages ANY background ANY backPage ANY viewScale ANY viewCenterX ANY ViewCenterY ANY reviewerID ANY associatedPage ANY pageElts+
 ;
syntax PageElt
        = 
        ()
 ;
syntax DocumentSettingsElt
        = 
        dss_visioDocument: ANY
 ;
syntax ColorsTable
        = 
        cs_visioDocument: ANY
 ;
syntax PrintSetup
        = 
        ps_visioDocument: ANY
 ;
syntax FontsTable
        = 
        fs_visioDocument: ANY
 ;
syntax FaceNamesTable
        = 
        fns_visioDocument: ANY
 ;
syntax WindowsInfo
        = 
        ws_visioDocument: ANY
 ;
syntax EventList
        = 
        el_visioDocument: ANY
 ;
syntax HeaderFooter
        = 
        ef_visioDocument: ANY
 ;
syntax SolutionXML
        = 
        sx_visioDocument: ANY
 ;
