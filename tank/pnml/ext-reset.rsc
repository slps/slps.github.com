@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Ext_reset

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Arc_labels
        = ArcType
        | PTArcAnnotation?
        | ()
 ;
syntax Nettype_uri
        = type: "http://www.pnml.org/version-2009/grammar/ptnet"
        | type: "http://www.pnml.org/version-2009/grammar/pnmlcoremodel"
 ;
syntax PTMarking
        = 
        initialMarking: Nonnegativeintegerlabel_content
 ;
syntax PTArcAnnotation
        = 
        inscription: Positiveintegerlabel_content
 ;
syntax Place_labels
        = PTMarking?
        | ()
 ;
syntax Nonnegativeintegerlabel_content
        = 
        Integer text Annotationstandard_content
 ;
syntax Positiveintegerlabel_content
        = 
        Integer text Annotationstandard_content
 ;
syntax Pnml_element
        = 
        pnml: Pnml_content+
 ;
syntax Pnml_content
        = 
        Net_element
 ;
syntax Net_element
        = 
        net: Identifier_content Nettype_uri Name? Net_labels Page_content+ Toolspecific_element*
 ;
syntax Identifier_content
        = 
        id: String
 ;
syntax Net_labels
        = 
        ()
 ;
syntax Basicobject_content
        = 
        Name? Toolspecific_element*
 ;
syntax Page_content
        = 
        page: Identifier_content Basicobject_content Page_labels Netobject_content* Pagegraphics_content graphics?
 ;
syntax Netobject_content
        = Page_content
        | Place_content
        | Transition_content
        | Refplace_content
        | Reftrans_content
        | Arc_content
 ;
syntax Page_labels
        = 
        ()
 ;
syntax Place_content
        = 
        place: Identifier_content Basicobject_content Place_labels Node_content
 ;
syntax Transition_content
        = 
        transition: Identifier_content Basicobject_content Transition_labels Node_content
 ;
syntax Transition_labels
        = 
        ()
 ;
syntax Node_content
        = 
        Nodegraphics_content graphics?
 ;
syntax Reference
        = 
        ref: String
 ;
syntax Refplace_content
        = 
        referencePlace: Refnode_content
 ;
syntax Reftrans_content
        = 
        referenceTransition: Refnode_content
 ;
syntax Refnode_content
        = 
        Identifier_content Reference Basicobject_content Node_content
 ;
syntax Arc_content
        = 
        arc: Identifier_content String source String target Name? Arc_labels Edgegraphics_content graphics? Toolspecific_element*
 ;
syntax Pagegraphics_content
        = 
        Nodegraphics_content
 ;
syntax Nodegraphics_content
        = 
        Position_element Dimension_element? Fill_element? Line_element?
 ;
syntax Edgegraphics_content
        = 
        Position_element* Line_element?
 ;
syntax Simpletext_content
        = 
        String text?
 ;
syntax Annotationstandard_content
        = 
        Annotationgraphics_content graphics? Toolspecific_element*
 ;
syntax Simpletextlabel_content
        = 
        Simpletext_content Annotationstandard_content
 ;
syntax Name
        = 
        name: Simpletextlabel_content
 ;
syntax Annotationgraphics_content
        = 
        Offset_element Fill_element? Line_element? Font_element?
 ;
syntax Position_element
        = 
        position: Coordinate_attributes
 ;
syntax Offset_element
        = 
        offset: Coordinate_attributes
 ;
syntax Coordinate_attributes
        = 
        Integer x Integer y
 ;
syntax Dimension_element
        = 
        dimension: PositiveDecimal_content x PositiveDecimal_content y
 ;
syntax PositiveDecimal_content
        = 
        Integer
 ;
syntax Fill_element
        = 
        fill: Color_type color? Color_type gradient-color? ("vertical" | "horizontal" | "diagonal") gradient-rotation? String image?
 ;
syntax Line_element
        = 
        line: ("line" | "curve") shape? Color_type color? PositiveDecimal_content width? ("solid" | "dash" | "dot") style?
 ;
syntax Color_type
        = 
        String
 ;
syntax Font_element
        = 
        font: String family? String style? String weight? String size? ("underline" | "overline" | "line-through") decoration? ("left" | "center" | "right") align? Integer rotation?
 ;
syntax Toolspecific_element
        = 
        toolspecific: String tool String version AnyElement*
 ;
syntax AnyElement
        = 
        (ANY | String | AnyElement)*
 ;
syntax Specialarc_value
        = "normal"
        | "inhibitor"
        | "read"
        | "reset"
 ;
syntax ArcType
        = 
        arctype: Specialarc_value
 ;

public void main()
{
	registerLanguage("Ext_reset", "ext", pnml.element(str input, loc org) {return parse(#pnml.element, input, org);});
	println("Language registered.");
}
