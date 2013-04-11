@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PNML_basic

syntax IdedElement
        = NetElement
        | Node
        | Arc
 ;
syntax URI
        = 
        value: String
 ;
syntax Color
        = 
        ()
 ;
syntax AnyElement
        = 
        String name String text
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
        URI xmlns NetElement nets+
 ;
syntax NetElement
        = 
        URI type PNMLDocument document NetContent contents+ ToolSpecific tools+ NetGraphics netgraphics Name name
 ;
syntax NetContent
        = NetContentElement
        | Arc
 ;
syntax ToolSpecific
        = 
        String tool String version AnyElement anyelement+ NetElement net Arc arc Node node
 ;
syntax LabeledElement
        = Name
        | Inscription
        | InitialMarking
 ;
syntax Label
        = 
        String text LabeledElement namedelement
 ;
syntax Name
        = 
        NetElement net NetContent netcontent
 ;
syntax Inscription
        = 
        arc: Arc
 ;
syntax InitialMarking
        = 
        place: Place
 ;
syntax NetContentElement
        = Place
        | Transition
 ;
syntax Arc
        = 
        NetContentElement source NetContentElement target ToolSpecific tools+ EdgeGraphics edgegraphics Inscription inscription
 ;
syntax Node
        = 
        NetContentElement netcontentelement ToolSpecific tools+ NodeGraphics nodegraphics
 ;
syntax Place
        = 
        initialmarking: InitialMarking
 ;
syntax Transition
        = 
        node: Node
 ;
syntax Graphics
        = NetGraphics
        | NodeGraphics
        | EdgeGraphics
        | AnnotationGraphics
 ;
syntax NetGraphics
        = 
        net: NetElement
 ;
syntax NodeGraphics
        = 
        Node node Position position Dimension dimension Fill fill Line line
 ;
syntax EdgeGraphics
        = 
        Arc arc Position position+ Fill fill Line line
 ;
syntax AnnotationGraphics
        = 
        LabeledElement namedelement Offset offset Font font Fill fill Line line
 ;
syntax Coordinate
        = Position
        | Offset
 ;
syntax Position
        = 
        NodeGraphics nodegraphics EdgeGraphics edgegraphics
 ;
syntax Offset
        = 
        annotationgraphics: AnnotationGraphics
 ;
syntax Dimension
        = 
        Integer width Integer height NodeGraphics nodegraphics
 ;
syntax Fill
        = 
        RotationType gradientrotation Color interiorcolor Color gradientcolor URI image NodeGraphics nodegraphics EdgeGraphics edgegraphics AnnotationGraphics annotationgraphics
 ;
syntax Line
        = 
        Color color Integer width ShapeType shape StyleType style NodeGraphics nodegraphics EdgeGraphics edgegraphics AnnotationGraphics annotationgraphics
 ;
syntax Font
        = 
        String family String style String weight String size DecorationType decoration AlignType align Integer rotation AnnotationGraphics annotationgraphics
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
