@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSVisio_DatadiagramMLSimplified

syntax CellType
        = 
        String unit String formula String err String value
 ;
syntax VisioDocument
        = 
        MastersCollection docMasters PagesCollection docPages
 ;
syntax PageSheet
        = 
        ShapesCollection ss_shapes Integer lineStyle Integer fillStyle Integer textStyle ShapeElt shapeElts+
 ;
syntax NamedElt
        = MasterShortCut
        | Page
 ;
syntax IdentifiedElt
        = MasterShortCut
        | Master
        | Page
 ;
syntax Shape
        = PageSheet
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
