@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Mathml_furubayashi

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Mml_Content
        = Mml_ctoken
        | Mml_cspecial
        | Mml_cother
        | Mml_csemantics
        | Mml_c0ary
        | Mml_cconstructor
        | Mml_cquantifier
        | Mml_cop1ary
        | Mml_cop2ary
        | Mml_copnary
        | Mml_copmisc
        | Mml_crel2ary
        | Mml_crelnary
 ;
syntax Mml_ContInPres
        = Mml_ci_qname
        | Mml_csymbol_qname
        | Mml_cn_qname
        | Mml_c0ary
        | Mml_apply_qname
        | Mml_fn_qname
        | Mml_lambda_qname
        | Mml_reln_qname
        | Mml_cconstructor
        | Mml_semantics_qname
        | Mml_declare_qname
 ;
syntax Mml_att_base
        = 
        Mml_number_datatype base?
 ;
syntax Mml_att_closure
        = 
        ("open" | "closed" | "open-closed" | "closed-open") closure?
 ;
syntax Mml_att_definition
        = 
        Mml_uri_datatype definitionURL?
 ;
syntax Mml_att_encoding
        = 
        String encoding?
 ;
syntax Mml_att_nargs
        = 
        ("nary" | Mml_number_datatype) nargs?
 ;
syntax Mml_att_occurrence
        = 
        ("prefix" | "infix" | "function-model") occurrence?
 ;
syntax Mml_att_order
        = 
        ("lexicographic" | "numeric") order?
 ;
syntax Mml_att_scope
        = 
        ("local" | "global") scope?
 ;
syntax Mml_att_type
        = 
        ("e-notation" | "integer" | "rational" | "real" | "float" | "complex-polar" | "complex-cartesian" | "constant") type?
 ;
syntax Mml_cconstructor
        = Mml_interval_qname
        | Mml_list_qname
        | Mml_matrix_qname
        | Mml_matrixrow_qname
        | Mml_set_qname
        | Mml_vector_qname
        | Mml_piecewise_qname
 ;
syntax Mml_interval_qname
        = 
        interval: Mml_ContentExpression Mml_Common_attrib Mml_att_closure
 ;
syntax Mml_set_qname
        = 
        set: Mml_ContentExpression Mml_Common_attrib Mml_att_type
 ;
syntax Mml_list_qname
        = 
        list: Mml_ContentExpression Mml_Common_attrib Mml_att_order
 ;
syntax Mml_vector_qname
        = 
        vector: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_matrix_qname
        = 
        matrix: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_matrixrow_qname
        = 
        matrixrow: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_piecewise_qname
        = 
        piecewise: Mml_piece_qname* Mml_otherwise_qname? Mml_Common_attrib
 ;
syntax Mml_piece_qname
        = 
        piece: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_otherwise_qname
        = 
        otherwise: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_ctoken
        = Mml_csymbol_qname
        | Mml_ci_qname
        | Mml_cn_qname
 ;
syntax Mml_ci_qname
        = 
        ci: (Mml_MathMLCharacters | Mml_PresInCont)* Mml_Common_attrib Mml_att_type Mml_att_definition Mml_att_encoding
 ;
syntax Mml_csymbol_qname
        = 
        csymbol: (Mml_MathMLCharacters | Mml_PresInCont)* Mml_Common_attrib Mml_att_type Mml_att_definition Mml_att_encoding
 ;
syntax Mml_cn_qname
        = 
        cn: (Mml_MathMLCharacters | Mml_PresInCont | Mml_sep_qname)* Mml_Common_attrib Mml_att_type Mml_att_base Mml_att_definition Mml_att_encoding
 ;
syntax Mml_operators_common_attrib
        = 
        Mml_Common_attrib Mml_att_definition Mml_att_encoding
 ;
syntax Mml_cfuncop1ary
        = Mml_inverse_qname
        | Mml_ident_qname
        | Mml_domain_qname
        | Mml_codomain_qname
        | Mml_image_qname
 ;
syntax Mml_inverse_qname
        = 
        inverse: () Mml_operators_common_attrib
 ;
syntax Mml_domain_qname
        = 
        domain: () Mml_operators_common_attrib
 ;
syntax Mml_codomain_qname
        = 
        codomain: () Mml_operators_common_attrib
 ;
syntax Mml_image_qname
        = 
        image: () Mml_operators_common_attrib
 ;
syntax Mml_cfuncopnary
        = Mml_fn_qname
        | Mml_compose_qname
 ;
syntax Mml_fn_qname
        = 
        fn: Mml_ContentExpression Mml_operators_common_attrib
 ;
syntax Mml_ident_qname
        = 
        ident: () Mml_operators_common_attrib
 ;
syntax Mml_compose_qname
        = 
        compose: () Mml_operators_common_attrib
 ;
syntax Mml_carithop1ary
        = Mml_abs_qname
        | Mml_conjugate_qname
        | Mml_exp_qname
        | Mml_factorial_qname
        | Mml_arg_qname
        | Mml_real_qname
        | Mml_imaginary_qname
        | Mml_floor_qname
        | Mml_ceiling_qname
 ;
syntax Mml_exp_qname
        = 
        exp: () Mml_operators_common_attrib
 ;
syntax Mml_abs_qname
        = 
        abs: () Mml_operators_common_attrib
 ;
syntax Mml_arg_qname
        = 
        arg: () Mml_operators_common_attrib
 ;
syntax Mml_real_qname
        = 
        real: () Mml_operators_common_attrib
 ;
syntax Mml_imaginary_qname
        = 
        imaginary: () Mml_operators_common_attrib
 ;
syntax Mml_conjugate_qname
        = 
        conjugate: () Mml_operators_common_attrib
 ;
syntax Mml_factorial_qname
        = 
        factorial: () Mml_operators_common_attrib
 ;
syntax Mml_floor_qname
        = 
        floor: () Mml_operators_common_attrib
 ;
syntax Mml_ceiling_qname
        = 
        ceiling: () Mml_operators_common_attrib
 ;
syntax Mml_carithop1or2ary
        = 
        Mml_minus_qname
 ;
syntax Mml_minus_qname
        = 
        minus: () Mml_operators_common_attrib
 ;
syntax Mml_carithop2ary
        = Mml_quotient_qname
        | Mml_divide_qname
        | Mml_power_qname
        | Mml_rem_qname
 ;
syntax Mml_quotient_qname
        = 
        quotient: () Mml_operators_common_attrib
 ;
syntax Mml_divide_qname
        = 
        divide: () Mml_operators_common_attrib
 ;
syntax Mml_power_qname
        = 
        power: () Mml_operators_common_attrib
 ;
syntax Mml_rem_qname
        = 
        rem: () Mml_operators_common_attrib
 ;
syntax Mml_carithopnary
        = Mml_plus_qname
        | Mml_times_qname
        | Mml_max_qname
        | Mml_min_qname
        | Mml_gcd_qname
        | Mml_lcm_qname
 ;
syntax Mml_plus_qname
        = 
        plus: () Mml_operators_common_attrib
 ;
syntax Mml_max_qname
        = 
        max: () Mml_operators_common_attrib
 ;
syntax Mml_min_qname
        = 
        min: () Mml_operators_common_attrib
 ;
syntax Mml_times_qname
        = 
        times: () Mml_operators_common_attrib
 ;
syntax Mml_gcd_qname
        = 
        gcd: () Mml_operators_common_attrib
 ;
syntax Mml_lcm_qname
        = 
        lcm: () Mml_operators_common_attrib
 ;
syntax Mml_carithoproot
        = 
        Mml_root_qname
 ;
syntax Mml_root_qname
        = 
        root: () Mml_operators_common_attrib
 ;
syntax Mml_clogicopquant
        = Mml_exists_qname
        | Mml_forall_qname
 ;
syntax Mml_exists_qname
        = 
        exists: () Mml_operators_common_attrib
 ;
syntax Mml_forall_qname
        = 
        forall: () Mml_operators_common_attrib
 ;
syntax Mml_clogicopnary
        = Mml_and_qname
        | Mml_or_qname
        | Mml_xor_qname
 ;
syntax Mml_and_qname
        = 
        and: () Mml_operators_common_attrib
 ;
syntax Mml_or_qname
        = 
        or: () Mml_operators_common_attrib
 ;
syntax Mml_xor_qname
        = 
        xor: () Mml_operators_common_attrib
 ;
syntax Mml_clogicop1ary
        = 
        Mml_not_qname
 ;
syntax Mml_not_qname
        = 
        not: () Mml_operators_common_attrib
 ;
syntax Mml_clogicop2ary
        = 
        Mml_implies_qname
 ;
syntax Mml_implies_qname
        = 
        implies: () Mml_operators_common_attrib
 ;
syntax Mml_ccalcop
        = Mml_log_qname
        | Mml_int_qname
        | Mml_diff_qname
        | Mml_partialdiff_qname
        | Mml_divergence_qname
        | Mml_grad_qname
        | Mml_curl_qname
        | Mml_laplacian_qname
 ;
syntax Mml_divergence_qname
        = 
        divergence: () Mml_operators_common_attrib
 ;
syntax Mml_grad_qname
        = 
        grad: () Mml_operators_common_attrib
 ;
syntax Mml_curl_qname
        = 
        curl: () Mml_operators_common_attrib
 ;
syntax Mml_laplacian_qname
        = 
        laplacian: () Mml_operators_common_attrib
 ;
syntax Mml_log_qname
        = 
        log: () Mml_operators_common_attrib
 ;
syntax Mml_int_qname
        = 
        int: () Mml_operators_common_attrib
 ;
syntax Mml_diff_qname
        = 
        diff: () Mml_operators_common_attrib
 ;
syntax Mml_partialdiff_qname
        = 
        partialdiff: () Mml_operators_common_attrib
 ;
syntax Mml_ccalcop1ary
        = 
        Mml_ln_qname
 ;
syntax Mml_ln_qname
        = 
        ln: () Mml_operators_common_attrib
 ;
syntax Mml_csetop1ary
        = 
        Mml_card_qname
 ;
syntax Mml_card_qname
        = 
        card: () Mml_operators_common_attrib
 ;
syntax Mml_csetop2ary
        = 
        Mml_setdiff_qname
 ;
syntax Mml_setdiff_qname
        = 
        setdiff: () Mml_operators_common_attrib
 ;
syntax Mml_csetopnary
        = Mml_union_qname
        | Mml_intersect_qname
        | Mml_cartesianproduct_qname
 ;
syntax Mml_union_qname
        = 
        union: () Mml_operators_common_attrib
 ;
syntax Mml_intersect_qname
        = 
        intersect: () Mml_operators_common_attrib
 ;
syntax Mml_cartesianproduct_qname
        = 
        cartesianproduct: () Mml_operators_common_attrib
 ;
syntax Mml_cseqop
        = Mml_sum_qname
        | Mml_product_qname
        | Mml_limit_qname
 ;
syntax Mml_sum_qname
        = 
        sum: () Mml_operators_common_attrib
 ;
syntax Mml_product_qname
        = 
        product: () Mml_operators_common_attrib
 ;
syntax Mml_limit_qname
        = 
        limit: () Mml_operators_common_attrib
 ;
syntax Mml_ctrigop
        = Mml_sin_qname
        | Mml_cos_qname
        | Mml_tan_qname
        | Mml_sec_qname
        | Mml_csc_qname
        | Mml_cot_qname
        | Mml_sinh_qname
        | Mml_cosh_qname
        | Mml_tanh_qname
        | Mml_sech_qname
        | Mml_csch_qname
        | Mml_coth_qname
        | Mml_arcsin_qname
        | Mml_arccos_qname
        | Mml_arctan_qname
        | Mml_arccosh_qname
        | Mml_arccot_qname
        | Mml_arccoth_qname
        | Mml_arccsc_qname
        | Mml_arccsch_qname
        | Mml_arcsec_qname
        | Mml_arcsech_qname
        | Mml_arcsinh_qname
        | Mml_arctanh_qname
 ;
syntax Mml_sin_qname
        = 
        sin: () Mml_operators_common_attrib
 ;
syntax Mml_cos_qname
        = 
        cos: () Mml_operators_common_attrib
 ;
syntax Mml_tan_qname
        = 
        tan: () Mml_operators_common_attrib
 ;
syntax Mml_sec_qname
        = 
        sec: () Mml_operators_common_attrib
 ;
syntax Mml_csc_qname
        = 
        csc: () Mml_operators_common_attrib
 ;
syntax Mml_cot_qname
        = 
        cot: () Mml_operators_common_attrib
 ;
syntax Mml_sinh_qname
        = 
        sinh: () Mml_operators_common_attrib
 ;
syntax Mml_cosh_qname
        = 
        cosh: () Mml_operators_common_attrib
 ;
syntax Mml_tanh_qname
        = 
        tanh: () Mml_operators_common_attrib
 ;
syntax Mml_sech_qname
        = 
        sech: () Mml_operators_common_attrib
 ;
syntax Mml_csch_qname
        = 
        csch: () Mml_operators_common_attrib
 ;
syntax Mml_coth_qname
        = 
        coth: () Mml_operators_common_attrib
 ;
syntax Mml_arcsin_qname
        = 
        arcsin: () Mml_operators_common_attrib
 ;
syntax Mml_arccos_qname
        = 
        arccos: () Mml_operators_common_attrib
 ;
syntax Mml_arctan_qname
        = 
        arctan: () Mml_operators_common_attrib
 ;
syntax Mml_arccosh_qname
        = 
        arccosh: () Mml_operators_common_attrib
 ;
syntax Mml_arccot_qname
        = 
        arccot: () Mml_operators_common_attrib
 ;
syntax Mml_arccoth_qname
        = 
        arccoth: () Mml_operators_common_attrib
 ;
syntax Mml_arccsc_qname
        = 
        arccsc: () Mml_operators_common_attrib
 ;
syntax Mml_arccsch_qname
        = 
        arccsch: () Mml_operators_common_attrib
 ;
syntax Mml_arcsec_qname
        = 
        arcsec: () Mml_operators_common_attrib
 ;
syntax Mml_arcsech_qname
        = 
        arcsech: () Mml_operators_common_attrib
 ;
syntax Mml_arcsinh_qname
        = 
        arcsinh: () Mml_operators_common_attrib
 ;
syntax Mml_arctanh_qname
        = 
        arctanh: () Mml_operators_common_attrib
 ;
syntax Mml_cstatopnary
        = Mml_mean_qname
        | Mml_sdev_qname
        | Mml_variance_qname
        | Mml_median_qname
        | Mml_mode_qname
 ;
syntax Mml_mean_qname
        = 
        mean: () Mml_operators_common_attrib
 ;
syntax Mml_sdev_qname
        = 
        sdev: () Mml_operators_common_attrib
 ;
syntax Mml_variance_qname
        = 
        variance: () Mml_operators_common_attrib
 ;
syntax Mml_median_qname
        = 
        median: () Mml_operators_common_attrib
 ;
syntax Mml_mode_qname
        = 
        mode: () Mml_operators_common_attrib
 ;
syntax Mml_cstatopmoment
        = 
        Mml_moment_qname
 ;
syntax Mml_moment_qname
        = 
        moment: () Mml_operators_common_attrib
 ;
syntax Mml_clalgop1ary
        = Mml_determinant_qname
        | Mml_transpose_qname
 ;
syntax Mml_determinant_qname
        = 
        determinant: () Mml_operators_common_attrib
 ;
syntax Mml_transpose_qname
        = 
        transpose: () Mml_operators_common_attrib
 ;
syntax Mml_clalgop2ary
        = Mml_vectorproduct_qname
        | Mml_scalarproduct_qname
        | Mml_outerproduct_qname
 ;
syntax Mml_vectorproduct_qname
        = 
        vectorproduct: () Mml_operators_common_attrib
 ;
syntax Mml_scalarproduct_qname
        = 
        scalarproduct: () Mml_operators_common_attrib
 ;
syntax Mml_outerproduct_qname
        = 
        outerproduct: () Mml_operators_common_attrib
 ;
syntax Mml_clalgopnary
        = 
        Mml_selector_qname
 ;
syntax Mml_selector_qname
        = 
        selector: () Mml_operators_common_attrib
 ;
syntax Mml_cop1ary
        = Mml_cfuncop1ary
        | Mml_carithop1ary
        | Mml_clogicop1ary
        | Mml_ccalcop1ary
        | Mml_ctrigop
        | Mml_clalgop1ary
        | Mml_csetop1ary
 ;
syntax Mml_cop2ary
        = Mml_carithop2ary
        | Mml_clogicop2ary
        | Mml_clalgop2ary
        | Mml_csetop2ary
 ;
syntax Mml_copnary
        = Mml_cfuncopnary
        | Mml_carithopnary
        | Mml_clogicopnary
        | Mml_csetopnary
        | Mml_cstatopnary
        | Mml_clalgopnary
 ;
syntax Mml_copmisc
        = Mml_carithoproot
        | Mml_carithop1or2ary
        | Mml_ccalcop
        | Mml_cseqop
        | Mml_cstatopmoment
        | Mml_clogicopquant
 ;
syntax Mml_cother
        = Mml_condition_qname
        | Mml_declare_qname
        | Mml_sep_qname
 ;
syntax Mml_condition_qname
        = 
        condition: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_declare_qname
        = 
        declare: Mml_ContentExpression Mml_Common_attrib Mml_att_type Mml_att_scope Mml_att_nargs Mml_att_occurrence Mml_att_definition Mml_att_encoding
 ;
syntax Mml_sep_qname
        = 
        sep: ()
 ;
syntax Mml_cquantifier
        = Mml_lowlimit_qname
        | Mml_uplimit_qname
        | Mml_bvar_qname
        | Mml_degree_qname
        | Mml_logbase_qname
        | Mml_momentabout_qname
        | Mml_domainofapplication_qname
 ;
syntax Mml_lowlimit_qname
        = 
        lowlimit: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_uplimit_qname
        = 
        uplimit: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_bvar_qname
        = 
        bvar: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_degree_qname
        = 
        degree: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_logbase_qname
        = 
        logbase: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_momentabout_qname
        = 
        momentabout: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_domainofapplication_qname
        = 
        domainofapplication: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_cgenrel2ary
        = Mml_neq_qname
        | Mml_factorof_qname
 ;
syntax Mml_neq_qname
        = 
        neq: () Mml_operators_common_attrib
 ;
syntax Mml_factorof_qname
        = 
        factorof: () Mml_operators_common_attrib
 ;
syntax Mml_cgenrelnary
        = Mml_eq_qname
        | Mml_leq_qname
        | Mml_lt_qname
        | Mml_geq_qname
        | Mml_gt_qname
        | Mml_equivalent_qname
        | Mml_approx_qname
 ;
syntax Mml_eq_qname
        = 
        eq: () Mml_operators_common_attrib
 ;
syntax Mml_equivalent_qname
        = 
        equivalent: () Mml_operators_common_attrib
 ;
syntax Mml_approx_qname
        = 
        approx: () Mml_operators_common_attrib
 ;
syntax Mml_gt_qname
        = 
        gt: () Mml_operators_common_attrib
 ;
syntax Mml_lt_qname
        = 
        lt: () Mml_operators_common_attrib
 ;
syntax Mml_geq_qname
        = 
        geq: () Mml_operators_common_attrib
 ;
syntax Mml_leq_qname
        = 
        leq: () Mml_operators_common_attrib
 ;
syntax Mml_csetrel2ary
        = Mml_in_qname
        | Mml_notin_qname
        | Mml_notsubset_qname
        | Mml_notprsubset_qname
 ;
syntax Mml_in_qname
        = 
        in: () Mml_operators_common_attrib
 ;
syntax Mml_notin_qname
        = 
        notin: () Mml_operators_common_attrib
 ;
syntax Mml_notsubset_qname
        = 
        notsubset: () Mml_operators_common_attrib
 ;
syntax Mml_notprsubset_qname
        = 
        notprsubset: () Mml_operators_common_attrib
 ;
syntax Mml_csetrelnary
        = Mml_subset_qname
        | Mml_prsubset_qname
 ;
syntax Mml_subset_qname
        = 
        subset: () Mml_operators_common_attrib
 ;
syntax Mml_prsubset_qname
        = 
        prsubset: () Mml_operators_common_attrib
 ;
syntax Mml_cseqrel2ary
        = 
        Mml_tendsto_qname
 ;
syntax Mml_tendsto_qname
        = 
        tendsto: () Mml_operators_common_attrib Mml_att_type
 ;
syntax Mml_crel2ary
        = Mml_cgenrel2ary
        | Mml_csetrel2ary
        | Mml_cseqrel2ary
 ;
syntax Mml_crelnary
        = Mml_cgenrelnary
        | Mml_csetrelnary
 ;
syntax Mml_csemantics
        = Mml_semantics_qname
        | Mml_annotation_qname
        | Mml_annotation_xml_qname
 ;
syntax Mml_semantics_qname
        = 
        semantics: Mml_ContentExpression Mml_Common_attrib Mml_att_definition Mml_att_encoding
 ;
syntax Mml_annotation_qname
        = 
        annotation: Mml_Annotation_datatype Mml_Common_attrib Mml_att_encoding
 ;
syntax Mml_annotation_xml_qname
        = 
        annotation-xml: Mml_Annotation_xml_datatype Mml_Common_attrib Mml_att_encoding
 ;
syntax Mml_cspecial
        = Mml_apply_qname
        | Mml_reln_qname
        | Mml_lambda_qname
 ;
syntax Mml_apply_qname
        = 
        apply: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_reln_qname
        = 
        reln: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_lambda_qname
        = 
        lambda: Mml_ContentExpression Mml_Common_attrib
 ;
syntax Mml_c0ary
        = Mml_integers_qname
        | Mml_reals_qname
        | Mml_rationals_qname
        | Mml_naturalnumbers_qname
        | Mml_complexes_qname
        | Mml_primes_qname
        | Mml_exponentiale_qname
        | Mml_imaginaryi_qname
        | Mml_notanumber_qname
        | Mml_true_qname
        | Mml_false_qname
        | Mml_emptyset_qname
        | Mml_eulergamma_qname
        | Mml_infinity_qname
 ;
syntax Mml_integers_qname
        = 
        integers: () Mml_operators_common_attrib
 ;
syntax Mml_reals_qname
        = 
        reals: () Mml_operators_common_attrib
 ;
syntax Mml_rationals_qname
        = 
        rationals: () Mml_operators_common_attrib
 ;
syntax Mml_naturalnumbers_qname
        = 
        naturalnumbers: () Mml_operators_common_attrib
 ;
syntax Mml_complexes_qname
        = 
        complexes: () Mml_operators_common_attrib
 ;
syntax Mml_primes_qname
        = 
        primes: () Mml_operators_common_attrib
 ;
syntax Mml_exponentiale_qname
        = 
        exponentiale: () Mml_operators_common_attrib
 ;
syntax Mml_imaginaryi_qname
        = 
        imaginaryi: () Mml_operators_common_attrib
 ;
syntax Mml_notanumber_qname
        = 
        notanumber: () Mml_operators_common_attrib
 ;
syntax Mml_true_qname
        = 
        true: () Mml_operators_common_attrib
 ;
syntax Mml_false_qname
        = 
        false: () Mml_operators_common_attrib
 ;
syntax Mml_emptyset_qname
        = 
        emptyset: () Mml_operators_common_attrib
 ;
syntax Mml_pi_qname
        = 
        pi: () Mml_operators_common_attrib
 ;
syntax Mml_eulergamma_qname
        = 
        eulergamma: () Mml_operators_common_attrib
 ;
syntax Mml_infinity_qname
        = 
        infinity: () Mml_operators_common_attrib
 ;
syntax Mml_id_datatype
        = 
        String
 ;
syntax Mml_idref_datatype
        = 
        String
 ;
syntax Mml_number_datatype
        = 
        Integer
 ;
syntax Mml_positiveinteger_datatype
        = 
        Integer
 ;
syntax Mml_uri_datatype
        = 
        String
 ;
syntax Mml_nonnegativefloat_datatype
        = 
        String
 ;
syntax Mml_length_datatype
        = 
        String
 ;
syntax Mml_color_datatype
        = String
        | String
        | "transparent"
 ;
syntax Mml_Annotation_datatype
        = 
        String
 ;
syntax Mml_Annotation_xml_datatype
        = 
        (String | (String* Mml_Annotation_xml_datatype))*
 ;
syntax Mml_namedspace_datatype
        = String
        | "veryverythinmathspace"
        | "verythinmathspace"
        | "thinmathspace"
        | "mediummathspace"
        | "thickmathspace"
        | "verythickmathspace"
        | "veryverythickmathspace"
 ;
syntax Mml_align_datatype
        = 
        ("top" | "bottom" | "center" | "baseline" | "axis") Integer?
 ;
syntax Mml_rowalign_datatype
        = 
        ("top" | "bottom" | "center" | "baseline" | "axis")+
 ;
syntax Mml_columnalign_datatype
        = 
        ("left" | "center" | "right")+
 ;
syntax Mml_columnwidth_datatype
        = 
        ("auto" | String | (String | "veryverythinmathspace" | "verythinmathspace" | "thinmathspace" | "mediummathspace" | "thickmathspace" | "verythickmathspace" | "veryverythickmathspace") | "fit")+
 ;
syntax Mml_columnspan_datatype
        = 
        Mml_positiveinteger_datatype
 ;
syntax Mml_groupalign_datatype
        = 
        String
 ;
syntax Mml_alignmentscope_datatype
        = 
        ("true" | "false")+
 ;
syntax Mml_rowspacing_datatype
        = 
        String+
 ;
syntax Mml_columnspacing_datatype
        = 
        (String (String | "veryverythinmathspace" | "verythinmathspace" | "thinmathspace" | "mediummathspace" | "thickmathspace" | "verythickmathspace" | "veryverythickmathspace"))+
 ;
syntax Mml_lines_datatype
        = 
        ("none" | "solid" | "dashed")+
 ;
syntax Mml_framespacing_datatype
        = 
        (String | (String | "veryverythinmathspace" | "verythinmathspace" | "thinmathspace" | "mediummathspace" | "thickmathspace" | "verythickmathspace" | "veryverythickmathspace")) (String | (String | "veryverythinmathspace" | "verythinmathspace" | "thinmathspace" | "mediummathspace" | "thickmathspace" | "verythickmathspace" | "veryverythickmathspace"))
 ;
syntax Mml_ContentExpression
        = 
        (Mml_Content | Mml_PresInCont)*
 ;
syntax Mml_PresExpression
        = 
        (Mml_Presentation | Mml_ContInPres)*
 ;
syntax Mml_MathExpression
        = 
        (Mml_PresInCont | Mml_ContInPres)*
 ;
syntax Mml_MathMLCharacters
        = Mml_mglyph_qname
        | String
 ;
syntax Mml_Common_attrib
        = 
        Mml_uri_datatype xlink:href? String class? String style? Mml_id_datatype id? Mml_idref_datatype xref? String other?
 ;
syntax Mml_att_macros
        = 
        String macros?
 ;
syntax Mml_att_mode
        = 
        String mode?
 ;
syntax Mml_att_display
        = 
        String display?
 ;
syntax Mml_att_topinfo
        = 
        Mml_Common_attrib Mml_att_macros Mml_att_mode Mml_att_display
 ;
syntax Mml_att_baseline
        = 
        String baseline?
 ;
syntax Mml_att_overflow
        = 
        ("scroll" | "elide" | "truncate" | "scale") overflow?
 ;
syntax Mml_att_altimg
        = 
        Mml_uri_datatype altimg?
 ;
syntax Mml_att_alttext
        = 
        String alttext?
 ;
syntax Mml_att_browif
        = 
        Mml_att_type Mml_att_name Mml_att_height Mml_att_width Mml_att_baseline Mml_att_overflow Mml_att_altimg Mml_att_alttext
 ;
syntax Mml_math_qname
        = 
        math: Mml_MathExpression Mml_att_topinfo Mml_att_browif
 ;
syntax Mml_pactions
        = 
        Mml_maction_qname
 ;
syntax Mml_maction_qname
        = 
        maction: Mml_PresExpression Mml_Common_attrib Mml_att_actiontype
 ;
syntax Mml_PresInCont
        = Mml_ptoken
        | Mml_petoken
        | Mml_plschema
        | Mml_peschema
        | Mml_pactions
 ;
syntax Mml_Presentation
        = Mml_ptoken
        | Mml_petoken
        | Mml_pscreschema
        | Mml_plschema
        | Mml_peschema
        | Mml_pactions
 ;
syntax Mml_att_fontsize
        = 
        Mml_length_datatype fontsize?
 ;
syntax Mml_att_fontweight
        = 
        ("normal" | "bold") fontweight?
 ;
syntax Mml_att_fontstyle
        = 
        ("normal" | "italic") fontstyle?
 ;
syntax Mml_att_fontfamily
        = 
        String fontfamily?
 ;
syntax Mml_att_color
        = 
        Mml_color_datatype color?
 ;
syntax Mml_att_mathvariant
        = 
        ("normal" | "bold" | "italic" | "bold-italic" | "double-struck" | "bold-fraktur" | "script" | "bold-script" | "fraktur" | "sans-serif" | "bold-sans-serif" | "sans-serif-italic" | "sans-serif-bold-italic" | "monospace") mathvariant?
 ;
syntax Mml_att_mathsize
        = 
        ("small" | "normal" | "big" | Mml_length_datatype) mathsize?
 ;
syntax Mml_att_mathcolor
        = 
        Mml_color_datatype mathcolor?
 ;
syntax Mml_att_mathbackground
        = 
        Mml_color_datatype mathbackground?
 ;
syntax Mml_att_fontinfo
        = 
        Mml_att_fontsize Mml_att_fontweight Mml_att_fontstyle Mml_att_fontfamily Mml_att_color Mml_att_mathvariant Mml_att_mathsize Mml_att_mathcolor Mml_att_mathbackground
 ;
syntax Mml_att_form
        = 
        ("prefix" | "infix" | "postfix") form?
 ;
syntax Mml_att_fence
        = 
        ("true" | "false") fence?
 ;
syntax Mml_att_separator
        = 
        ("true" | "false") separator?
 ;
syntax Mml_att_lspace
        = 
        Mml_namedspace_datatype lspace?
 ;
syntax Mml_att_rspace
        = 
        Mml_namedspace_datatype rspace?
 ;
syntax Mml_att_stretchy
        = 
        ("true" | "false") stretchy?
 ;
syntax Mml_att_symmetric
        = 
        ("true" | "false") symmetric?
 ;
syntax Mml_att_maxsize
        = 
        (Mml_namedspace_datatype | "infinity") maxsize?
 ;
syntax Mml_att_minsize
        = 
        Mml_namedspace_datatype minsize?
 ;
syntax Mml_att_largeop
        = 
        ("true" | "false") largeop?
 ;
syntax Mml_att_movablelimits
        = 
        ("true" | "false") movablelimits?
 ;
syntax Mml_att_accent
        = 
        ("true" | "false") accent?
 ;
syntax Mml_att_opinfo
        = 
        Mml_att_form Mml_att_fence Mml_att_separator Mml_att_lspace Mml_att_rspace Mml_att_stretchy Mml_att_symmetric Mml_att_maxsize Mml_att_minsize Mml_att_largeop Mml_att_movablelimits Mml_att_accent
 ;
syntax Mml_att_width
        = 
        Mml_namedspace_datatype width?
 ;
syntax Mml_att_height
        = 
        Mml_length_datatype height?
 ;
syntax Mml_att_depth
        = 
        Mml_length_datatype depth?
 ;
syntax Mml_att_linebreak
        = 
        ("auto" | "newline" | "indentingnewline" | "nobreak" | "goodbreak" | "badbreak") linebreak?
 ;
syntax Mml_att_sizeinfo
        = 
        Mml_att_width Mml_att_height Mml_att_depth
 ;
syntax Mml_att_lquote
        = 
        String lquote?
 ;
syntax Mml_att_rquote
        = 
        String rquote?
 ;
syntax Mml_att_linethickness
        = 
        (Mml_length_datatype | "thin" | "medium" | "thick") linethickness?
 ;
syntax Mml_att_scriptlevel
        = 
        Mml_number_datatype scriptlevel?
 ;
syntax Mml_att_displaystyle
        = 
        ("true" | "false") displaystyle?
 ;
syntax Mml_att_scriptsizemultiplier
        = 
        Mml_nonnegativefloat_datatype scriptsizemultiplier?
 ;
syntax Mml_att_scriptminsize
        = 
        Mml_length_datatype scriptminsize?
 ;
syntax Mml_att_background
        = 
        Mml_color_datatype background?
 ;
syntax Mml_att_veryverythinmathspace
        = 
        Mml_length_datatype veryverythinmathspace?
 ;
syntax Mml_att_verythinmathspace
        = 
        Mml_length_datatype verythinmathspace?
 ;
syntax Mml_att_thinmathspace
        = 
        Mml_length_datatype thinmathspace?
 ;
syntax Mml_att_mediummathspace
        = 
        Mml_length_datatype mediummathspace?
 ;
syntax Mml_att_thickmathspace
        = 
        Mml_length_datatype thickmathspace?
 ;
syntax Mml_att_verythickmathspace
        = 
        Mml_length_datatype verythickmathspace?
 ;
syntax Mml_att_veryverythickmathspace
        = 
        Mml_length_datatype veryverythickmathspace?
 ;
syntax Mml_att_open
        = 
        String open?
 ;
syntax Mml_att_close
        = 
        String close?
 ;
syntax Mml_att_separators
        = 
        String separators?
 ;
syntax Mml_att_subscriptshift
        = 
        Mml_length_datatype subscriptshift?
 ;
syntax Mml_att_superscriptshift
        = 
        Mml_length_datatype superscriptshift?
 ;
syntax Mml_att_accentunder
        = 
        ("true" | "false") accentunder?
 ;
syntax Mml_att_align
        = 
        Mml_align_datatype align?
 ;
syntax Mml_att_rowalign
        = 
        Mml_rowalign_datatype rowalign?
 ;
syntax Mml_att_columnalign
        = 
        Mml_columnalign_datatype columnalign?
 ;
syntax Mml_att_columnwidth
        = 
        Mml_columnwidth_datatype columnwidth?
 ;
syntax Mml_att_groupalign
        = 
        Mml_groupalign_datatype groupalign?
 ;
syntax Mml_att_alignmentscope
        = 
        Mml_alignmentscope_datatype alignmentscope?
 ;
syntax Mml_att_rowspacing
        = 
        Mml_rowspacing_datatype rowspacing?
 ;
syntax Mml_att_columnspacing
        = 
        Mml_columnspacing_datatype columnspacing?
 ;
syntax Mml_att_rowlines
        = 
        Mml_lines_datatype rowlines?
 ;
syntax Mml_att_columnlines
        = 
        Mml_lines_datatype columnlines?
 ;
syntax Mml_att_frame
        = 
        ("none" | "solid" | "dashed") frame?
 ;
syntax Mml_att_framespacing
        = 
        Mml_framespacing_datatype framespacing?
 ;
syntax Mml_att_equalrows
        = 
        ("true" | "false") equalrows?
 ;
syntax Mml_att_equalcolumns
        = 
        ("true" | "false") equalcolumns?
 ;
syntax Mml_att_tableinfo
        = 
        Mml_att_align Mml_att_rowalign Mml_att_columnalign Mml_att_columnwidth Mml_att_groupalign Mml_att_alignmentscope Mml_att_rowspacing Mml_att_columnspacing Mml_att_rowlines Mml_att_columnlines Mml_att_frame Mml_att_framespacing Mml_att_equalrows Mml_att_equalcolumns Mml_att_displaystyle
 ;
syntax Mml_att_rowspan
        = 
        ("top" | "bottom" | "center" | "baseline" | "axis ") rowspan?
 ;
syntax Mml_att_columnspan
        = 
        Mml_columnspan_datatype columnspan?
 ;
syntax Mml_att_edge
        = 
        ("left" | "right") edge?
 ;
syntax Mml_att_actiontype
        = 
        (("toggle" actiontype Mml_positiveinteger_datatype selection) | "statusline" actiontype | "tooltip" actiontype | ("highlight" actiontype Mml_color_datatype*) | ("menu" actiontype Mml_positiveinteger_datatype selection))?
 ;
syntax Mml_att_name
        = 
        String name?
 ;
syntax Mml_att_alt
        = 
        String alt?
 ;
syntax Mml_att_index
        = 
        Mml_number_datatype index?
 ;
syntax Mml_att_bevelled
        = 
        ("true" | "false") bevelled?
 ;
syntax Mml_ptoken
        = Mml_mi_qname
        | Mml_mn_qname
        | Mml_mo_qname
        | Mml_mtext_qname
        | Mml_ms_qname
 ;
syntax Mml_mi_qname
        = 
        mi: (Mml_MathMLCharacters | Mml_malignmark_qname)* Mml_Common_attrib Mml_att_fontinfo
 ;
syntax Mml_mn_qname
        = 
        mn: (Mml_MathMLCharacters | Mml_malignmark_qname)* Mml_Common_attrib Mml_att_fontinfo
 ;
syntax Mml_mo_qname
        = 
        mo: (Mml_MathMLCharacters | Mml_malignmark_qname)* Mml_Common_attrib Mml_att_fontinfo Mml_att_opinfo
 ;
syntax Mml_mtext_qname
        = 
        mtext: (Mml_MathMLCharacters | Mml_malignmark_qname)* Mml_Common_attrib Mml_att_fontinfo
 ;
syntax Mml_ms_qname
        = 
        ms: (Mml_MathMLCharacters | Mml_malignmark_qname)* Mml_Common_attrib Mml_att_fontinfo Mml_att_lquote Mml_att_rquote
 ;
syntax Mml_petoken
        = 
        Mml_mspace_qname
 ;
syntax Mml_mspace_qname
        = 
        mspace: () Mml_Common_attrib Mml_att_sizeinfo Mml_att_linebreak
 ;
syntax Mml_peschema
        = Mml_maligngroup_qname
        | Mml_malignmark_qname
 ;
syntax Mml_malignmark_qname
        = 
        malignmark: () Mml_att_edge
 ;
syntax Mml_maligngroup_qname
        = 
        maligngroup: () Mml_Common_attrib Mml_att_groupalign
 ;
syntax Mml_mglyph_qname
        = 
        mglyph: () Mml_att_alt Mml_att_fontfamily Mml_att_index
 ;
syntax Mml_pgenschema
        = Mml_mrow_qname
        | Mml_mfrac_qname
        | Mml_msqrt_qname
        | Mml_mroot_qname
        | Mml_menclose_qname
        | Mml_mstyle_qname
        | Mml_merror_qname
        | Mml_mpadded_qname
        | Mml_mphantom_qname
        | Mml_mfenced_qname
 ;
syntax Mml_mrow_qname
        = 
        mrow: Mml_PresExpression Mml_Common_attrib
 ;
syntax Mml_mfrac_qname
        = 
        mfrac: Mml_PresExpression Mml_Common_attrib Mml_att_bevelled Mml_att_linethickness
 ;
syntax Mml_msqrt_qname
        = 
        msqrt: Mml_PresExpression Mml_Common_attrib
 ;
syntax Mml_menclose_qname
        = 
        menclose: Mml_PresExpression Mml_Common_attrib ("longdiv" | "actuarial" | "radical") notation?
 ;
syntax Mml_mroot_qname
        = 
        mroot: Mml_PresExpression Mml_Common_attrib
 ;
syntax Mml_mstyle_qname
        = 
        mstyle: Mml_PresExpression Mml_Common_attrib Mml_att_fontinfo Mml_att_opinfo Mml_att_lquote Mml_att_rquote Mml_att_linethickness Mml_att_scriptlevel Mml_att_scriptsizemultiplier Mml_att_scriptminsize Mml_att_background Mml_att_veryverythinmathspace Mml_att_verythinmathspace Mml_att_thinmathspace Mml_att_mediummathspace Mml_att_thickmathspace Mml_att_verythickmathspace Mml_att_veryverythickmathspace Mml_att_open Mml_att_close Mml_att_separators Mml_att_subscriptshift Mml_att_superscriptshift Mml_att_accentunder Mml_att_tableinfo Mml_att_rowspan Mml_att_columnspan Mml_att_edge Mml_att_actiontype
 ;
syntax Mml_merror_qname
        = 
        merror: Mml_PresExpression Mml_Common_attrib
 ;
syntax Mml_mpadded_qname
        = 
        mpadded: Mml_PresExpression Mml_Common_attrib Mml_att_sizeinfo Mml_att_lspace
 ;
syntax Mml_mphantom_qname
        = 
        mphantom: Mml_PresExpression Mml_Common_attrib
 ;
syntax Mml_mfenced_qname
        = 
        mfenced: Mml_PresExpression Mml_Common_attrib Mml_att_open Mml_att_close Mml_att_separators
 ;
syntax Mml_pscreschema
        = Mml_mprescripts_qname
        | Mml_none_qname
 ;
syntax Mml_mprescripts_qname
        = 
        mprescripts: ()
 ;
syntax Mml_none_qname
        = 
        none: ()
 ;
syntax Mml_pscrschema
        = Mml_msub_qname
        | Mml_msup_qname
        | Mml_msubsup_qname
        | Mml_munder_qname
        | Mml_mover_qname
        | Mml_munderover_qname
        | Mml_mmultiscripts_qname
 ;
syntax Mml_msub_qname
        = 
        msub: Mml_PresExpression Mml_Common_attrib Mml_att_subscriptshift
 ;
syntax Mml_msup_qname
        = 
        msup: Mml_PresExpression Mml_Common_attrib Mml_att_superscriptshift
 ;
syntax Mml_msubsup_qname
        = 
        msubsup: Mml_PresExpression Mml_Common_attrib Mml_att_subscriptshift Mml_att_superscriptshift
 ;
syntax Mml_munder_qname
        = 
        munder: Mml_PresExpression Mml_Common_attrib Mml_att_accentunder
 ;
syntax Mml_mover_qname
        = 
        mover: Mml_PresExpression Mml_Common_attrib Mml_att_accent
 ;
syntax Mml_munderover_qname
        = 
        munderover: Mml_PresExpression Mml_Common_attrib Mml_att_accent Mml_att_accentunder
 ;
syntax Mml_mmultiscripts_qname
        = 
        mmultiscripts: Mml_PresExpression Mml_Common_attrib Mml_att_subscriptshift Mml_att_superscriptshift
 ;
syntax Mml_ptabschema
        = Mml_mtable_qname
        | Mml_mtr_qname
        | Mml_mlabeledtr_qname
        | Mml_mtd_qname
 ;
syntax Mml_mtable_qname
        = 
        mtable: Mml_PresExpression Mml_Common_attrib Mml_att_tableinfo
 ;
syntax Mml_mtr_qname
        = 
        mtr: Mml_PresExpression Mml_Common_attrib Mml_att_rowalign Mml_att_columnalign Mml_att_groupalign
 ;
syntax Mml_mlabeledtr_qname
        = 
        mlabeledtr: Mml_PresExpression Mml_Common_attrib Mml_att_rowalign Mml_att_columnalign Mml_att_groupalign
 ;
syntax Mml_mtd_qname
        = 
        mtd: Mml_PresExpression Mml_Common_attrib Mml_att_rowalign Mml_att_columnalign Mml_att_groupalign Mml_att_rowspan Mml_att_columnspan
 ;
syntax Mml_plschema
        = Mml_pgenschema
        | Mml_pscrschema
        | Mml_ptabschema
 ;

public void main()
{
	registerLanguage("Mathml_furubayashi", "ext", mml.math.qname(str input, loc org) {return parse(#mml.math.qname, input, org);});
	println("Language registered.");
}
