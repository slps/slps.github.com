@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Svg_furubayashi

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
syntax SVG_onbegin_attrib
        = 
        SVG_Script_datatype onbegin?
 ;
syntax SVG_onend_attrib
        = 
        SVG_Script_datatype onend?
 ;
syntax SVG_onrepeat_attrib
        = 
        SVG_Script_datatype onrepeat?
 ;
syntax SVG_AnimationEvents_extra_attrib
        = 
        ()
 ;
syntax SVG_AnimationEvents_attrib
        = SVG_onbegin_attrib SVG_onend_attrib SVG_onrepeat_attrib SVG_AnimationEvents_extra_attrib
        | ()
 ;
syntax SVG_ClipPathValue_datatype
        = 
        String
 ;
syntax SVG_Clip_extra_class
        = 
        ()
 ;
syntax SVG_Clip_class
        = SVG_clipPath
        | SVG_Clip_extra_class
 ;
syntax SVG_Clip_extra_attrib
        = 
        ()
 ;
syntax SVG_Clip_attrib
        = SVG_ClipPathValue_datatype clip-path? SVG_ClipFillRule_datatype clip-rule? SVG_Clip_extra_attrib
        | ()
 ;
syntax SVG_clipPath
        = 
        clipPath: SVG_Description_class* (SVG_Animation_class | SVG_Use_class | SVG_Shape_class | SVG_Text_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Text_attrib SVG_TextContent_attrib SVG_Font_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_Cursor_attrib SVG_External_attrib SVG_TransformList_datatype transform? ("userSpaceOnUse" | "objectBoundingBox") clipPathUnits?
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
syntax SVG_CursorValue_datatype
        = 
        String
 ;
syntax SVG_Cursor_extra_class
        = 
        ()
 ;
syntax SVG_Cursor_class
        = SVG_cursor
        | SVG_Cursor_extra_class
 ;
syntax SVG_cursor
        = 
        cursor: SVG_Description_class* SVG_Core_attrib SVG_Conditional_attrib SVG_XLinkRequired_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y?
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
syntax SVG_Color_attrib
        = ()
        | SVG_color_attrib SVG_color_interpolation_attrib SVG_color_rendering_attrib SVG_Color_extra_attrib
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
        = ()
        | SVG_FilterValue_datatype filter? SVG_Filter_extra_attrib
 ;
syntax SVG_FilterColor_attrib
        = ()
        | ("auto" | "sRGB" | "linearRGB" | "inherit") color-interpolation-filters? SVG_FilterColor_extra_attrib
 ;
syntax SVG_Font_attrib
        = ()
        | SVG_FontFamilyValue_datatype font-family? SVG_FontSizeValue_datatype font-size? SVG_FontSizeAdjustValue_datatype font-size-adjust? ("normal" | "wider" | "narrower" | "ultra-condensed" | "extra-condensed" | "condensed" | "semi-condensed" | "semi-expanded" | "expanded" | "extra-expanded" | "ultra-expanded" | "inherit") font-stretch? ("normal" | "italic" | "oblique" | "inherit") font-style? ("normal" | "small-caps" | "inherit") font-variant? ("normal" | "bold" | "bolder" | "lighter" | "100" | "200" | "300" | "400" | "500" | "600" | "700" | "800" | "900" | "inherit") font-weight? SVG_Font_extra_attrib
 ;
syntax SVG_Gradient_attrib
        = ()
        | SVG_SVGColor_datatype stop-color? SVG_OpacityValue_datatype stop-opacity? SVG_Gradient_extra_attrib
 ;
syntax SVG_GraphicalEvents_attrib
        = ()
        | SVG_onfocusin_attrib SVG_onfocusout_attrib SVG_onactivate_attrib SVG_onclick_attrib SVG_onmousedown_attrib SVG_onmouseup_attrib SVG_onmouseover_attrib SVG_onmousemove_attrib SVG_onmouseout_attrib SVG_onload_attrib SVG_GraphicalEvents_extra_attrib
 ;
syntax SVG_Graphics_attrib
        = ()
        | SVG_display_attrib SVG_image_rendering_attrib SVG_pointer_events_attrib SVG_shape_rendering_attrib SVG_text_rendering_attrib SVG_visibility_attrib SVG_Graphics_extra_attrib
 ;
syntax SVG_Marker_attrib
        = ()
        | SVG_MarkerValue_datatype marker-start? SVG_MarkerValue_datatype marker-mid? SVG_MarkerValue_datatype marker-end? SVG_Marker_extra_attrib
 ;
syntax SVG_Mask_attrib
        = ()
        | SVG_MaskValue_datatype mask? SVG_Mask_extra_attrib
 ;
syntax SVG_Opacity_attrib
        = ()
        | SVG_opacity_attrib SVG_fill_opacity_attrib SVG_stroke_opacity_attrib SVG_Opacity_extra_attrib
 ;
syntax SVG_Paint_attrib
        = ()
        | SVG_fill_attrib SVG_fill_rule_attrib SVG_stroke_attrib SVG_stroke_dasharray_attrib SVG_stroke_dashoffset_attrib SVG_stroke_linecap_attrib SVG_stroke_linejoin_attrib SVG_stroke_miterlimit_attrib SVG_stroke_width_attrib SVG_Paint_extra_attrib
 ;
syntax SVG_Profile_attrib
        = ()
        | String color-profile? SVG_Profile_extra_attrib
 ;
syntax SVG_Style_attrib
        = ()
        | SVG_StyleSheet_datatype style? SVG_ClassList_datatype class? SVG_Style_extra_attrib
 ;
syntax SVG_Text_attrib
        = ()
        | ("lr-tb" | "rl-tb" | "tb-rl" | "lr" | "rl" | "tb" | "inherit") writing-mode? SVG_Text_extra_attrib
 ;
syntax SVG_TextContent_attrib
        = ()
        | ("baseline" | "top" | "before-edge" | "text-top" | "text-before-edge" | "middle" | "bottom" | "after-edge" | "text-bottom" | "text-after-edge" | "ideographic" | "lower" | "hanging" | "mathematical" | "inherit") alignment-baseline? SVG_BaselineShiftValue_datatype baseline-shift? ("ltr" | "rtl" | "inherit") direction? ("auto" | "autosense-script" | "no-change" | "reset" | "ideographic" | "lower" | "hanging" | "mathematical" | "inherit") dominant-baseline? SVG_GlyphOrientationHorizontalValue_datatype glyph-orientation-horizontal? SVG_GlyphOrientationVerticalValue_datatype glyph-orientation-vertical? SVG_KerningValue_datatype kerning? SVG_SpacingValue_datatype letter-spacing? ("start" | "middle" | "end" | "inherit") text-anchor? SVG_TextDecorationValue_datatype text-decoration? ("normal" | "embed" | "bidi-override" | "inherit") unicode-bidi? SVG_SpacingValue_datatype word-spacing? SVG_TextContent_extra_attrib
 ;
syntax SVG_Viewport_attrib
        = ()
        | SVG_clip_attrib SVG_overflow_attrib SVG_Viewport_extra_attrib
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
syntax SVG_onunload_attrib
        = 
        SVG_Script_datatype onunload?
 ;
syntax SVG_onabort_attrib
        = 
        SVG_Script_datatype onabort?
 ;
syntax SVG_onerror_attrib
        = 
        SVG_Script_datatype onerror?
 ;
syntax SVG_onresize_attrib
        = 
        SVG_Script_datatype onresize?
 ;
syntax SVG_onscroll_attrib
        = 
        SVG_Script_datatype onscroll?
 ;
syntax SVG_onzoom_attrib
        = 
        SVG_Script_datatype onzoom?
 ;
syntax SVG_DocumentEvents_extra_attrib
        = 
        ()
 ;
syntax SVG_DocumentEvents_attrib
        = 
        SVG_onunload_attrib SVG_onabort_attrib SVG_onerror_attrib SVG_onresize_attrib SVG_onscroll_attrib SVG_onzoom_attrib SVG_DocumentEvents_extra_attrib
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
syntax SVG_FilterValue_datatype
        = 
        String
 ;
syntax SVG_NumberOptionalNumber_datatype
        = 
        String
 ;
syntax SVG_Filter_extra_class
        = 
        ()
 ;
syntax SVG_Filter_class
        = SVG_filter
        | SVG_Filter_extra_class
 ;
syntax SVG_FilterPrimitive_extra_class
        = 
        ()
 ;
syntax SVG_FilterPrimitive_class
        = SVG_feBlend
        | SVG_feColorMatrix
        | SVG_feComponentTransfer
        | SVG_feComposite
        | SVG_feConvolveMatrix
        | SVG_feDiffuseLighting
        | SVG_feDisplacementMap
        | SVG_feFlood
        | SVG_feGaussianBlur
        | SVG_feImage
        | SVG_feMerge
        | SVG_feMorphology
        | SVG_feOffset
        | SVG_feSpecularLighting
        | SVG_feTile
        | SVG_feTurbulence
        | SVG_FilterPrimitive_extra_class
 ;
syntax SVG_Filter_extra_attrib
        = 
        ()
 ;
syntax SVG_FilterColor_extra_attrib
        = 
        ()
 ;
syntax SVG_FilterPrimitive_extra_attrib
        = 
        ()
 ;
syntax SVG_FilterPrimitive_attrib
        = 
        SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width? SVG_Length_datatype height? String result? SVG_FilterPrimitive_extra_attrib
 ;
syntax SVG_FilterPrimitiveWithIn_extra_attrib
        = 
        ()
 ;
syntax SVG_FilterPrimitiveWithIn_attrib
        = 
        SVG_FilterPrimitive_attrib String in? SVG_FilterPrimitiveWithIn_extra_attrib
 ;
syntax SVG_filter
        = 
        filter: SVG_Description_class* (SVG_animate | SVG_set | SVG_FilterPrimitive_class)* SVG_Core_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_XLink_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width? SVG_Length_datatype height? SVG_NumberOptionalNumber_datatype filterRes? ("userSpaceOnUse" | "objectBoundingBox") filterUnits? ("userSpaceOnUse" | "objectBoundingBox") primitiveUnits?
 ;
syntax SVG_feBlend
        = 
        feBlend: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib String in2 ("normal" | "multiply" | "screen" | "darken" | "lighten") mode?
 ;
syntax SVG_feColorMatrix
        = 
        feColorMatrix: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib ("matrix" | "saturate" | "hueRotate" | "luminanceToAlpha") type? String values?
 ;
syntax SVG_feComponentTransfer
        = 
        feComponentTransfer: SVG_feFuncR? SVG_feFuncG? SVG_feFuncB? SVG_feFuncA? SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib
 ;
syntax SVG_feComposite
        = 
        feComposite: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib String in2 ("over" | "in" | "out" | "atop" | "xor" | "arithmetic") operator? SVG_Number_datatype k1? SVG_Number_datatype k2? SVG_Number_datatype k3? SVG_Number_datatype k4?
 ;
syntax SVG_feConvolveMatrix
        = 
        feConvolveMatrix: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib SVG_NumberOptionalNumber_datatype order String kernelMatrix SVG_Number_datatype divisor? SVG_Number_datatype bias? SVG_Integer_datatype targetX? SVG_Integer_datatype targetY? ("duplicate" | "wrap" | "none") edgeMode? SVG_NumberOptionalNumber_datatype kernelUnitLength? SVG_Boolean_datatype preserveAlpha?
 ;
syntax SVG_feDiffuseLighting
        = 
        feDiffuseLighting: (SVG_feDistantLight | SVG_fePointLight | SVG_feSpotLight) (SVG_animate | SVG_set | SVG_animateColor)* SVG_Core_attrib SVG_Style_attrib SVG_Color_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib SVG_SVGColor_datatype lighting-color? SVG_Number_datatype surfaceScale? SVG_Number_datatype diffuseConstant? SVG_NumberOptionalNumber_datatype kernelUnitLength?
 ;
syntax SVG_feDisplacementMap
        = 
        feDisplacementMap: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib String in2 SVG_Number_datatype scale? ("R" | "G" | "B" | "A")  xChannelSelector? ("R" | "G" | "B" | "A")  yChannelSelector?
 ;
syntax SVG_feFlood
        = 
        feFlood: (SVG_animate | SVG_set | SVG_animateColor)* SVG_Core_attrib SVG_Style_attrib SVG_Color_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib SVG_SVGColor_datatype flood-color? SVG_OpacityValue_datatype flood-opacity?
 ;
syntax SVG_feGaussianBlur
        = 
        feGaussianBlur: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib SVG_NumberOptionalNumber_datatype stdDeviation?
 ;
syntax SVG_feImage
        = 
        feImage: (SVG_animate | SVG_set | SVG_animateTransform)* SVG_Core_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_FilterPrimitive_attrib SVG_XLinkEmbed_attrib SVG_External_attrib SVG_PreserveAspectRatioSpec_datatype preserveAspectRatio?
 ;
syntax SVG_feMerge
        = 
        feMerge: SVG_feMergeNode* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitive_attrib
 ;
syntax SVG_feMergeNode
        = 
        feMergeNode: (SVG_animate | SVG_set)* SVG_Core_attrib String in?
 ;
syntax SVG_feMorphology
        = 
        feMorphology: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib ("erode" | "dilate") operator? SVG_NumberOptionalNumber_datatype radius?
 ;
syntax SVG_feOffset
        = 
        feOffset: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib SVG_Number_datatype dx? SVG_Number_datatype dy?
 ;
syntax SVG_feSpecularLighting
        = 
        feSpecularLighting: (SVG_feDistantLight | SVG_fePointLight | SVG_feSpotLight) (SVG_animate | SVG_set | SVG_animateColor)* SVG_Core_attrib SVG_Style_attrib SVG_Color_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib SVG_SVGColor_datatype lighting-color? SVG_Number_datatype surfaceScale? SVG_Number_datatype specularConstant? SVG_Number_datatype specularExponent? SVG_NumberOptionalNumber_datatype kernelUnitLength?
 ;
syntax SVG_feTile
        = 
        feTile: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitiveWithIn_attrib
 ;
syntax SVG_feTurbulence
        = 
        feTurbulence: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_FilterColor_attrib SVG_FilterPrimitive_attrib SVG_NumberOptionalNumber_datatype baseFrequency? SVG_Integer_datatype numOctaves? SVG_Number_datatype seed? ("stitch" | "noStitch") stitchTiles? ("fractalNoise" | "turbulence") type?
 ;
syntax SVG_feDistantLight
        = 
        feDistantLight: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_Number_datatype azimuth? SVG_Number_datatype elevation?
 ;
syntax SVG_fePointLight
        = 
        fePointLight: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_Number_datatype x? SVG_Number_datatype y? SVG_Number_datatype z?
 ;
syntax SVG_feSpotLight
        = 
        feSpotLight: (SVG_animate | SVG_set)* SVG_Core_attrib SVG_Number_datatype x? SVG_Number_datatype y? SVG_Number_datatype z? SVG_Number_datatype pointsAtX? SVG_Number_datatype pointsAtY? SVG_Number_datatype pointsAtZ? SVG_Number_datatype specularExponent? SVG_Number_datatype limitingConeAngle?
 ;
syntax SVG_feFuncR
        = 
        feFuncR: (SVG_animate | SVG_set)* SVG_Core_attrib ("identity" | "table" | "discrete" | "linear" | "gamma") type String tableValues? SVG_Number_datatype slope? SVG_Number_datatype intercept? SVG_Number_datatype amplitude? SVG_Number_datatype exponent? SVG_Number_datatype offset?
 ;
syntax SVG_feFuncG
        = 
        feFuncG: (SVG_animate | SVG_set)* SVG_Core_attrib ("identity" | "table" | "discrete" | "linear" | "gamma") type String tableValues? SVG_Number_datatype slope? SVG_Number_datatype intercept? SVG_Number_datatype amplitude? SVG_Number_datatype exponent? SVG_Number_datatype offset?
 ;
syntax SVG_feFuncB
        = 
        feFuncB: (SVG_animate | SVG_set)* SVG_Core_attrib ("identity" | "table" | "discrete" | "linear" | "gamma") type String tableValues? SVG_Number_datatype slope? SVG_Number_datatype intercept? SVG_Number_datatype amplitude? SVG_Number_datatype exponent? SVG_Number_datatype offset?
 ;
syntax SVG_feFuncA
        = 
        feFuncA: (SVG_animate | SVG_set)* SVG_Core_attrib ("identity" | "table" | "discrete" | "linear" | "gamma") type String tableValues? SVG_Number_datatype slope? SVG_Number_datatype intercept? SVG_Number_datatype amplitude? SVG_Number_datatype exponent? SVG_Number_datatype offset?
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
        font: SVG_Description_class* SVG_font_face SVG_missing_glyph (SVG_glyph | SVG_hkern | SVG_vkern)* SVG_Core_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_External_attrib SVG_Number_datatype horiz-origin-x? SVG_Number_datatype horiz-origin-y? SVG_Number_datatype horiz-adv-x SVG_Number_datatype vert-origin-x? SVG_Number_datatype vert-origin-y? SVG_Number_datatype vert-adv-y?
 ;
syntax SVG_font_face
        = 
        font-face: SVG_Description_class* SVG_font_face_src? SVG_definition_src? SVG_Core_attrib String font-family? String font-style? String font-variant? String font-weight? String font-stretch? String font-size? String unicode-range? SVG_Number_datatype units-per-em? String panose-1? SVG_Number_datatype stemv? SVG_Number_datatype stemh? SVG_Number_datatype slope? SVG_Number_datatype cap-height? SVG_Number_datatype x-height? SVG_Number_datatype accent-height? SVG_Number_datatype ascent? SVG_Number_datatype descent? String widths? String bbox? SVG_Number_datatype ideographic? SVG_Number_datatype alphabetic? SVG_Number_datatype mathematical? SVG_Number_datatype hanging? SVG_Number_datatype v-ideographic? SVG_Number_datatype v-alphabetic? SVG_Number_datatype v-mathematical? SVG_Number_datatype v-hanging? SVG_Number_datatype underline-position? SVG_Number_datatype underline-thickness? SVG_Number_datatype strikethrough-position? SVG_Number_datatype strikethrough-thickness? SVG_Number_datatype overline-position? SVG_Number_datatype overline-thickness?
 ;
syntax SVG_glyph
        = 
        glyph: (SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Style_attrib SVG_Presentation_attrib String unicode? String glyph-name? SVG_PathData_datatype d? String orientation? String arabic-form? SVG_LanguageCodes_datatype lang? SVG_Number_datatype horiz-adv-x? SVG_Number_datatype vert-origin-x? SVG_Number_datatype vert-origin-y? SVG_Number_datatype vert-adv-y?
 ;
syntax SVG_missing_glyph
        = 
        missing-glyph: (SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_PathData_datatype d? SVG_Number_datatype horiz-adv-x? SVG_Number_datatype vert-origin-x? SVG_Number_datatype vert-origin-y? SVG_Number_datatype vert-adv-y?
 ;
syntax SVG_hkern
        = 
        hkern: SVG_Core_attrib String u1? String g1? String u2? String g2? SVG_Number_datatype k
 ;
syntax SVG_vkern
        = 
        vkern: SVG_Core_attrib String u1? String g1? String u2? String g2? SVG_Number_datatype k
 ;
syntax SVG_font_face_src
        = 
        font-face-src: (SVG_font_face_uri | SVG_font_face_name)+ SVG_Core_attrib
 ;
syntax SVG_font_face_uri
        = 
        font-face-uri: SVG_font_face_format* SVG_Core_attrib SVG_XLinkRequired_attrib
 ;
syntax SVG_font_face_format
        = 
        font-face-format: SVG_Core_attrib String string?
 ;
syntax SVG_font_face_name
        = 
        font-face-name: SVG_Core_attrib String name?
 ;
syntax SVG_definition_src
        = 
        definition-src: SVG_Core_attrib SVG_XLinkRequired_attrib
 ;
syntax SVG_NumberOrPercentage_datatype
        = 
        String
 ;
syntax SVG_Gradient_extra_class
        = 
        ()
 ;
syntax SVG_Gradient_class
        = SVG_linearGradient
        | SVG_radialGradient
        | SVG_Gradient_extra_class
 ;
syntax SVG_Gradient_extra_attrib
        = 
        ()
 ;
syntax SVG_linearGradient
        = 
        linearGradient: SVG_Description_class* (SVG_stop | SVG_animate | SVG_set | SVG_animateTransform)* SVG_Core_attrib SVG_Style_attrib SVG_Color_attrib SVG_Gradient_attrib SVG_XLink_attrib SVG_External_attrib SVG_Coordinate_datatype x1? SVG_Coordinate_datatype y1? SVG_Coordinate_datatype x2? SVG_Coordinate_datatype y2? ("userSpaceOnUse" | "objectBoundingBox") gradientUnits? SVG_TransformList_datatype gradientTransform? ("pad" | "reflect" | "repeat") spreadMethod?
 ;
syntax SVG_radialGradient
        = 
        radialGradient: SVG_Description_class* (SVG_stop | SVG_animate | SVG_set | SVG_animateTransform)* SVG_Core_attrib SVG_Style_attrib SVG_Color_attrib SVG_Gradient_attrib SVG_XLink_attrib SVG_External_attrib SVG_Coordinate_datatype cx? SVG_Coordinate_datatype cy? SVG_Length_datatype r? SVG_Coordinate_datatype fx? SVG_Coordinate_datatype fy? ("userSpaceOnUse" | "objectBoundingBox") gradientUnits? SVG_TransformList_datatype gradientTransform? ("pad" | "reflect" | "repeat") spreadMethod?
 ;
syntax SVG_stop
        = 
        stop: (SVG_animate | SVG_set | SVG_animateColor)* SVG_Core_attrib SVG_Style_attrib SVG_Color_attrib SVG_Gradient_attrib SVG_NumberOrPercentage_datatype offset
 ;
syntax SVG_onfocusin_attrib
        = 
        SVG_Script_datatype onfocusin?
 ;
syntax SVG_onfocusout_attrib
        = 
        SVG_Script_datatype onfocusout?
 ;
syntax SVG_onactivate_attrib
        = 
        SVG_Script_datatype onactivate?
 ;
syntax SVG_onclick_attrib
        = 
        SVG_Script_datatype onclick?
 ;
syntax SVG_onmousedown_attrib
        = 
        SVG_Script_datatype onmousedown?
 ;
syntax SVG_onmouseup_attrib
        = 
        SVG_Script_datatype onmouseup?
 ;
syntax SVG_onmouseover_attrib
        = 
        SVG_Script_datatype onmouseover?
 ;
syntax SVG_onmousemove_attrib
        = 
        SVG_Script_datatype onmousemove?
 ;
syntax SVG_onmouseout_attrib
        = 
        SVG_Script_datatype onmouseout?
 ;
syntax SVG_onload_attrib
        = 
        SVG_Script_datatype onload?
 ;
syntax SVG_GraphicalEvents_extra_attrib
        = 
        ()
 ;
syntax SVG_display_attrib
        = 
        ("inline" | "block" | "list-item" | "run-in" | "compact" | "marker" | "table" | "inline-table" | "table-row-group" | "table-header-group" | "table-footer-group" | "table-row" | "table-column-group" | "table-column" | "table-cell" | "table-caption" | "none" | "inherit") display?
 ;
syntax SVG_image_rendering_attrib
        = 
        ("auto" | "optimizeSpeed" | "optimizeQuality" | "inherit") image-rendering?
 ;
syntax SVG_pointer_events_attrib
        = 
        ("visiblePainted" | "visibleFill" | "visibleStroke" | "visible" | "painted" | "fill" | "stroke" | "all" | "none" | "inherit") pointer-events?
 ;
syntax SVG_shape_rendering_attrib
        = 
        ("auto" | "optimizeSpeed" | "crispEdges" | "geometricPrecision" | "inherit") shape-rendering?
 ;
syntax SVG_text_rendering_attrib
        = 
        ("auto" | "optimizeSpeed" | "optimizeLegibility" | "geometricPrecision" | "inherit") text-rendering?
 ;
syntax SVG_visibility_attrib
        = 
        ("visible" | "hidden" | "inherit") visibility?
 ;
syntax SVG_Graphics_extra_attrib
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
syntax SVG_MarkerValue_datatype
        = 
        String
 ;
syntax SVG_Marker_extra_class
        = 
        ()
 ;
syntax SVG_Marker_class
        = SVG_marker
        | SVG_Marker_extra_class
 ;
syntax SVG_Marker_extra_attrib
        = 
        ()
 ;
syntax SVG_marker
        = 
        marker: (SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_External_attrib SVG_Coordinate_datatype refX? SVG_Coordinate_datatype refY? ("strokeWidth" | "userSpaceOnUse") markerUnits? SVG_Length_datatype markerWidth? SVG_Length_datatype markerHeight? String orient? SVG_ViewBoxSpec_datatype viewBox? SVG_PreserveAspectRatioSpec_datatype preserveAspectRatio?
 ;
syntax SVG_MaskValue_datatype
        = 
        String
 ;
syntax SVG_Mask_extra_class
        = 
        ()
 ;
syntax SVG_Mask_class
        = SVG_mask
        | SVG_Mask_extra_class
 ;
syntax SVG_Mask_extra_attrib
        = 
        ()
 ;
syntax SVG_mask
        = 
        mask: (SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width? SVG_Length_datatype height? ("userSpaceOnUse" | "objectBoundingBox") maskUnits? ("userSpaceOnUse" | "objectBoundingBox") maskContentUnits?
 ;
syntax SVG_opacity_attrib
        = 
        SVG_OpacityValue_datatype opacity?
 ;
syntax SVG_fill_opacity_attrib
        = 
        SVG_OpacityValue_datatype fill-opacity?
 ;
syntax SVG_stroke_opacity_attrib
        = 
        SVG_OpacityValue_datatype stroke-opacity?
 ;
syntax SVG_Opacity_extra_attrib
        = 
        ()
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
syntax SVG_color_attrib
        = 
        SVG_Color_datatype color?
 ;
syntax SVG_color_interpolation_attrib
        = 
        ("auto" | "sRGB" | "linearRGB" | "inherit") color-interpolation?
 ;
syntax SVG_color_rendering_attrib
        = 
        ("auto" | "optimizeSpeed" | "optimizeQuality" | "inherit") color-rendering?
 ;
syntax SVG_Color_extra_attrib
        = 
        ()
 ;
syntax SVG_Pattern_extra_class
        = 
        ()
 ;
syntax SVG_Pattern_class
        = SVG_pattern
        | SVG_Pattern_extra_class
 ;
syntax SVG_pattern
        = 
        pattern: (SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_XLink_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width? SVG_Length_datatype height? ("userSpaceOnUse" | "objectBoundingBox") patternUnits? ("userSpaceOnUse" | "objectBoundingBox") patternContentUnits? SVG_TransformList_datatype patternTransform? SVG_ViewBoxSpec_datatype viewBox? SVG_PreserveAspectRatioSpec_datatype preserveAspectRatio?
 ;
syntax SVG_Profile_extra_class
        = 
        ()
 ;
syntax SVG_Profile_class
        = SVG_color_profile
        | SVG_Profile_extra_class
 ;
syntax SVG_Profile_extra_attrib
        = 
        ()
 ;
syntax SVG_color_profile
        = 
        color-profile: SVG_Description_class* SVG_Core_attrib SVG_XLink_attrib String local? String name ("auto" | "perceptual" | "relative-colorimetric" | "saturation" | "absolute-colorimetric") rendering-intent?
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
        = SVG_svg
        | SVG_g
        | SVG_defs
        | SVG_symbol
        | SVG_Use_class
        | SVG_Structure_extra_class
 ;
syntax SVG_svg
        = 
        svg: (SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_DocumentEvents_attrib SVG_GraphicalEvents_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width? SVG_Length_datatype height? SVG_ViewBoxSpec_datatype viewBox? SVG_PreserveAspectRatioSpec_datatype preserveAspectRatio? ("disable" | "magnify") zoomAndPan? SVG_Number_datatype version SVG_Text_datatype baseProfile? SVG_ContentType_datatype contentScriptType? SVG_ContentType_datatype contentStyleType?
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
syntax SVG_symbol
        = 
        symbol: (SVG_Description_class | SVG_Animation_class | SVG_Structure_class | SVG_Conditional_class | SVG_Image_class | SVG_Style_class | SVG_Shape_class | SVG_Text_class | SVG_Marker_class | SVG_Profile_class | SVG_Gradient_class | SVG_Pattern_class | SVG_Clip_class | SVG_Mask_class | SVG_Filter_class | SVG_Cursor_class | SVG_Hyperlink_class | SVG_View_class | SVG_Script_class | SVG_Font_class)* SVG_Core_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_GraphicalEvents_attrib SVG_External_attrib SVG_ViewBoxSpec_datatype viewBox? SVG_PreserveAspectRatioSpec_datatype preserveAspectRatio?
 ;
syntax SVG_use
        = 
        use: SVG_Description_class* SVG_Animation_class* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Presentation_attrib SVG_GraphicalEvents_attrib SVG_XLinkEmbed_attrib SVG_External_attrib SVG_Coordinate_datatype x? SVG_Coordinate_datatype y? SVG_Length_datatype width? SVG_Length_datatype height? SVG_TransformList_datatype transform?
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
syntax SVG_BaselineShiftValue_datatype
        = 
        String
 ;
syntax SVG_FontFamilyValue_datatype
        = 
        String
 ;
syntax SVG_FontSizeValue_datatype
        = 
        String
 ;
syntax SVG_FontSizeAdjustValue_datatype
        = 
        String
 ;
syntax SVG_GlyphOrientationHorizontalValue_datatype
        = 
        String
 ;
syntax SVG_GlyphOrientationVerticalValue_datatype
        = 
        String
 ;
syntax SVG_KerningValue_datatype
        = 
        String
 ;
syntax SVG_SpacingValue_datatype
        = 
        String
 ;
syntax SVG_TextDecorationValue_datatype
        = 
        String
 ;
syntax SVG_Text_extra_class
        = 
        ()
 ;
syntax SVG_Text_class
        = SVG_text
        | SVG_altGlyphDef
        | SVG_Text_extra_class
 ;
syntax SVG_TextContent_extra_class
        = 
        ()
 ;
syntax SVG_TextContent_class
        = SVG_tspan
        | SVG_tref
        | SVG_textPath
        | SVG_altGlyph
        | SVG_TextContent_extra_class
 ;
syntax SVG_Text_extra_attrib
        = 
        ()
 ;
syntax SVG_TextContent_extra_attrib
        = 
        ()
 ;
syntax SVG_Font_extra_attrib
        = 
        ()
 ;
syntax SVG_text
        = 
        text: (String | SVG_Description_class | SVG_Animation_class | SVG_TextContent_class | SVG_Hyperlink_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_Text_attrib SVG_TextContent_attrib SVG_Font_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_External_attrib SVG_Coordinates_datatype x? SVG_Coordinates_datatype y? SVG_Lengths_datatype dx? SVG_Lengths_datatype dy? SVG_Numbers_datatype rotate? SVG_Length_datatype textLength? ("spacing" | "spacingAndGlyphs") lengthAdjust? SVG_TransformList_datatype transform?
 ;
syntax SVG_tspan
        = 
        tspan: (String | SVG_tspan | SVG_tref | SVG_altGlyph | SVG_animate | SVG_set | SVG_animateColor | SVG_Description_class | SVG_Hyperlink_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_TextContent_attrib SVG_Font_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_External_attrib SVG_Coordinates_datatype x? SVG_Coordinates_datatype y? SVG_Lengths_datatype dx? SVG_Lengths_datatype dy? SVG_Numbers_datatype rotate? SVG_Length_datatype textLength? ("spacing" | "spacingAndGlyphs") lengthAdjust?
 ;
syntax SVG_tref
        = 
        tref: (SVG_animate | SVG_set | SVG_animateColor | SVG_Description_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_TextContent_attrib SVG_Font_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_XLinkRequired_attrib SVG_External_attrib SVG_Coordinates_datatype x? SVG_Coordinates_datatype y? SVG_Lengths_datatype dx? SVG_Lengths_datatype dy? SVG_Numbers_datatype rotate? SVG_Length_datatype textLength? ("spacing" | "spacingAndGlyphs") lengthAdjust?
 ;
syntax SVG_textPath
        = 
        textPath: (String | SVG_tspan | SVG_tref | SVG_altGlyph | SVG_animate | SVG_set | SVG_animateColor | SVG_Description_class | SVG_Hyperlink_class)* SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_TextContent_attrib SVG_Font_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_XLinkRequired_attrib SVG_External_attrib SVG_Length_datatype startOffset? SVG_Length_datatype textLength? ("spacing" | "spacingAndGlyphs") lengthAdjust? ("align" | "stretch") method? ("auto" | "exact") spacing?
 ;
syntax SVG_altGlyph
        = 
        altGlyph: String SVG_Core_attrib SVG_Conditional_attrib SVG_Style_attrib SVG_TextContent_attrib SVG_Font_attrib SVG_Paint_attrib SVG_Color_attrib SVG_Opacity_attrib SVG_Graphics_attrib SVG_Clip_attrib SVG_Mask_attrib SVG_Filter_attrib SVG_GraphicalEvents_attrib SVG_Cursor_attrib SVG_XLink_attrib SVG_External_attrib SVG_Coordinates_datatype x? SVG_Coordinates_datatype y? SVG_Lengths_datatype dx? SVG_Lengths_datatype dy? String glyphRef? String format? SVG_Numbers_datatype rotate?
 ;
syntax SVG_altGlyphDef
        = 
        altGlyphDef: (SVG_glyphRef+ | SVG_altGlyphItem+) SVG_Core_attrib
 ;
syntax SVG_altGlyphItem
        = 
        altGlyphItem: SVG_glyphRef+ SVG_Core_attrib
 ;
syntax SVG_glyphRef
        = 
        glyphRef: SVG_Core_attrib SVG_Style_attrib SVG_Font_attrib SVG_XLink_attrib SVG_Coordinates_datatype x? SVG_Coordinates_datatype y? SVG_Lengths_datatype dx? SVG_Lengths_datatype dy? String glyphRef? String format?
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
syntax SVG_ClipValue_datatype
        = 
        String
 ;
syntax SVG_clip_attrib
        = 
        SVG_ClipValue_datatype clip?
 ;
syntax SVG_overflow_attrib
        = 
        ("visible" | "hidden" | "scroll" | "auto" | "inherit") overflow?
 ;
syntax SVG_Viewport_extra_attrib
        = 
        ()
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
	registerLanguage("Svg_furubayashi", "ext", SVG.svg(str input, loc org) {return parse(#SVG.svg, input, org);});
	println("Language registered.");
}
