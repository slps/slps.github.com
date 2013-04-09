@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSVisio_DatadiagramMLSimplified

syntax CellType
        = 
        ANY unit ANY formula ANY err ANY value
 ;
syntax VisioDocument
        = 
        ANY docMasters ANY docPages
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
