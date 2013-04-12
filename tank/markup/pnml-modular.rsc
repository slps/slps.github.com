@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pnml_modular

syntax IdedElement
        = Module
        | NetElement
        | Node
        | Arc
        | Page
        | Instance
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
syntax NCName
        = 
        value: String
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
        URI xmlns NetElement nets+ Module modules+
 ;
syntax Module
        = 
        Interface interfaces+ NetContent netcontents+ PNMLDocument document
 ;
syntax Interface
        = 
        Module module Node importplace+ Reference exportplace+ Node importtransition+ Reference exporttransition+
 ;
syntax NetElement
        = 
        URI type PNMLDocument document NetContent contents+ ToolSpecific tools+ NetGraphics netgraphics Name name
 ;
syntax NetContent
        = NetContentElement
        | Arc
        | Page
        | ReferencePlace
        | ReferenceTransition
        | Instance
 ;
syntax ToolSpecific
        = 
        String tool String version AnyElement anyelement+ NetElement net Arc arc Node node Page page
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
syntax Page
        = 
        NetContent contents+ ToolSpecific tools+ PageGraphics pagegraphics
 ;
syntax Reference
        = ReferencePlace
        | ReferenceTransition
 ;
syntax ReferencePlace
        = 
        NetElement net Name name Page page Module module Node instance NCName ref ImportNode importnode
 ;
syntax ReferenceTransition
        = 
        NetElement net Name name Page page Module module Node instance NCName ref ImportNode importnode
 ;
syntax Instance
        = 
        URI ref ImportNode importplace+ ImportNode importtransition+
 ;
syntax ImportNode
        = 
        NCName parameter Reference ref Instance instanceplace Instance instancetransition
 ;
syntax Node
        = Reference
        | NetContentElement netcontentelement ToolSpecific tools+ NodeGraphics nodegraphics
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
        | PageGraphics
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
syntax PageGraphics
        = 
        page: Page
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
