@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSVisio_DatadiagramMLTextFormat

syntax DateTimeType
        = 
        Integer year Integer month Integer day Integer hour Integer minute Integer second
 ;
syntax CellType
        = 
        String unit String formula String err String value
 ;
syntax VisioDocument
        = 
        Integer start String key Boolean metric Integer buildnum String version Integer docLangId DocumentPropertiesCollection docProps DocumentSettingsElt docSettings ColorsTable docColors PrintSetup docPrintSetup FontsTable docFonts FaceNamesTable docFaceNames StyleSheetsCollection docStyleSheets DocumentSheet docDocumentSheet MastersCollection docMasters PagesCollection docPages WindowsInfo docWindows EventList docEventList HeaderFooter docHeaderFooter VBProjectData docVBProjectData EmailRoutingData docEmailRoutingData SolutionXML docSolutionXML+
 ;
syntax DocumentPropertiesCollection
        = 
        VisioDocument dps_visioDocument String title String subject String creator String manager String company String category String keywords String description String hyperlinkBase_href String alternateNames String template String buildNumberCreated String buildNumberEdited CustomPropertiesCollection customProps DateTimeType timeCreated DateTimeType timeSaved DateTimeType timeEdited DateTimeType timePrinted
 ;
syntax CustomPropertiesCollection
        = 
        DocumentPropertiesCollection cps_docProp CustomProperty cps_customProps+
 ;
syntax CustomProperty
        = 
        CustomPropertiesCollection cp_customProps String name String dataType
 ;
syntax ColorsTable
        = 
        VisioDocument cs_visioDocument ColorEntry colorEntries+
 ;
syntax ColorEntry
        = 
        ColorsTable ce_colors String rgb
 ;
syntax FontsTable
        = 
        VisioDocument fs_visioDocument FontEntry fontEntries+
 ;
syntax FontEntry
        = 
        FontsTable fe_fonts String name String charSet String pitchAndFamily Integer attributes Integer weight Boolean unicode
 ;
syntax FaceNamesTable
        = 
        VisioDocument fns_visioDocument FaceName faceNameEntries+
 ;
syntax FaceName
        = 
        FaceNamesTable fn_faceNames String name String unicodeRanges String charSet String panos Integer flags
 ;
syntax VBProjectData
        = 
        VisioDocument vpd_visioDocument String data
 ;
syntax EmailRoutingData
        = 
        VisioDocument erd_visioDocument String data Integer size
 ;
syntax StyleSheetsCollection
        = 
        VisioDocument sss_visioDocument StyleSheet stylesSheets+
 ;
syntax StyleSheet
        = 
        ss_stylesSheets: StyleSheetsCollection
 ;
syntax DocumentSheet
        = 
        ds_visioDocument: VisioDocument
 ;
syntax PageSheet
        = DocumentSheet
        | ShapesCollection ss_shapes Integer lineStyle Integer fillStyle Integer textStyle ShapeElt shapeElts+
 ;
syntax NamedElt
        = DocumentSheet
        | MasterShortCut
        | Page
 ;
syntax IdentifiedElt
        = FontEntry
        | FaceName
        | MasterShortCut
        | Master
        | Page
 ;
syntax Shape
        = StyleSheet
        | PageSheet
        | ShapesCollection ss_shapes Integer lineStyle Integer fillStyle Integer textStyle ShapeElt shapeElts+
 ;
syntax ShapeElt
        = Text
        | Geom
        | Char
        | Para
        | TabsCollection
        | Field
 ;
syntax IXElt
        = Tab
        | XYElt
 ;
syntax DelElt
        = 
        XYElt
 ;
syntax Geom
        = 
        CellType noFill CellType noLine CellType noShow CellType noSnap LineTo linesTo+ MoveTo movesTo+ ArcTo arcsTo+ SplineKnot splineKnots+ PolylineTo polylinesTo+ InfiniteLine infiniteLines+ Ellipse ellipses+ EllipticalArcTo ellipticalArcsTo+ SplineStart splineStarts+ NURBSTo nurbsTo+
 ;
syntax XYElt
        = LineTo
        | MoveTo
        | XYAElt
 ;
syntax LineTo
        = 
        lt_geom: Geom
 ;
syntax MoveTo
        = 
        mt_geom: Geom
 ;
syntax XYAElt
        = ArcTo
        | SplineKnot
        | PolylineTo
        | XYABElt
 ;
syntax ArcTo
        = 
        ac_geom: Geom
 ;
syntax SplineKnot
        = 
        sk_geom: Geom
 ;
syntax PolylineTo
        = 
        pt_geom: Geom
 ;
syntax XYABElt
        = InfiniteLine
        | XYABCDElt
 ;
syntax InfiniteLine
        = 
        il_geom: Geom
 ;
syntax XYABCDElt
        = Ellipse
        | EllipticalArcTo
        | SplineStart
        | XYABCDEElt
 ;
syntax Ellipse
        = 
        e_geom: Geom
 ;
syntax EllipticalArcTo
        = 
        eat_geom: Geom
 ;
syntax SplineStart
        = 
        ss_geom: Geom
 ;
syntax XYABCDEElt
        = 
        NURBSTo
 ;
syntax NURBSTo
        = 
        nt_geom: Geom
 ;
syntax Text
        = 
        TextElt textElts+
 ;
syntax TextElt
        = StringElt
        | Cp
        | Pp
        | Tp
        | Fld
 ;
syntax IXrequiredElt
        = ColorEntry
        | Cp
        | Pp
        | Tp
        | Fld
 ;
syntax Cp
        = 
        Integer iX Text te_text
 ;
syntax Pp
        = 
        Integer iX Text te_text
 ;
syntax Tp
        = 
        Integer iX Text te_text
 ;
syntax Fld
        = 
        Integer iX Text te_text
 ;
syntax StringElt
        = 
        value: String
 ;
syntax Char
        = 
        CellType font CellType color CellType style CellType case CellType pos CellType fontScale CellType size CellType dblUnderline CellType overline CellType strikethru CellType doubleStrikethrough CellType rtlText CellType runVertical CellType letterspace CellType colorTrans CellType localizeFont CellType langID
 ;
syntax Para
        = 
        CellType indFirst CellType indLeft CellType indRight CellType spLine CellType spBefore CellType spAfter CellType horzAlign CellType bullet CellType bulletStr CellType bulletFont CellType localizeBulletFont CellType bulletFontSize CellType textPosAfterBullet CellType flags
 ;
syntax TabsCollection
        = 
        Tab tabs+
 ;
syntax Tab
        = 
        TabsCollection t_tabs CellType position CellType alignment
 ;
syntax Field
        = 
        CellType value CellType editMode CellType format CellType type CellType uiCat CellType uiCode CellType uiFmt CellType calendar CellType objectKind
 ;
syntax MastersCollection
        = 
        VisioDocument ms_visioDocument Master masters+ MasterShortCut masterShortCuts+
 ;
syntax MasterShortCut
        = 
        MastersCollection m_masterShortCuts Integer iconSize Integer patternFlags String prompt String shortcutURL String shortcutHelp Integer alignName Icon icons+
 ;
syntax Icon
        = 
        MasterShortCut i_masterShortCut String value
 ;
syntax Master
        = 
        MastersCollection m_masters String baseID Boolean matchByName Integer iconSize Integer patternFlags String prompt Boolean hidden Boolean iconUpdate Integer alignName MasterElt masterElts+
 ;
syntax ShapesCollection
        = 
        Shape shapes+
 ;
syntax ConnectsCollection
        = 
        Connect connections+
 ;
syntax Connect
        = 
        ConnectsCollection c_connects Integer fromSheet Integer toSheet String fromCell String toCell Integer fromPart Integer toPart
 ;
syntax MasterElt
        = Icon
        | ShapesCollection
        | ConnectsCollection
 ;
syntax PagesCollection
        = 
        VisioDocument ps_visioDocument Page pages+
 ;
syntax Page
        = 
        PagesCollection p_pages Boolean background Integer backPage Double viewScale Double viewCenterX Double ViewCenterY Integer reviewerID Integer associatedPage PageElt pageElts+
 ;
syntax PageElt
        = ShapesCollection
        | ConnectsCollection
 ;
syntax DocumentSettingsElt
        = 
        dss_visioDocument: VisioDocument
 ;
syntax PrintSetup
        = 
        ps_visioDocument: VisioDocument
 ;
syntax WindowsInfo
        = 
        ws_visioDocument: VisioDocument
 ;
syntax EventList
        = 
        el_visioDocument: VisioDocument
 ;
syntax HeaderFooter
        = 
        ef_visioDocument: VisioDocument
 ;
syntax SolutionXML
        = 
        sx_visioDocument: VisioDocument
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
