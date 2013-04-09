@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PNML_structured

syntax IdedElement
        = 
        ()
 ;
syntax URI
        = 
        value: ANY
 ;
syntax Color
        = 
        ()
 ;
syntax AnyElement
        = 
        ANY name ANY text
 ;
syntax RotationType
        = rtvertical: ()
        | rthorizontal: ()
        | rtdiagonal: ()
 ;
syntax ShapeType
        = shtline: ()
        | shtcurve: ()
 ;
syntax StyleType
        = sttsolid: ()
        | sttdash: ()
        | sttdot: ()
 ;
syntax DecorationType
        = dtunderligne: ()
        | dtoverligne: ()
        | dtlinethrough: ()
 ;
syntax AlignType
        = atleft: ()
        | atcenter: ()
        | atright: ()
 ;
syntax PNMLDocument
        = 
        ANY xmlns ANY nets+
 ;
syntax NetElement
        = 
        ANY type ANY document ANY contents+ ANY tools+ ANY netgraphics ANY name
 ;
syntax NetContent
        = 
        ()
 ;
syntax ToolSpecific
        = 
        ANY tool ANY version ANY anyelement+ ANY net ANY arc ANY node ANY page
 ;
syntax LabeledElement
        = 
        ()
 ;
syntax Label
        = 
        ANY text ANY namedelement
 ;
syntax Name
        = 
        ANY net ANY netcontent
 ;
syntax Inscription
        = 
        arc: ANY
 ;
syntax InitialMarking
        = 
        place: ANY
 ;
syntax NetContentElement
        = 
        ()
 ;
syntax Arc
        = 
        ANY source ANY target ANY tools+ ANY edgegraphics ANY inscription
 ;
syntax Page
        = 
        ANY contents+ ANY tools+ ANY pagegraphics
 ;
syntax Reference
        = 
        ()
 ;
syntax ReferencePlace
        = 
        ()
 ;
syntax ReferenceTransition
        = 
        ()
 ;
syntax Node
        = 
        ANY netcontentelement ANY tools+ ANY nodegraphics
 ;
syntax Place
        = 
        initialmarking: ANY
 ;
syntax Transition
        = 
        ANY node
 ;
syntax Graphics
        = 
        ()
 ;
syntax NetGraphics
        = 
        net: ANY
 ;
syntax NodeGraphics
        = 
        ANY node ANY position ANY dimension ANY fill ANY line
 ;
syntax EdgeGraphics
        = 
        ANY arc ANY position+ ANY fill ANY line
 ;
syntax AnnotationGraphics
        = 
        ANY namedelement ANY offset ANY font ANY fill ANY line
 ;
syntax PageGraphics
        = 
        page: ANY
 ;
syntax Coordinate
        = 
        ()
 ;
syntax Position
        = 
        ANY nodegraphics ANY edgegraphics
 ;
syntax Offset
        = 
        annotationgraphics: ANY
 ;
syntax Dimension
        = 
        ANY width ANY height ANY nodegraphics
 ;
syntax Fill
        = 
        ANY gradientrotation ANY interiorcolor ANY gradientcolor ANY image ANY nodegraphics ANY edgegraphics ANY annotationgraphics
 ;
syntax Line
        = 
        ANY color ANY width ANY shape ANY style ANY nodegraphics ANY edgegraphics ANY annotationgraphics
 ;
syntax Font
        = 
        ANY family ANY style ANY weight ANY size ANY decoration ANY align ANY rotation ANY annotationgraphics
 ;
