@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Svg_furubayashi_tiny

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax SVG_Animation_extra_attrib
        = 
        ()
 ;
syntax SVG_Animation_attrib
        = 
        SVG_XLink_attrib SVG_Animation_extra_attrib
 ;
syntax SVG_AnimationAttribute_extra_attrib
        = 
        ()
 ;
syntax SVG_AnimationAttribute_attrib
        = 
        String attributeName String attributeType? SVG_AnimationAttribute_extra_attrib
 ;
syntax SVG_AnimationTiming_extra_attrib
        = 
        ()
 ;
syntax SVG_AnimationTiming_attrib
        = 
        String begin? String dur? String end? String min? String max? ("always" | "never" | "whenNotActive") restart? String repeatCount? String repeatDur? ("remove" | "freeze") fill? SVG_AnimationTiming_extra_attrib
 ;
syntax SVG_AnimationValue_extra_attrib
        = 
        ()
 ;
syntax SVG_AnimationValue_attrib
        = 
        ("discrete" | "linear" | "paced" | "spline") calcMode? String values? String keyTimes? String keySplines? String from? String to? String by? SVG_AnimationValue_extra_attrib
 ;
syntax SVG_AnimationAddition_extra_attrib
        = 
        ()
 ;
syntax SVG_AnimationAddtion_attrib
        = 
        ("replace" | "sum") additive? ("none" | "sum") accumulate? SVG_AnimationAddition_extra_attrib
 ;
syntax SVG_Animation_extra_class
        = 
        ()
 ;
syntax SVG_Animation_class
        = SVG_animate
        | SVG_set
        | SVG_animateMotion
        | SVG_animateColor
        | SVG_animateTransform
        | SVG_Animation_extra_class
 ;
syntax SVG_animate
        = 
        animate: SVG_Description_class* SVG_Core_attrib SVG_Conditional_attrib SVG_AnimationEvents_attrib SVG_External_attrib SVG_Animation_attrib SVG_AnimationAttribute_attrib SVG_AnimationTiming_attrib SVG_AnimationValue_attrib SVG_AnimationAddtion_attrib
 ;
syntax SVG_set
        = 
        set: SVG_Description_class* SVG_Core_attrib SVG_Conditional_attrib SVG_AnimationEvents_attrib SVG_External_attrib SVG_Animation_attrib SVG_AnimationAttribute_attrib SVG_AnimationTiming_attrib String to?
 ;
syntax SVG_animateMotion
        = 
        animateMotion: SVG_Description_class* SVG_mpath? SVG_Core_attrib SVG_Conditional_attrib SVG_AnimationEvents_attrib SVG_External_attrib SVG_Animation_attrib SVG_AnimationTiming_attrib SVG_AnimationAddtion_attrib ("discrete" | "linear" | "paced" | "spline") calcMode? String values? String keyTimes? String Splines? String from? String to? String by? String path? String keyPoints? String rotate? String origin?
 ;
syntax SVG_animateColor
        = 
        animateColor: SVG_Description_class* SVG_Core_attrib SVG_Conditional_attrib SVG_AnimationEvents_attrib SVG_External_attrib SVG_Animation_attrib SVG_AnimationAttribute_attrib SVG_AnimationTiming_attrib SVG_AnimationValue_attrib SVG_AnimationAddtion_attrib
 ;
syntax SVG_animateTransform
        = 
        animateTransform: SVG_Description_class* SVG_Core_attrib SVG_Conditional_attrib SVG_AnimationEvents_attrib SVG_External_attrib SVG_Animation_attrib SVG_AnimationAttribute_attrib SVG_AnimationTiming_attrib SVG_AnimationValue_attrib SVG_AnimationAddtion_attrib ("translate" | "scale" | "rotate" | "skewX" | "skewY") type?
 ;
syntax SVG_mpath
        = 
        mpath: SVG_Description_class* SVG_Core_attrib SVG_XLinkRequired_attrib SVG_External_attrib
 ;
syntax SVG_Font_extra_class
        = 
        ()
 ;
syntax SVG_Font_class
        = SVG_font
        | SVG_font_face
        | SVG_Font_extra_class
 ;
syntax SVG_font
        = 
        font: SVG_Description_class* SVG_font_face SVG_missing_glyph (SVG_glyph | SVG_hkern)* SVG_Core_attrib SVG_Style_attrib SVG_External_attrib SVG_Number_datatype horiz-origin-x? SVG_Number_datatype horiz-adv-x
 ;
syntax SVG_font_face
        = 
        font-face: SVG_Description_class* SVG_font_face_src? SVG_Core_attrib String font-family? String font-style? String font-variant? String font-weight? String font-stretch? String font-size? String unicode-range? SVG_Number_datatype units-per-em? String panose-1? SVG_Number_datatype stemv? SVG_Number_datatype stemh? SVG_Number_datatype slope? SVG_Number_datatype cap-height? SVG_Number_datatype x-height? SVG_Number_datatype accent-height? SVG_Number_datatype ascent? SVG_Number_datatype descent? String widths? String bbox? SVG_Number_datatype ideographic? SVG_Number_datatype alphabetic? SVG_Number_datatype mathematical? SVG_Number_datatype hanging? SVG_Number_datatype underline-position? SVG_Number_datatype underline-thickness? SVG_Number_datatype strikethrough-position? SVG_Number_datatype strikethrough-thickness? SVG_Number_datatype overline-position? SVG_Number_datatype overline-thickness?
 ;
syntax SVG_glyph
        = 
        glyph: SVG_Description_class* SVG_Core_attrib SVG_Style_attrib String unicode? String glyph-name? SVG_PathData_datatype d? String arabic-form? SVG_LanguageCodes_datatype lang? SVG_Number_datatype horiz-adv-x?
 ;
syntax SVG_missing_glyph
        = 
        missing-glyph: SVG_Description_class* SVG_Core_attrib SVG_Style_attrib SVG_PathData_datatype d? SVG_Number_datatype horiz-adv-x?
 ;
syntax SVG_hkern
        = 
        hkern: SVG_Core_attrib String u1? String g1? String u2? String g2? SVG_Number_datatype k
 ;
syntax SVG_font_face_src
        = 
        font-face-src: SVG_font_face_name+ SVG_Core_attrib
 ;
syntax SVG_font_face_name
        = 
        font-face-name: SVG_Core_attrib String name?
 ;
syntax SVG_display_attrib
        = 
        ("inline" | "block" | "list-item" | "run-in" | "compact" | "marker" | "table" | "inline-table" | "table-row-group" | "table-header-group" | "table-footer-group" | "table-row" | "table-column-group" | "table-column" | "table-cell" | "table-caption" | "none" | "inherit") display?
 ;
syntax SVG_visibility_attrib
        = 
        ("visible" | "hidden" | "inherit") visibility?
 ;
syntax SVG_Graphics_extra_attrib
        = 
        ()
 ;
syntax SVG_Graphics_attrib
        = SVG_display_attrib SVG_visibility_attrib SVG_Graphics_extra_attrib
        | ()
 ;
syntax SVG_Paint_datatype
        = 
        String
 ;
syntax SVG_StrokeDashArrayValue_datatype
        = 
        String
 ;
syntax SVG_StrokeDashOffsetValue_datatype
        = 
        String
 ;
syntax SVG_StrokeMiterLimitValue_datatype
        = 
        String
 ;
syntax SVG_StrokeWidthValue_datatype
        = 
        String
 ;
syntax SVG_fill_attrib
        = 
        SVG_Paint_datatype fill?
 ;
syntax SVG_fill_rule_attrib
        = 
        SVG_ClipFillRule_datatype fill-rule?
 ;
syntax SVG_stroke_attrib
        = 
        SVG_Paint_datatype stroke?
 ;
syntax SVG_stroke_dasharray_attrib
        = 
        SVG_StrokeDashArrayValue_datatype stroke-dasharray?
 ;
syntax SVG_stroke_dashoffset_attrib
        = 
        SVG_StrokeDashOffsetValue_datatype stroke-dashoffset?
 ;
syntax SVG_stroke_linecap_attrib
        = 
        ("butt" | "round" | "square" | "inherit") stroke-linecap?
 ;
syntax SVG_stroke_linejoin_attrib
        = 
        ("miter" | "round" | "bevel" | "inherit") stroke-linejoin?
 ;
syntax SVG_stroke_miterlimit_attrib
        = 
        SVG_StrokeMiterLimitValue_datatype stroke-miterlimit?
 ;
syntax SVG_stroke_width_attrib
        = 
        SVG_StrokeWidthValue_datatype stroke-width?
 ;
syntax SVG_Paint_extra_attrib
        = 
        ()
 ;
syntax SVG_Paint_attrib
        = SVG_fill_attrib SVG_fill_rule_attrib SVG_stroke_attrib SVG_stroke_dasharray_attrib SVG_stroke_dashoffset_attrib SVG_stroke_linecap_attrib SVG_stroke_linejoin_attrib SVG_stroke_miterlimit_attrib SVG_stroke_width_attrib SVG_Paint_extra_attrib
        | ()
 ;
syntax SVG_color_attrib
        = 
        SVG_Color_datatype color?
 ;
syntax SVG_color_rendering_attrib
        = 
        ("auto" | "optimizeSpeed" | "optimizeQuality" | "inherit") color-rendering?
 ;
syntax SVG_Color_extra_attrib
        = 
        ()
 ;
syntax SVG_Color_attrib
        = SVG_color_attrib SVG_color_rendering_attrib SVG_Color_extra_attrib
        | ()
 ;
syntax SVG_Description_extra_class
        = 
        ()
 ;
syntax SVG_Description_class
        = SVG_desc
        | SVG_title
        | SVG_metadata
        | SVG_Description_extra_class
 ;
syntax SVG_Use_extra_class
        = 
        ()
 ;
syntax SVG_Use_class
        = SVG_use
        | SVG_Use_extra_class
 ;
syntax SVG_Structure_extra_class
        = 
        ()
 ;
syntax SVG_Structure_class
        = SVG_g
        | SVG_defs
        | SVG_Use_class
        | SVG_Structure_extra_class
 ;
syntax SVG_svg
        = 
        svg: (SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_DocumentEvents_attrib SVG_GraphicalEvents_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width? SVG_Length_datatype height? SVG_ViewBoxSpec_datatype viewBox? SVG_PreserveAspectRatioSpec_datatype preserveAspectRatio? ("disable" | "magnify") zoomAndPan? SVG_Number_datatype version SVG_Text_datatype baseProfile?
 ;
syntax SVG_g
        = 
        g: (SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_GraphicalEvents_attrib SVG_External_attrib SVG_TransformList_datatype transform?
 ;
syntax SVG_defs
        = 
        defs: (SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_GraphicalEvents_attrib SVG_External_attrib SVG_TransformList_datatype transform?
 ;
syntax SVG_desc
        = 
        desc: String SVG_Core_attrib SVG_Style_attrib
 ;
syntax SVG_title
        = 
        title: String SVG_Core_attrib SVG_Style_attrib
 ;
syntax SVG_metadata
        = 
        metadata: String SVG_Core_attrib
 ;
syntax SVG_use
        = 
        use: SVG_Description_class* SVG_Animation_class* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_GraphicalEvents_attrib SVG_XLinkEmbed_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width? SVG_Length_datatype height? SVG_TransformList_datatype transform?
 ;
syntax SVG_FontFamilyValue_datatype
        = 
        String
 ;
syntax SVG_FontSizeValue_datatype
        = 
        String
 ;
syntax SVG_Text_extra_class
        = 
        ()
 ;
syntax SVG_Text_class
        = SVG_text
        | SVG_Text_extra_class
 ;
syntax SVG_TextContent_extra_attrib
        = 
        ()
 ;
syntax SVG_TextContent_attrib
        = ("start" | "middle" | "end" | "inherit") text-anchor? SVG_TextContent_extra_attrib
        | ()
 ;
syntax SVG_Font_extra_attrib
        = 
        ()
 ;
syntax SVG_Font_attrib
        = SVG_FontFamilyValue_datatype font-family? SVG_FontSizeValue_datatype font-size? ("normal" | "italic" | "oblique" | "inherit") font-style? ("normal" | "bold" | "bolder" | "lighter" | "100" | "200" | "300" | "400" | "500" | "600" | "700" | "800" | "900" | "inherit") font-weight? SVG_Font_extra_attrib
        | ()
 ;
syntax SVG_text
        = 
        text: (String | SVG_Description_class | SVG_Animation_class | SVG_Hyperlink_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_TextContent_attrib SVG_Font_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_External_attrib SVG_Coordinates_datatype x? SVG_Coordinates_datatype y? SVG_Numbers_datatype rotate? SVG_TransformList_datatype transform?
 ;
syntax SVG_ExtensionList_datatype
        = 
        String
 ;
syntax SVG_FeatureList_datatype
        = 
        String
 ;
syntax SVG_Conditional_extra_class
        = 
        ()
 ;
syntax SVG_Conditional_class
        = SVG_switch
        | SVG_Conditional_extra_class
 ;
syntax SVG_Conditional_extra_attrib
        = 
        ()
 ;
syntax SVG_Conditional_attrib
        = SVG_FeatureList_datatype requiredFeatures? SVG_ExtensionList_datatype requiredExtensions? SVG_LanguageCodes_datatype systemLanguage? SVG_Conditional_extra_attrib
        | ()
 ;
syntax SVG_switch
        = 
        switch: SVG_Description_class* (SVG_svg | SVG_g | SVG_use | SVG_text | SVG_Animation_class | SVG_Conditional_class | SVG_Image_class | SVG_Shape_class | SVG_Hyperlink_class | SVG_Extensibility_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_GraphicalEvents_attrib SVG_External_attrib SVG_TransformList_datatype transform?
 ;
syntax SVG_id_attrib
        = 
        SVG_ID_datatype id?
 ;
syntax SVG_base_attrib
        = 
        SVG_URI_datatype xml:base?
 ;
syntax SVG_lang_attrib
        = 
        SVG_LanguageCode_datatype xml:lang?
 ;
syntax SVG_space_attrib
        = 
        ("default" | "preserve") xml:space?
 ;
syntax SVG_Core_extra_attrib
        = 
        ()
 ;
syntax SVG_Core_attrib
        = SVG_id_attrib SVG_base_attrib SVG_lang_attrib SVG_space_attrib SVG_Core_extra_attrib
        | ()
 ;
syntax SVG_ID_datatype
        = 
        String
 ;
syntax SVG_Text_datatype
        = 
        String
 ;
syntax SVG_Length_datatype
        = 
        String
 ;
syntax SVG_Lengths_datatype
        = 
        String
 ;
syntax SVG_URI_datatype
        = 
        String
 ;
syntax SVG_PreserveAspectRatioSpec_datatype
        = 
        String
 ;
syntax SVG_OpacityValue_datatype
        = 
        String
 ;
syntax SVG_Integer_datatype
        = 
        Integer
 ;
syntax SVG_Coordinate_datatype
        = 
        String
 ;
syntax SVG_Coordinates_datatype
        = 
        String
 ;
syntax SVG_LanguageCode_datatype
        = 
        String
 ;
syntax SVG_LanguageCodes_datatype
        = 
        String
 ;
syntax SVG_Color_datatype
        = 
        String
 ;
syntax SVG_Script_datatype
        = 
        String
 ;
syntax SVG_ContentType_datatype
        = 
        String
 ;
syntax SVG_ViewBoxSpec_datatype
        = 
        String
 ;
syntax SVG_Boolean_datatype
        = 
        String
 ;
syntax SVG_Number_datatype
        = 
        Integer
 ;
syntax SVG_Numbers_datatype
        = 
        String
 ;
syntax SVG_ClipFillRule_datatype
        = 
        String
 ;
syntax SVG_SVGColor_datatype
        = 
        String
 ;
syntax SVG_TransformList_datatype
        = 
        String
 ;
syntax SVG_PathData_datatype
        = 
        String
 ;
syntax SVG_AnimationEvents_attrib
        = 
        ()
 ;
syntax SVG_Clip_attrib
        = 
        ()
 ;
syntax SVG_Container_attrib
        = 
        ()
 ;
syntax SVG_Cursor_attrib
        = 
        ()
 ;
syntax SVG_External_attrib
        = ()
        | SVG_externalResourcesRequired_attrib SVG_External_extra_attrib
 ;
syntax SVG_Filter_attrib
        = 
        ()
 ;
syntax SVG_FilterColor_attrib
        = 
        ()
 ;
syntax SVG_Gradient_attrib
        = 
        ()
 ;
syntax SVG_GraphicalEvents_attrib
        = 
        ()
 ;
syntax SVG_Marker_attrib
        = 
        ()
 ;
syntax SVG_Mask_attrib
        = 
        ()
 ;
syntax SVG_Opacity_attrib
        = 
        ()
 ;
syntax SVG_Profile_attrib
        = 
        ()
 ;
syntax SVG_Style_attrib
        = ()
        | SVG_StyleSheet_datatype style? SVG_ClassList_datatype class? SVG_Style_extra_attrib
 ;
syntax SVG_Text_attrib
        = 
        ()
 ;
syntax SVG_Viewport_attrib
        = 
        ()
 ;
syntax SVG_XLink_attrib
        = ()
        | "simple" xlink:type? SVG_URI_datatype xlink:href? SVG_URI_datatype xlink:role? SVG_URI_datatype xlink:arcrole? String xlink:title? "other" xlink:show? "onLoad" xlink:actuate? SVG_XLink_extra_attrib
 ;
syntax XLinkEmbed_attrib
        = 
        ()
 ;
syntax XLinkRequired_attrib
        = 
        ()
 ;
syntax SVG_Presentation_extra_attrib
        = 
        ()
 ;
syntax SVG_Presentation_attrib
        = 
        SVG_Container_attrib SVG_Viewport_attrib SVG_Text_attrib SVG_TextContent_attrib SVG_Font_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Marker_attrib SVG_Profile_attrib SVG_Gradient_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_FilterColor_attrib SVG_Cursor_attrib SVG_SVGColor_datatype flood-color? SVG_OpacityValue_datatype flood-opacity? SVG_SVGColor_datatype lighting-color? SVG_Presentation_extra_attrib
 ;
syntax SVG_Extensibility_extra_class
        = 
        ()
 ;
syntax SVG_Extensibility_class
        = SVG_foreignObject
        | SVG_Extensibility_extra_class
 ;
syntax SVG_foreignObject
        = 
        foreignObject: SVG_foreignObject_content SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_GraphicalEvents_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width SVG_Length_datatype height SVG_TransformList_datatype transform?
 ;
syntax SVG_foreignObject_content
        = 
        SVG_foreignObject_class*
 ;
syntax SVG_foreignObject_class
        = 
        String
 ;
syntax SVG_externalResourcesRequired_attrib
        = 
        SVG_Boolean_datatype externalResourcesRequired?
 ;
syntax SVG_External_extra_attrib
        = 
        ()
 ;
syntax SVG_LinkTarget_datatype
        = 
        String
 ;
syntax SVG_Hyperlink_extra_class
        = 
        ()
 ;
syntax SVG_Hyperlink_class
        = SVG_a
        | SVG_Hyperlink_extra_class
 ;
syntax SVG_a
        = 
        a: (String | SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_GraphicalEvents_attrib SVG_XLinkReplace_attrib SVG_External_attrib SVG_TransformList_datatype transform? SVG_LinkTarget_datatype target?
 ;
syntax SVG_Image_extra_class
        = 
        ()
 ;
syntax SVG_Image_class
        = SVG_image
        | SVG_Image_extra_class
 ;
syntax SVG_image
        = 
        image: SVG_Description_class* SVG_Animation_class* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Viewport_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Profile_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_XLinkEmbed_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width SVG_Length_datatype height SVG_PreserveAspectRatioSpec_datatype preserveAspectRatio? SVG_TransformList_datatype transform?
 ;
syntax SVG_Script_extra_class
        = 
        ()
 ;
syntax SVG_Script_class
        = SVG_script
        | SVG_Script_extra_class
 ;
syntax SVG_script
        = 
        script: String SVG_Core_attrib SVG_XLink_attrib SVG_External_attrib SVG_ContentType_datatype type
 ;
syntax SVG_Points_datatype
        = 
        String
 ;
syntax SVG_Shape_extra_class
        = 
        ()
 ;
syntax SVG_Shape_class
        = SVG_path
        | SVG_rect
        | SVG_circle
        | SVG_line
        | SVG_ellipse
        | SVG_polyline
        | SVG_polygon
        | SVG_Shape_extra_class
 ;
syntax SVG_path
        = 
        path: SVG_Description_class* SVG_Animation_class* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Marker_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_External_attrib SVG_PathData_datatype d SVG_Number_datatype pathLength? SVG_TransformList_datatype transform?
 ;
syntax SVG_rect
        = 
        rect: SVG_Description_class* SVG_Animation_class* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width SVG_Length_datatype height SVG_Length_datatype rx? SVG_Length_datatype ry? SVG_TransformList_datatype transform?
 ;
syntax SVG_circle
        = 
        circle: SVG_Description_class* SVG_Animation_class* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_External_attrib SVG_Coordinate_datatype cx? SVG_Coordinate_datatype cy? SVG_Length_datatype r SVG_TransformList_datatype transform?
 ;
syntax SVG_line
        = 
        line: SVG_Description_class* SVG_Animation_class* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Marker_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_External_attrib SVG_Coordinate_datatype x1? SVG_Coordinate_datatype y1? SVG_Coordinate_datatype x2? SVG_Coordinate_datatype y2? SVG_TransformList_datatype transform?
 ;
syntax SVG_ellipse
        = 
        ellipse: SVG_Description_class* SVG_Animation_class* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_External_attrib SVG_Coordinate_datatype cx? SVG_Coordinate_datatype cy? SVG_Length_datatype rx SVG_Length_datatype ry SVG_TransformList_datatype transform?
 ;
syntax SVG_polyline
        = 
        polyline: SVG_Description_class* SVG_Animation_class* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Marker_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_External_attrib SVG_Points_datatype points SVG_TransformList_datatype transform?
 ;
syntax SVG_polygon
        = 
        polygon: SVG_Description_class* SVG_Animation_class* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Marker_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_External_attrib SVG_Points_datatype points SVG_TransformList_datatype transform?
 ;
syntax SVG_ClassList_datatype
        = 
        String
 ;
syntax SVG_MediaDesc_datatype
        = 
        String
 ;
syntax SVG_StyleSheet_datatype
        = 
        String
 ;
syntax SVG_Style_extra_class
        = 
        ()
 ;
syntax SVG_Style_class
        = SVG_style
        | SVG_Style_extra_class
 ;
syntax SVG_Style_extra_attrib
        = 
        ()
 ;
syntax SVG_style
        = 
        style: String SVG_Core_attrib SVG_ContentType_datatype type SVG_MediaDesc_datatype media? SVG_Text_datatype title?
 ;
syntax SVG_Cursor_class
        = 
        ()
 ;
syntax SVG_Pattern_class
        = 
        ()
 ;
syntax SVG_Mask_class
        = 
        ()
 ;
syntax SVG_Marker_class
        = 
        ()
 ;
syntax SVG_Profile_class
        = 
        ()
 ;
syntax SVG_Gradient_class
        = 
        ()
 ;
syntax SVG_Filter_class
        = 
        ()
 ;
syntax SVG_Clip_class
        = 
        ()
 ;
syntax SVG_DocumentEvents_attrib
        = 
        ()
 ;
syntax SVG_View_extra_class
        = 
        ()
 ;
syntax SVG_View_class
        = SVG_view
        | SVG_View_extra_class
 ;
syntax SVG_view
        = 
        view: SVG_Description_class* SVG_Core_attrib SVG_External_attrib SVG_ViewBoxSpec_datatype viewBox? SVG_PreserveAspectRatioSpec_datatype preserveAspectRatio? ("disable" | "magnify") zoomAndPan? String viewTarget?
 ;
syntax SVG_XLink_extra_attrib
        = 
        ()
 ;
syntax SVG_XLinkRequired_extra_attrib
        = 
        ()
 ;
syntax SVG_XLinkRequired_attrib
        = 
        "simple" xlink:type? SVG_URI_datatype xlink:href SVG_URI_datatype xlink:role? SVG_URI_datatype xlink:arcrole? String xlink:title? "other" xlink:show? "onLoad" xlink:actuate? SVG_XLinkRequired_extra_attrib
 ;
syntax SVG_XLinkEmbed_extra_attrib
        = 
        ()
 ;
syntax SVG_XLinkEmbed_attrib
        = 
        "simple" xlink:type? SVG_URI_datatype xlink:href SVG_URI_datatype xlink:role? SVG_URI_datatype xlink:arcrole? String xlink:title? "embed" xlink:show? "onLoad" xlink:actuate? SVG_XLinkEmbed_extra_attrib
 ;
syntax SVG_XLinkReplace_extra_attrib
        = 
        ()
 ;
syntax SVG_XLinkReplace_attrib
        = 
        "simple" xlink:type? SVG_URI_datatype xlink:href SVG_URI_datatype xlink:role? SVG_URI_datatype xlink:arcrole? String xlink:title? ("new" | "replace") xlink:show? "onRequest" xlink:actuate? SVG_XLinkReplace_extra_attrib
 ;

public void main()
{
	registerLanguage("Svg_furubayashi_tiny", "ext", SVG.svg(str input, loc org) {return parse(#SVG.svg, input, org);});
	println("Language registered.");
}
