@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Delphi

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Asm_stmtblock
        = 
        "asm" Asm_stm* End_struct
 ;
syntax Asm_stm
        = 
        Asmlabel_colon? Asm_unlabeledstm_semi?
 ;
syntax Asmlabel_colon
        = 
        Asmlabel Colon
 ;
syntax Asm_unlabeledstm_semi
        = 
        Asm_unlabeledstm ";"? NL
 ;
syntax Asmid
        = "@"* Asmlbl
        | "@+"* Id
        | "@+"* Anynumber
        | "@+"* Key
 ;
syntax Asmlabel
        = SPOFF Asmid+ SPON
        | Label_id
 ;
syntax Asm_expr
        = 
        Asm_term Asm_infix_expr*
 ;
syntax Asm_infix_expr
        = 
        Asm_infixop Asm_term
 ;
syntax Asm_term
        = 
        Asm_prefixop* Asm_primary Asm_postfixop*
 ;
syntax Asm_primary
        = "[" Asm_expr "]"
        | "(" Asm_expr ")"
        | Asm_register
        | Id
        | Anynumber
        | Charlit
        | Stringlit
        | Asmhex
        | SP Asmlabel
 ;
syntax Asmhex
        = 
        Number SPOFF Id SPON
 ;
syntax Asm_unlabeledstm
        = Asm_directive 
		Asm_directive_arg
		","
	      
        | Asm_opcode_prefix? Asm_opcode 
		Asm_expr
		","
	      
 ;
syntax Asm_opcode_prefix
        = 
        "lock" Space?
 ;
syntax Asm_opcode
        = "adc"
        | "add"
        | "and"
        | "bswap"
        | "bt"
        | "btr"
        | "bts"
        | "call"
        | "cdq"
        | "cld"
        | "cmp"
        | "dec"
        | "div"
        | "f2xm1"
        | "fabs"
        | "fadd"
        | "faddp"
        | "fbstp"
        | "fchs"
        | "fclex"
        | "fcom"
        | "fcomp"
        | "fcos"
        | "fdiv"
        | "fdivp"
        | "fdivrp"
        | "ffree"
        | "fiadd"
        | "fidiv"
        | "fild"
        | "fimul"
        | "fistp"
        | "fld"
        | "fld1"
        | "fldcw"
        | "fldl2e"
        | "fldlg2"
        | "fldln2"
        | "fldz"
        | "fmul"
        | "fmulp"
        | "fnclex"
        | "fninit"
        | "fnstcw"
        | "fnstsw"
        | "fpatan"
        | "fprem"
        | "fptan"
        | "frndint"
        | "fscale"
        | "fsin"
        | "fsincos"
        | "fsqrt"
        | "fstcw"
        | "fstp"
        | "fstsw"
        | "fsub"
        | "fsubp"
        | "fsubr"
        | "fwait"
        | "fxch"
        | "fxtract"
        | "fyl2x"
        | "fyl2xp1"
        | "imul"
        | "inc"
        | "int"
        | "ja"
        | "jae"
        | "jb"
        | "jbe"
        | "jc"
        | "je"
        | "jecxz"
        | "jg"
        | "jge"
        | "jl"
        | "jle"
        | "jmp"
        | "jnc"
        | "jne"
        | "jnl"
        | "jns"
        | "jnz"
        | "jo"
        | "jp"
        | "js"
        | "jz"
        | "lea"
        | "leave"
        | "lodsb"
        | "lodsw"
        | "loop"
        | "mov"
        | "movsb"
        | "movsx"
        | "movzx"
        | "mul"
        | "neg"
        | "not"
        | "or"
        | "pop"
        | "popfd"
        | "push"
        | "pushfd"
        | "rcl"
        | "rcr"
        | "rep"
        | "repe"
        | "repne"
        | "ret"
        | "rol"
        | "ror"
        | "sahf"
        | "sar"
        | "sbb"
        | "seto"
        | "shl"
        | "shld"
        | "shr"
        | "shrd"
        | "std"
        | "stosb"
        | "stosd"
        | "stosw"
        | "sub"
        | "test"
        | "wait"
        | "xadd"
        | "xchg"
        | "xor"
 ;
syntax Asm_directive
        = "DB"
        | "DW"
        | "DD"
        | "DQ"
 ;
syntax Asm_directive_arg
        = Charlit
        | Sign? Anynumber
        | Asm_expr
 ;
syntax Asm_register
        = "ST" "(" Integernumber ")"
        | "ST"
        | "FS"
        | "GS"
        | "EAX"
        | "EBX"
        | "ECX"
        | "EDX"
        | "ESP"
        | "EBP"
        | "ESI"
        | "EDI"
        | "AX"
        | "BX"
        | "CX"
        | "DX"
        | "SP"
        | "BP"
        | "SI"
        | "DI"
        | "AL"
        | "BL"
        | "CL"
        | "DL"
        | "CS"
        | "DS"
        | "SS"
        | "ES"
        | "AH"
        | "BH"
        | "CH"
        | "DH"
        | "CS" Segmt_overr?
        | "DS" Segmt_overr?
        | "SS" Segmt_overr?
        | "FS" Segmt_overr?
        | "GS" Segmt_overr?
        | "ES" Segmt_overr?
 ;
syntax Segmt_overr
        = 
        SPOFF ":" Asm_expr SPON
 ;
syntax Asm_prefixop
        = "high"
        | "low"
        | "offset"
        | "dmtindex"
        | "vmtoffset"
        | "type"
        | "not"
        | "&"
        | Sign
        | "@"
 ;
syntax Asm_infixop
        = "."
        | "+"
        | "-"
        | "*"
        | "/"
        | "ptr"
        | "mod"
        | "xor"
        | "and"
        | "or"
        | "shr"
        | "shl"
 ;
syntax Asm_postfixop
        = "[" Asm_expr "]"
        | "." Asm_expr
 ;
syntax Procedure_body
        = 
        Asm_stmtblock
 ;
syntax Unlabeled_stm
        = 
        Asm_stmtblock
 ;
