@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSVisio_DatadiagramMLBasicDef

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        = MasterShortCut
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
 ;
syntax IXElt
        = 
        XYElt
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
        = 
        StringElt
 ;
syntax StringElt
        = 
        value: String
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
syntax ColorsTable
        = 
        cs_visioDocument: VisioDocument
 ;
syntax PrintSetup
        = 
        ps_visioDocument: VisioDocument
 ;
syntax FontsTable
        = 
        fs_visioDocument: VisioDocument
 ;
syntax FaceNamesTable
        = 
        fns_visioDocument: VisioDocument
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
