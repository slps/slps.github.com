all:
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/hats/abs/grammar.bgf > tank/hats/abs.bgf
	_dev/format tank hats/abs hats/abs
	_dev/format tank fl/antlr fl/antlr
	_dev/format tank fl/dcg fl/dcg
	_dev/format tank fl/python fl/python
	_dev/format tank fl/rascal-c fl/rascal-c
	_dev/format tank fl/sdf fl/sdf
	_dev/format tank fl/txl fl/txl
	_dev/format tank fl/ecore fl/ecore
	_dev/format tank fl/emf fl/emf
	_dev/format tank fl/rascal-a fl/rascal-a
	_dev/format tank fl/xsd fl/xsd
	_dev/format tank fl/om fl/om
	_dev/format tank fl/jaxb fl/jaxb
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/asf-sdf/grammar.bgf > tank/metasyntax/asf-sdf.bgf
	_dev/format tank metasyntax/asf-sdf metasyntax/asf-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/asfix-sdf/grammar.bgf > tank/metasyntax/asfix-sdf.bgf
	_dev/format tank metasyntax/asfix-sdf metasyntax/asfix-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/aterms-sdf/grammar.bgf > tank/metasyntax/aterms-sdf.bgf
	_dev/format tank metasyntax/aterms-sdf metasyntax/aterms-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/aterms-rascal/grammar.bgf > tank/metasyntax/aterms-rascal.bgf
	_dev/format tank metasyntax/aterms-rascal metasyntax/aterms-rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/bnf-sdf/grammar.bgf > tank/metasyntax/bnf-sdf.bgf
	_dev/format tank metasyntax/bnf-sdf metasyntax/bnf-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/box-rascal/grammar.bgf > tank/metasyntax/box-rascal.bgf
	_dev/format tank metasyntax/box-rascal metasyntax/box-rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-bgf/grammar.bgf > tank/metasyntax/ebnf-bgf.bgf
	_dev/format tank metasyntax/ebnf-bgf metasyntax/ebnf-bgf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-iso-1/grammar.bgf > tank/metasyntax/ebnf-iso-1.bgf
	_dev/format tank metasyntax/ebnf-iso-1 metasyntax/ebnf-iso-1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-iso-2/grammar.bgf > tank/metasyntax/ebnf-iso-2.bgf
	_dev/format tank metasyntax/ebnf-iso-2 metasyntax/ebnf-iso-2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-iso-3/grammar.bgf > tank/metasyntax/ebnf-iso-3.bgf
	_dev/format tank metasyntax/ebnf-iso-3 metasyntax/ebnf-iso-3
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-sdf/grammar.bgf > tank/metasyntax/ebnf-sdf.bgf
	_dev/format tank metasyntax/ebnf-sdf metasyntax/ebnf-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/lll-ldta/grammar.bgf > tank/metasyntax/lll-ldta.bgf
	_dev/format tank metasyntax/lll-ldta metasyntax/lll-ldta
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/lll-kort/grammar.bgf > tank/metasyntax/lll-kort.bgf
	_dev/format tank metasyntax/lll-kort metasyntax/lll-kort
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/rascal-new/grammar.bgf > tank/metasyntax/rascal-new.bgf
	_dev/format tank metasyntax/rascal-new metasyntax/rascal-new
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/rascal-adt-simple/grammar.bgf > tank/metasyntax/rascal-adt-simple.bgf
	_dev/format tank metasyntax/rascal-adt-simple metasyntax/rascal-adt-simple
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/relaxng/grammar.bgf > tank/metasyntax/relaxng.bgf
	_dev/format tank metasyntax/relaxng metasyntax/relaxng
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/sdf-sdf/grammar.bgf > tank/metasyntax/sdf-sdf.bgf
	_dev/format tank metasyntax/sdf-sdf metasyntax/sdf-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/sdf-rascal/grammar.bgf > tank/metasyntax/sdf-rascal.bgf
	_dev/format tank metasyntax/sdf-rascal metasyntax/sdf-rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/s-expressions/grammar.bgf > tank/metasyntax/s-expressions.bgf
	_dev/format tank metasyntax/s-expressions metasyntax/s-expressions
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/txl/grammar.bgf > tank/metasyntax/txl.bgf
	_dev/format tank metasyntax/txl metasyntax/txl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xsd/tennison/grammar.bgf > tank/metasyntax/xsd-tennison.bgf
	_dev/format tank metasyntax/xsd-tennison xsd/tennison
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xsd/guyard/grammar.bgf > tank/metasyntax/xsd-guyard.bgf
	_dev/format tank metasyntax/xsd-guyard xsd/guyard
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/yacc-sdf/grammar.bgf > tank/metasyntax/yacc-sdf.bgf
	_dev/format tank metasyntax/yacc-sdf metasyntax/yacc-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/yacc-txl/grammar.bgf > tank/metasyntax/yacc-txl.bgf
	_dev/format tank metasyntax/yacc-txl metasyntax/yacc-txl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/ant/grammar.bgf > tank/develop/ant.bgf
	_dev/format tank develop/ant develop/ant
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/bugzilla/grammar.bgf > tank/develop/bugzilla.bgf
	_dev/format tank develop/bugzilla develop/bugzilla
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/make/grammar.bgf > tank/develop/make.bgf
	_dev/format tank develop/make develop/make
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/java-project/grammar.bgf > tank/develop/java-project.bgf
	_dev/format tank develop/java-project develop/java-project
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pico/sdf/grammar.bgf > tank/pico/sdf.bgf
	_dev/format tank pico/sdf pico/sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pico/rascal/grammar.bgf > tank/pico/rascal.bgf
	_dev/format tank pico/rascal pico/rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/saf/abstract/grammar.bgf > tank/saf/abstract.bgf
	_dev/format tank saf/abstract saf/abstract
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/saf/concrete/grammar.bgf > tank/saf/concrete.bgf
	_dev/format tank saf/concrete saf/concrete
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/btf/grammar.bgf > tank/slps/slps-btf.bgf
	_dev/format tank slps/slps-btf slps/btf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/edd/grammar.bgf > tank/slps/slps-edd.bgf
	_dev/format tank slps/slps-edd slps/edd
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/exbgf/grammar.bgf > tank/slps/slps-exbgf.bgf
	_dev/format tank slps/slps-exbgf slps/exbgf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/xbgf-xsd/grammar.bgf > tank/slps/slps-xbgf-xsd.bgf
	_dev/format tank slps/slps-xbgf-xsd slps/xbgf-xsd
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/xbgf-adt/grammar.bgf > tank/slps/slps-xbgf-adt.bgf
	_dev/format tank slps/slps-xbgf-adt slps/xbgf-adt
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/xldf/grammar.bgf > tank/slps/slps-xldf.bgf
	_dev/format tank slps/slps-xldf slps/xldf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xbgf/xoutcome/grammar.bgf > tank/slps/xbgf-xoutcome.bgf
	_dev/format tank slps/xbgf-xoutcome xbgf/xoutcome
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/cbgf-xsd/grammar.bgf > tank/slps/slps-cbgf-xsd.bgf
	_dev/format tank slps/slps-cbgf-xsd slps/cbgf-xsd
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/cbgf-adt/grammar.bgf > tank/slps/slps-cbgf-adt.bgf
	_dev/format tank slps/slps-cbgf-adt slps/cbgf-adt
	cp ../slps/topics/grammars/bgf/v1.0-xsd/grammar.bgf tank/slps/bgf-v1.0-xsd.bgf
	_dev/format tank slps/bgf-v1.0-xsd bgf/v1.0-xsd
	cp ../slps/topics/grammars/bgf/v2.0-xsd/grammar.bgf tank/slps/bgf-v2.0-xsd.bgf
	_dev/format tank slps/bgf-v2.0-xsd bgf/v2.0-xsd
	cp ../slps/topics/grammars/bgf/v2.1-xsd/grammar.bgf tank/slps/bgf-v2.1-xsd.bgf
	_dev/format tank slps/bgf-v2.1-xsd bgf/v2.1-xsd
	cp ../slps/topics/grammars/bgf/v3.0-xsd/grammar.bgf tank/slps/bgf-v3.0-xsd.bgf
	_dev/format tank slps/bgf-v3.0-xsd bgf/v3.0-xsd
	cp ../slps/topics/grammars/bgf/v3.1-xsd/grammar.bgf tank/slps/bgf-v3.1-xsd.bgf
	_dev/format tank slps/bgf-v3.1-xsd bgf/v3.1-xsd
	cp ../slps/topics/grammars/bgf/v4.0-xsd/grammar.bgf tank/slps/bgf-v4.0-xsd.bgf
	_dev/format tank slps/bgf-v4.0-xsd bgf/v4.0-xsd
	cp ../slps/topics/grammars/bgf/v4.1-adt/grammar.bgf tank/slps/bgf-v4.1-adt.bgf
	_dev/format tank slps/bgf-v4.1-adt bgf/v4.1-adt
	cp ../slps/topics/grammars/bgf/v4.2-adt/grammar.bgf tank/slps/bgf-v4.2-adt.bgf
	_dev/format tank slps/bgf-v4.2-adt bgf/v4.2-adt
	cp ../slps/topics/grammars/bgf/v4.3-adt/grammar.bgf tank/slps/bgf-v4.3-adt.bgf
	_dev/format tank slps/bgf-v4.3-adt bgf/v4.3-adt
	cp ../slps/topics/grammars/bgf/v5.0-adt/grammar.bgf tank/slps/bgf-v5.0-adt.bgf
	_dev/format tank slps/bgf-v5.0-adt bgf/v5.0-adt
	cp ../slps/topics/grammars/bgf/v5.1-adt/grammar.bgf tank/slps/bgf-v5.1-adt.bgf
	_dev/format tank slps/bgf-v5.1-adt bgf/v5.1-adt
	cp ../slps/topics/grammars/bgf/v5.2-xsd/grammar.bgf tank/slps/bgf-v5.2-xsd.bgf
	_dev/format tank slps/bgf-v5.2-xsd bgf/v5.2-xsd
	cp ../slps/topics/grammars/bgf/v5.3-adt/grammar.bgf tank/slps/bgf-v5.3-adt.bgf
	_dev/format tank slps/bgf-v5.3-adt bgf/v5.3-adt
	cp ../slps/topics/grammars/bgf/v5.4-adt/grammar.bgf tank/slps/bgf-v5.4-adt.bgf
	_dev/format tank slps/bgf-v5.4-adt bgf/v5.4-adt
	cp ../slps/topics/grammars/ldf/Readable/grammar.bgf tank/slps/ldf-readable.bgf
	_dev/format tank slps/ldf-readable ldf/Readable
	cp ../slps/topics/grammars/ldf/v1.0-xsd/grammar.bgf tank/slps/ldf-v1.0-xsd.bgf
	_dev/format tank slps/ldf-v1.0-xsd ldf/v1.0-xsd
	cp ../slps/topics/grammars/ldf/v2.0-xsd/grammar.bgf tank/slps/ldf-v2.0-xsd.bgf
	_dev/format tank slps/ldf-v2.0-xsd ldf/v2.0-xsd
	cp ../slps/topics/grammars/ldf/v2.1-xsd/grammar.bgf tank/slps/ldf-v2.1-xsd.bgf
	_dev/format tank slps/ldf-v2.1-xsd ldf/v2.1-xsd
	cp ../slps/topics/grammars/ldf/v3.0-xsd/grammar.bgf tank/slps/ldf-v3.0-xsd.bgf
	_dev/format tank slps/ldf-v3.0-xsd ldf/v3.0-xsd
	cp ../slps/topics/grammars/ldf/v4.0-xsd/grammar.bgf tank/slps/ldf-v4.0-xsd.bgf
	_dev/format tank slps/ldf-v4.0-xsd ldf/v4.0-xsd
	cp ../slps/topics/grammars/ldf/v5.0-xsd/grammar.bgf tank/slps/ldf-v5.0-xsd.bgf
	_dev/format tank slps/ldf-v5.0-xsd ldf/v5.0-xsd
	cp ../slps/topics/grammars/ldf/v6.0-xsd/grammar.bgf tank/slps/ldf-v6.0-xsd.bgf
	_dev/format tank slps/ldf-v6.0-xsd ldf/v6.0-xsd
	cp ../slps/topics/grammars/ldf/v7.0-xsd/grammar.bgf tank/slps/ldf-v7.0-xsd.bgf
	_dev/format tank slps/ldf-v7.0-xsd ldf/v7.0-xsd
	cp ../slps/topics/grammars/ldf/v7.1-xsd/grammar.bgf tank/slps/ldf-v7.1-xsd.bgf
	_dev/format tank slps/ldf-v7.1-xsd ldf/v7.1-xsd
	cp ../slps/topics/grammars/ldf/v8.0-xsd/grammar.bgf tank/slps/ldf-v8.0-xsd.bgf
	_dev/format tank slps/ldf-v8.0-xsd ldf/v8.0-xsd
	cp ../slps/topics/grammars/ldf/v8.1-xsd/grammar.bgf tank/slps/ldf-v8.1-xsd.bgf
	_dev/format tank slps/ldf-v8.1-xsd ldf/v8.1-xsd
	cp ../slps/topics/grammars/ldf/v9.0-xsd/grammar.bgf tank/slps/ldf-v9.0-xsd.bgf
	_dev/format tank slps/ldf-v9.0-xsd ldf/v9.0-xsd
	cp ../slps/topics/grammars/ldf/v9.1-xsd/grammar.bgf tank/slps/ldf-v9.1-xsd.bgf
	_dev/format tank slps/ldf-v9.1-xsd ldf/v9.1-xsd
	cp ../slps/topics/grammars/ldf/v10.0-xsd/grammar.bgf tank/slps/ldf-v10.0-xsd.bgf
	_dev/format tank slps/ldf-v10.0-xsd ldf/v10.0-xsd
	cp ../slps/topics/grammars/ldf/v11.0-xsd/grammar.bgf tank/slps/ldf-v11.0-xsd.bgf
	_dev/format tank slps/ldf-v11.0-xsd ldf/v11.0-xsd
	cp ../slps/topics/grammars/ldf/v11.1-xsd/grammar.bgf tank/slps/ldf-v11.1-xsd.bgf
	_dev/format tank slps/ldf-v11.1-xsd ldf/v11.1-xsd
	cp ../slps/topics/grammars/ldf/v11.2-xsd/grammar.bgf tank/slps/ldf-v11.2-xsd.bgf
	_dev/format tank slps/ldf-v11.2-xsd ldf/v11.2-xsd
	cp ../slps/topics/grammars/ldf/v12.0-xsd/grammar.bgf tank/slps/ldf-v12.0-xsd.bgf
	_dev/format tank slps/ldf-v12.0-xsd ldf/v12.0-xsd
	cp ../slps/topics/grammars/ldf/v13.0-xsd/grammar.bgf tank/slps/ldf-v13.0-xsd.bgf
	_dev/format tank slps/ldf-v13.0-xsd ldf/v13.0-xsd
	cp ../slps/topics/grammars/ldf/v13.1-xsd/grammar.bgf tank/slps/ldf-v13.1-xsd.bgf
	_dev/format tank slps/ldf-v13.1-xsd ldf/v13.1-xsd
	cp ../slps/topics/grammars/ldf/v14.0-xsd/grammar.bgf tank/slps/ldf-v14.0-xsd.bgf
	_dev/format tank slps/ldf-v14.0-xsd ldf/v14.0-xsd
	cp ../slps/topics/grammars/ldf/v15.0-xsd/grammar.bgf tank/slps/ldf-v15.0-xsd.bgf
	_dev/format tank slps/ldf-v15.0-xsd ldf/v15.0-xsd
	cp ../slps/topics/grammars/ldf/v15.1-xsd/grammar.bgf tank/slps/ldf-v15.1-xsd.bgf
	_dev/format tank slps/ldf-v15.1-xsd ldf/v15.1-xsd
	cp ../slps/topics/grammars/ldf/v16.0-xsd/grammar.bgf tank/slps/ldf-v16.0-xsd.bgf
	_dev/format tank slps/ldf-v16.0-xsd ldf/v16.0-xsd
	cp ../slps/topics/grammars/ldf/v17.0-xsd/grammar.bgf tank/slps/ldf-v17.0-xsd.bgf
	_dev/format tank slps/ldf-v17.0-xsd ldf/v17.0-xsd
	cp ../slps/topics/grammars/ldf/v18.0-xsd/grammar.bgf tank/slps/ldf-v18.0-xsd.bgf
	_dev/format tank slps/ldf-v18.0-xsd ldf/v18.0-xsd
	cp ../slps/topics/grammars/ldf/v18.1-xsd/grammar.bgf tank/slps/ldf-v18.1-xsd.bgf
	_dev/format tank slps/ldf-v18.1-xsd ldf/v18.1-xsd
	cp ../slps/topics/grammars/ldf/v19.0-xsd/grammar.bgf tank/slps/ldf-v19.0-xsd.bgf
	_dev/format tank slps/ldf-v19.0-xsd ldf/v19.0-xsd
	cp ../slps/topics/grammars/ldf/v20.0-xsd/grammar.bgf tank/slps/ldf-v20.0-xsd.bgf
	_dev/format tank slps/ldf-v20.0-xsd ldf/v20.0-xsd
	cp ../slps/topics/grammars/ldf/v20.1-xsd/grammar.bgf tank/slps/ldf-v20.1-xsd.bgf
	_dev/format tank slps/ldf-v20.1-xsd ldf/v20.1-xsd
	cp ../slps/topics/grammars/ldf/v21.0-xsd/grammar.bgf tank/slps/ldf-v21.0-xsd.bgf
	_dev/format tank slps/ldf-v21.0-xsd ldf/v21.0-xsd
	cp ../slps/topics/grammars/ldf/v21.1-xsd/grammar.bgf tank/slps/ldf-v21.1-xsd.bgf
	_dev/format tank slps/ldf-v21.1-xsd ldf/v21.1-xsd
	cp ../slps/topics/grammars/ldf/v22.0-xsd/grammar.bgf tank/slps/ldf-v22.0-xsd.bgf
	_dev/format tank slps/ldf-v22.0-xsd ldf/v22.0-xsd
	cp ../slps/topics/grammars/ldf/v23.0-xsd/grammar.bgf tank/slps/ldf-v23.0-xsd.bgf
	_dev/format tank slps/ldf-v23.0-xsd ldf/v23.0-xsd
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/reference.bgf tank/tescol/reference.bgf
	_dev/format tank tescol/reference tescol/Reference
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00000.bgf tank/tescol/00000.bgf
	_dev/format tank tescol/00000 tescol/00000
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00001.bgf tank/tescol/00001.bgf
	_dev/format tank tescol/00001 tescol/00001
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00010.bgf tank/tescol/00010.bgf
	_dev/format tank tescol/00010 tescol/00010
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00011.bgf tank/tescol/00011.bgf
	_dev/format tank tescol/00011 tescol/00011
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00100.bgf tank/tescol/00100.bgf
	_dev/format tank tescol/00100 tescol/00100
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00101.bgf tank/tescol/00101.bgf
	_dev/format tank tescol/00101 tescol/00101
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00110.bgf tank/tescol/00110.bgf
	_dev/format tank tescol/00110 tescol/00110
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00111.bgf tank/tescol/00111.bgf
	_dev/format tank tescol/00111 tescol/00111
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01000.bgf tank/tescol/01000.bgf
	_dev/format tank tescol/01000 tescol/01000
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01001.bgf tank/tescol/01001.bgf
	_dev/format tank tescol/01001 tescol/01001
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01010.bgf tank/tescol/01010.bgf
	_dev/format tank tescol/01010 tescol/01010
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01011.bgf tank/tescol/01011.bgf
	_dev/format tank tescol/01011 tescol/01011
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01100.bgf tank/tescol/01100.bgf
	_dev/format tank tescol/01100 tescol/01100
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01101.bgf tank/tescol/01101.bgf
	_dev/format tank tescol/01101 tescol/01101
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01110.bgf tank/tescol/01110.bgf
	_dev/format tank tescol/01110 tescol/01110
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01111.bgf tank/tescol/01111.bgf
	_dev/format tank tescol/01111 tescol/01111
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10000.bgf tank/tescol/10000.bgf
	_dev/format tank tescol/10000 tescol/10000
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10001.bgf tank/tescol/10001.bgf
	_dev/format tank tescol/10001 tescol/10001
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10010.bgf tank/tescol/10010.bgf
	_dev/format tank tescol/10010 tescol/10010
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10011.bgf tank/tescol/10011.bgf
	_dev/format tank tescol/10011 tescol/10011
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10100.bgf tank/tescol/10100.bgf
	_dev/format tank tescol/10100 tescol/10100
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10101.bgf tank/tescol/10101.bgf
	_dev/format tank tescol/10101 tescol/10101
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10110.bgf tank/tescol/10110.bgf
	_dev/format tank tescol/10110 tescol/10110
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10111.bgf tank/tescol/10111.bgf
	_dev/format tank tescol/10111 tescol/10111
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11000.bgf tank/tescol/11000.bgf
	_dev/format tank tescol/11000 tescol/11000
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11001.bgf tank/tescol/11001.bgf
	_dev/format tank tescol/11001 tescol/11001
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11010.bgf tank/tescol/11010.bgf
	_dev/format tank tescol/11010 tescol/11010
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11011.bgf tank/tescol/11011.bgf
	_dev/format tank tescol/11011 tescol/11011
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11100.bgf tank/tescol/11100.bgf
	_dev/format tank tescol/11100 tescol/11100
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11101.bgf tank/tescol/11101.bgf
	_dev/format tank tescol/11101 tescol/11101
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11110.bgf tank/tescol/11110.bgf
	_dev/format tank tescol/11110 tescol/11110
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11111.bgf tank/tescol/11111.bgf
	_dev/format tank tescol/11111 tescol/11111
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ACG/grammar.bgf > tank/metamodels/ACG.bgf
	_dev/format tank metamodels/ACG metamodels/ACG
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ACME/grammar.bgf > tank/metamodels/ACME.bgf
	_dev/format tank metamodels/ACME metamodels/ACME
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ADELFE/grammar.bgf > tank/metamodels/ADELFE.bgf
	_dev/format tank metamodels/ADELFE metamodels/ADELFE
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Agate/grammar.bgf > tank/metamodels/Agate.bgf
	_dev/format tank metamodels/Agate metamodels/Agate
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ATL/grammar.bgf > tank/metamodels/ATL.bgf
	_dev/format tank metamodels/ATL metamodels/ATL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/AWKPrograms/grammar.bgf > tank/metamodels/AWKPrograms.bgf
	_dev/format tank metamodels/AWKPrograms metamodels/AWKPrograms
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XMorphLanguage_abstractSyntax/grammar.bgf > tank/metamodels/XMorphLanguage_abstractSyntax.bgf
	_dev/format tank metamodels/XMorphLanguage_abstractSyntax metamodels/XMorphLanguage_abstractSyntax
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TroposActorConcept/grammar.bgf > tank/metamodels/TroposActorConcept.bgf
	_dev/format tank metamodels/TroposActorConcept metamodels/TroposActorConcept
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Amble/grammar.bgf > tank/metamodels/Amble.bgf
	_dev/format tank metamodels/Amble metamodels/Amble
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/AntScripts/grammar.bgf > tank/metamodels/AntScripts.bgf
	_dev/format tank metamodels/AntScripts metamodels/AntScripts
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/AnyLogic/grammar.bgf > tank/metamodels/AnyLogic.bgf
	_dev/format tank metamodels/AnyLogic metamodels/AnyLogic
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Architectural_Description/grammar.bgf > tank/metamodels/Architectural_Description.bgf
	_dev/format tank metamodels/Architectural_Description metamodels/Architectural_Description
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/AsmL/grammar.bgf > tank/metamodels/AsmL.bgf
	_dev/format tank metamodels/AsmL metamodels/AsmL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BMM/grammar.bgf > tank/metamodels/BMM.bgf
	_dev/format tank metamodels/BMM metamodels/BMM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BPEL/grammar.bgf > tank/metamodels/BPEL.bgf
	_dev/format tank metamodels/BPEL metamodels/BPEL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BPMN/grammar.bgf > tank/metamodels/BPMN.bgf
	_dev/format tank metamodels/BPMN metamodels/BPMN
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IEEE1471ViewpointM2/grammar.bgf > tank/metamodels/IEEE1471ViewpointM2.bgf
	_dev/format tank metamodels/IEEE1471ViewpointM2 metamodels/IEEE1471ViewpointM2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/bmmOmg/grammar.bgf > tank/metamodels/bmmOmg.bgf
	_dev/format tank metamodels/bmmOmg metamodels/bmmOmg
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Book/grammar.bgf > tank/metamodels/Book.bgf
	_dev/format tank metamodels/Book metamodels/Book
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Bossa/grammar.bgf > tank/metamodels/Bossa.bgf
	_dev/format tank metamodels/Bossa metamodels/Bossa
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BusinessEntityModel/grammar.bgf > tank/metamodels/BusinessEntityModel.bgf
	_dev/format tank metamodels/BusinessEntityModel metamodels/BusinessEntityModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BusinessProcessModel/grammar.bgf > tank/metamodels/BusinessProcessModel.bgf
	_dev/format tank metamodels/BusinessProcessModel metamodels/BusinessProcessModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CADM/grammar.bgf > tank/metamodels/CADM.bgf
	_dev/format tank metamodels/CADM metamodels/CADM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CDE/grammar.bgf > tank/metamodels/CDE.bgf
	_dev/format tank metamodels/CDE metamodels/CDE
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CFG/grammar.bgf > tank/metamodels/CFG.bgf
	_dev/format tank metamodels/CFG metamodels/CFG
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/COBOL/grammar.bgf > tank/metamodels/COBOL.bgf
	_dev/format tank metamodels/COBOL metamodels/COBOL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CORBAComponent/grammar.bgf > tank/metamodels/CORBAComponent.bgf
	_dev/format tank metamodels/CORBAComponent metamodels/CORBAComponent
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CPL/grammar.bgf > tank/metamodels/CPL.bgf
	_dev/format tank metamodels/CPL metamodels/CPL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CPR/grammar.bgf > tank/metamodels/CPR.bgf
	_dev/format tank metamodels/CPR metamodels/CPR
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CSM/grammar.bgf > tank/metamodels/CSM.bgf
	_dev/format tank metamodels/CSM metamodels/CSM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CWMCore/grammar.bgf > tank/metamodels/CWMCore.bgf
	_dev/format tank metamodels/CWMCore metamodels/CWMCore
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CWMRelationalData/grammar.bgf > tank/metamodels/CWMRelationalData.bgf
	_dev/format tank metamodels/CWMRelationalData metamodels/CWMRelationalData
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart_ViewCaseRepresentation/grammar.bgf > tank/metamodels/MiningMart_ViewCaseRepresentation.bgf
	_dev/format tank metamodels/MiningMart_ViewCaseRepresentation metamodels/MiningMart_ViewCaseRepresentation
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ChocoModel/grammar.bgf > tank/metamodels/ChocoModel.bgf
	_dev/format tank metamodels/ChocoModel metamodels/ChocoModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Class/grammar.bgf > tank/metamodels/Class.bgf
	_dev/format tank metamodels/Class metamodels/Class
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ClassicModels/grammar.bgf > tank/metamodels/ClassicModels.bgf
	_dev/format tank metamodels/ClassicModels metamodels/ClassicModels
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/cmt.owl/grammar.bgf > tank/metamodels/cmt.owl.bgf
	_dev/format tank metamodels/cmt.owl metamodels/cmt.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Cocus.owl/grammar.bgf > tank/metamodels/Cocus.owl.bgf
	_dev/format tank metamodels/Cocus.owl metamodels/Cocus.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CompanyStructure/grammar.bgf > tank/metamodels/CompanyStructure.bgf
	_dev/format tank metamodels/CompanyStructure metamodels/CompanyStructure
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ComponentUML/grammar.bgf > tank/metamodels/ComponentUML.bgf
	_dev/format tank metamodels/ComponentUML metamodels/ComponentUML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IEEE1471ConceptualModel/grammar.bgf > tank/metamodels/IEEE1471ConceptualModel.bgf
	_dev/format tank metamodels/IEEE1471ConceptualModel metamodels/IEEE1471ConceptualModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/confOf.owl/grammar.bgf > tank/metamodels/confOf.owl.bgf
	_dev/format tank metamodels/confOf.owl metamodels/confOf.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/confious.owl/grammar.bgf > tank/metamodels/confious.owl.bgf
	_dev/format tank metamodels/confious.owl metamodels/confious.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Contact/grammar.bgf > tank/metamodels/Contact.bgf
	_dev/format tank metamodels/Contact metamodels/Contact
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ControllerUML/grammar.bgf > tank/metamodels/ControllerUML.bgf
	_dev/format tank metamodels/ControllerUML metamodels/ControllerUML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Cristal/grammar.bgf > tank/metamodels/Cristal.bgf
	_dev/format tank metamodels/Cristal metamodels/Cristal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/crs_dr.owl/grammar.bgf > tank/metamodels/crs_dr.owl.bgf
	_dev/format tank metamodels/crs_dr.owl metamodels/crs_dr.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DSL/grammar.bgf > tank/metamodels/DSL.bgf
	_dev/format tank metamodels/DSL metamodels/DSL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DSLtools/grammar.bgf > tank/metamodels/DSLtools.bgf
	_dev/format tank metamodels/DSLtools metamodels/DSLtools
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DSLModel/grammar.bgf > tank/metamodels/DSLModel.bgf
	_dev/format tank metamodels/DSLModel metamodels/DSLModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DTD/grammar.bgf > tank/metamodels/DTD.bgf
	_dev/format tank metamodels/DTD metamodels/DTD
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DTMP/grammar.bgf > tank/metamodels/DTMP.bgf
	_dev/format tank metamodels/DTMP metamodels/DTMP
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DXF/grammar.bgf > tank/metamodels/DXF.bgf
	_dev/format tank metamodels/DXF metamodels/DXF
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLBasicDef/grammar.bgf > tank/metamodels/MSVisio_DatadiagramMLBasicDef.bgf
	_dev/format tank metamodels/MSVisio_DatadiagramMLBasicDef metamodels/MSVisio_DatadiagramMLBasicDef
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLSimplified/grammar.bgf > tank/metamodels/MSVisio_DatadiagramMLSimplified.bgf
	_dev/format tank metamodels/MSVisio_DatadiagramMLSimplified metamodels/MSVisio_DatadiagramMLSimplified
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLTextFormat/grammar.bgf > tank/metamodels/MSVisio_DatadiagramMLTextFormat.bgf
	_dev/format tank metamodels/MSVisio_DatadiagramMLTextFormat metamodels/MSVisio_DatadiagramMLTextFormat
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLXForm/grammar.bgf > tank/metamodels/MSVisio_DatadiagramMLXForm.bgf
	_dev/format tank metamodels/MSVisio_DatadiagramMLXForm metamodels/MSVisio_DatadiagramMLXForm
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart_SimplifiedMetamodel/grammar.bgf > tank/metamodels/MiningMart_SimplifiedMetamodel.bgf
	_dev/format tank metamodels/MiningMart_SimplifiedMetamodel metamodels/MiningMart_SimplifiedMetamodel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart_ViewDataRepresentation/grammar.bgf > tank/metamodels/MiningMart_ViewDataRepresentation.bgf
	_dev/format tank metamodels/MiningMart_ViewDataRepresentation metamodels/MiningMart_ViewDataRepresentation
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/deployment/grammar.bgf > tank/metamodels/deployment.bgf
	_dev/format tank metamodels/deployment metamodels/deployment
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DiagramInterchange/grammar.bgf > tank/metamodels/DiagramInterchange.bgf
	_dev/format tank metamodels/DiagramInterchange metamodels/DiagramInterchange
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF/grammar.bgf > tank/metamodels/DoDAF.bgf
	_dev/format tank metamodels/DoDAF metamodels/DoDAF
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF-OV5/grammar.bgf > tank/metamodels/DoDAF-OV5.bgf
	_dev/format tank metamodels/DoDAF-OV5 metamodels/DoDAF-OV5
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF-SV4/grammar.bgf > tank/metamodels/DoDAF-SV4.bgf
	_dev/format tank metamodels/DoDAF-SV4 metamodels/DoDAF-SV4
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF-SV5/grammar.bgf > tank/metamodels/DoDAF-SV5.bgf
	_dev/format tank metamodels/DoDAF-SV5 metamodels/DoDAF-SV5
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DotNET_SystemReflection/grammar.bgf > tank/metamodels/DotNET_SystemReflection.bgf
	_dev/format tank metamodels/DotNET_SystemReflection metamodels/DotNET_SystemReflection
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EAI/grammar.bgf > tank/metamodels/EAI.bgf
	_dev/format tank metamodels/EAI metamodels/EAI
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EG/grammar.bgf > tank/metamodels/EG.bgf
	_dev/format tank metamodels/EG metamodels/EG
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EQN/grammar.bgf > tank/metamodels/EQN.bgf
	_dev/format tank metamodels/EQN metamodels/EQN
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EXPRESS/grammar.bgf > tank/metamodels/EXPRESS.bgf
	_dev/format tank metamodels/EXPRESS metamodels/EXPRESS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EXPRESSb/grammar.bgf > tank/metamodels/EXPRESSb.bgf
	_dev/format tank metamodels/EXPRESSb metamodels/EXPRESSb
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EclipseLaunchConfigurations/grammar.bgf > tank/metamodels/EclipseLaunchConfigurations.bgf
	_dev/format tank metamodels/EclipseLaunchConfigurations metamodels/EclipseLaunchConfigurations
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EclipsePlugIn/grammar.bgf > tank/metamodels/EclipsePlugIn.bgf
	_dev/format tank metamodels/EclipsePlugIn metamodels/EclipsePlugIn
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/edas.owl/grammar.bgf > tank/metamodels/edas.owl.bgf
	_dev/format tank metamodels/edas.owl metamodels/edas.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ekaw.owl/grammar.bgf > tank/metamodels/ekaw.owl.bgf
	_dev/format tank metamodels/ekaw.owl metamodels/ekaw.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Family/grammar.bgf > tank/metamodels/Family.bgf
	_dev/format tank metamodels/Family metamodels/Family
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/FeatureDiagrams/grammar.bgf > tank/metamodels/FeatureDiagrams.bgf
	_dev/format tank metamodels/FeatureDiagrams metamodels/FeatureDiagrams
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Automaton/grammar.bgf > tank/metamodels/Automaton.bgf
	_dev/format tank metamodels/Automaton metamodels/Automaton
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/FiniteStateMachine/grammar.bgf > tank/metamodels/FiniteStateMachine.bgf
	_dev/format tank metamodels/FiniteStateMachine metamodels/FiniteStateMachine
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/FlatSignalFlow/grammar.bgf > tank/metamodels/FlatSignalFlow.bgf
	_dev/format tank metamodels/FlatSignalFlow metamodels/FlatSignalFlow
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GAIA/grammar.bgf > tank/metamodels/GAIA.bgf
	_dev/format tank metamodels/GAIA metamodels/GAIA
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Grafcet/grammar.bgf > tank/metamodels/Grafcet.bgf
	_dev/format tank metamodels/Grafcet metamodels/Grafcet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GUI/grammar.bgf > tank/metamodels/GUI.bgf
	_dev/format tank metamodels/GUI metamodels/GUI
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Gantt/grammar.bgf > tank/metamodels/Gantt.bgf
	_dev/format tank metamodels/Gantt metamodels/Gantt
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GenericOutline/grammar.bgf > tank/metamodels/GenericOutline.bgf
	_dev/format tank metamodels/GenericOutline metamodels/GenericOutline
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GenericEditor/grammar.bgf > tank/metamodels/GenericEditor.bgf
	_dev/format tank metamodels/GenericEditor metamodels/GenericEditor
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GeoTrans/grammar.bgf > tank/metamodels/GeoTrans.bgf
	_dev/format tank metamodels/GeoTrans metamodels/GeoTrans
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TroposGoalAndPlanConcepts/grammar.bgf > tank/metamodels/TroposGoalAndPlanConcepts.bgf
	_dev/format tank metamodels/TroposGoalAndPlanConcepts metamodels/TroposGoalAndPlanConcepts
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HAL/grammar.bgf > tank/metamodels/HAL.bgf
	_dev/format tank metamodels/HAL metamodels/HAL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HPROF/grammar.bgf > tank/metamodels/HPROF.bgf
	_dev/format tank metamodels/HPROF metamodels/HPROF
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HierarchicalSignalFlow/grammar.bgf > tank/metamodels/HierarchicalSignalFlow.bgf
	_dev/format tank metamodels/HierarchicalSignalFlow metamodels/HierarchicalSignalFlow
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HierarchicalStateMachine/grammar.bgf > tank/metamodels/HierarchicalStateMachine.bgf
	_dev/format tank metamodels/HierarchicalStateMachine metamodels/HierarchicalStateMachine
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HybridAutomata/grammar.bgf > tank/metamodels/HybridAutomata.bgf
	_dev/format tank metamodels/HybridAutomata metamodels/HybridAutomata
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ifc2x3/grammar.bgf > tank/metamodels/ifc2x3.bgf
	_dev/format tank metamodels/ifc2x3 metamodels/ifc2x3
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IMSTransactionMessage/grammar.bgf > tank/metamodels/IMSTransactionMessage.bgf
	_dev/format tank metamodels/IMSTransactionMessage metamodels/IMSTransactionMessage
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IRL/grammar.bgf > tank/metamodels/IRL.bgf
	_dev/format tank metamodels/IRL metamodels/IRL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/iasted.owl/grammar.bgf > tank/metamodels/iasted.owl.bgf
	_dev/format tank metamodels/iasted.owl metamodels/iasted.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TroposIntegratingActorConcept/grammar.bgf > tank/metamodels/TroposIntegratingActorConcept.bgf
	_dev/format tank metamodels/TroposIntegratingActorConcept metamodels/TroposIntegratingActorConcept
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Jess/grammar.bgf > tank/metamodels/Jess.bgf
	_dev/format tank metamodels/Jess metamodels/Jess
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/logic-abstract/grammar.bgf > tank/metamodels/logic-abstract.bgf
	_dev/format tank metamodels/logic-abstract metamodels/logic-abstract
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/logic-concrete/grammar.bgf > tank/metamodels/logic-concrete.bgf
	_dev/format tank metamodels/logic-concrete metamodels/logic-concrete
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/KDM/grammar.bgf > tank/metamodels/KDM.bgf
	_dev/format tank metamodels/KDM metamodels/KDM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/KDMSimplified/grammar.bgf > tank/metamodels/KDMSimplified.bgf
	_dev/format tank metamodels/KDMSimplified metamodels/KDMSimplified
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/KM3/grammar.bgf > tank/metamodels/KM3.bgf
	_dev/format tank metamodels/KM3 metamodels/KM3
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Klaper/grammar.bgf > tank/metamodels/Klaper.bgf
	_dev/format tank metamodels/Klaper metamodels/Klaper
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/LQN/grammar.bgf > tank/metamodels/LQN.bgf
	_dev/format tank metamodels/LQN metamodels/LQN
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/LaTeX/grammar.bgf > tank/metamodels/LaTeX.bgf
	_dev/format tank metamodels/LaTeX metamodels/LaTeX
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/M/grammar.bgf > tank/metamodels/M.bgf
	_dev/format tank metamodels/M metamodels/M
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Marte/grammar.bgf > tank/metamodels/Marte.bgf
	_dev/format tank metamodels/Marte metamodels/Marte
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MAS/grammar.bgf > tank/metamodels/MAS.bgf
	_dev/format tank metamodels/MAS metamodels/MAS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Matlab/grammar.bgf > tank/metamodels/Matlab.bgf
	_dev/format tank metamodels/Matlab metamodels/Matlab
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSProject/grammar.bgf > tank/metamodels/MSProject.bgf
	_dev/format tank metamodels/MSProject metamodels/MSProject
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSProject2/grammar.bgf > tank/metamodels/MSProject2.bgf
	_dev/format tank metamodels/MSProject2 metamodels/MSProject2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MTRANS/grammar.bgf > tank/metamodels/MTRANS.bgf
	_dev/format tank metamodels/MTRANS metamodels/MTRANS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Mantis/grammar.bgf > tank/metamodels/Mantis.bgf
	_dev/format tank metamodels/Mantis metamodels/Mantis
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Maude/grammar.bgf > tank/metamodels/Maude.bgf
	_dev/format tank metamodels/Maude metamodels/Maude
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MavenMaven/grammar.bgf > tank/metamodels/MavenMaven.bgf
	_dev/format tank metamodels/MavenMaven metamodels/MavenMaven
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MavenProject/grammar.bgf > tank/metamodels/MavenProject.bgf
	_dev/format tank metamodels/MavenProject metamodels/MavenProject
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Measure/grammar.bgf > tank/metamodels/Measure.bgf
	_dev/format tank metamodels/Measure metamodels/Measure
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/METAH/grammar.bgf > tank/metamodels/METAH.bgf
	_dev/format tank metamodels/METAH metamodels/METAH
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Metrics/grammar.bgf > tank/metamodels/Metrics.bgf
	_dev/format tank metamodels/Metrics metamodels/Metrics
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MICRO.owl/grammar.bgf > tank/metamodels/MICRO.owl.bgf
	_dev/format tank metamodels/MICRO.owl metamodels/MICRO.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart/grammar.bgf > tank/metamodels/MiningMart.bgf
	_dev/format tank metamodels/MiningMart metamodels/MiningMart
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MoDAF-AV/grammar.bgf > tank/metamodels/MoDAF-AV.bgf
	_dev/format tank metamodels/MoDAF-AV metamodels/MoDAF-AV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MonitorProgram/grammar.bgf > tank/metamodels/MonitorProgram.bgf
	_dev/format tank metamodels/MonitorProgram metamodels/MonitorProgram
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/mlhim2/grammar.bgf > tank/metamodels/mlhim2.bgf
	_dev/format tank metamodels/mlhim2 metamodels/mlhim2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MoMM/grammar.bgf > tank/metamodels/MoMM.bgf
	_dev/format tank metamodels/MoMM metamodels/MoMM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MySQL/grammar.bgf > tank/metamodels/MySQL.bgf
	_dev/format tank metamodels/MySQL metamodels/MySQL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/News/grammar.bgf > tank/metamodels/News.bgf
	_dev/format tank metamodels/News metamodels/News
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-CV/grammar.bgf > tank/metamodels/ODP-CV.bgf
	_dev/format tank metamodels/ODP-CV metamodels/ODP-CV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-NV/grammar.bgf > tank/metamodels/ODP-NV.bgf
	_dev/format tank metamodels/ODP-NV metamodels/ODP-NV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-EV/grammar.bgf > tank/metamodels/ODP-EV.bgf
	_dev/format tank metamodels/ODP-EV metamodels/ODP-EV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-IV/grammar.bgf > tank/metamodels/ODP-IV.bgf
	_dev/format tank metamodels/ODP-IV metamodels/ODP-IV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-TV/grammar.bgf > tank/metamodels/ODP-TV.bgf
	_dev/format tank metamodels/ODP-TV metamodels/ODP-TV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/OWL/grammar.bgf > tank/metamodels/OWL.bgf
	_dev/format tank metamodels/OWL metamodels/OWL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/OpenConf.owl/grammar.bgf > tank/metamodels/OpenConf.owl.bgf
	_dev/format tank metamodels/OpenConf.owl metamodels/OpenConf.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/OpenQVT/grammar.bgf > tank/metamodels/OpenQVT.bgf
	_dev/format tank metamodels/OpenQVT metamodels/OpenQVT
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PASSI/grammar.bgf > tank/metamodels/PASSI.bgf
	_dev/format tank metamodels/PASSI metamodels/PASSI
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PDG/grammar.bgf > tank/metamodels/PDG.bgf
	_dev/format tank metamodels/PDG metamodels/PDG
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PIF/grammar.bgf > tank/metamodels/PIF.bgf
	_dev/format tank metamodels/PIF metamodels/PIF
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PRR/grammar.bgf > tank/metamodels/PRR.bgf
	_dev/format tank metamodels/PRR metamodels/PRR
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/paperdyne.owl/grammar.bgf > tank/metamodels/paperdyne.owl.bgf
	_dev/format tank metamodels/paperdyne.owl metamodels/paperdyne.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Parameters/grammar.bgf > tank/metamodels/Parameters.bgf
	_dev/format tank metamodels/Parameters metamodels/Parameters
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PathExp/grammar.bgf > tank/metamodels/PathExp.bgf
	_dev/format tank metamodels/PathExp metamodels/PathExp
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PCS.owl/grammar.bgf > tank/metamodels/PCS.owl.bgf
	_dev/format tank metamodels/PCS.owl metamodels/PCS.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Perceptory/grammar.bgf > tank/metamodels/Perceptory.bgf
	_dev/format tank metamodels/Perceptory metamodels/Perceptory
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Person/grammar.bgf > tank/metamodels/Person.bgf
	_dev/format tank metamodels/Person metamodels/Person
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV0/grammar.bgf > tank/metamodels/GWPNV0.bgf
	_dev/format tank metamodels/GWPNV0 metamodels/GWPNV0
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV1/grammar.bgf > tank/metamodels/GWPNV1.bgf
	_dev/format tank metamodels/GWPNV1 metamodels/GWPNV1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV2/grammar.bgf > tank/metamodels/GWPNV2.bgf
	_dev/format tank metamodels/GWPNV2 metamodels/GWPNV2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV3/grammar.bgf > tank/metamodels/GWPNV3.bgf
	_dev/format tank metamodels/GWPNV3 metamodels/GWPNV3
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV4/grammar.bgf > tank/metamodels/GWPNV4.bgf
	_dev/format tank metamodels/GWPNV4 metamodels/GWPNV4
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV5/grammar.bgf > tank/metamodels/GWPNV5.bgf
	_dev/format tank metamodels/GWPNV5 metamodels/GWPNV5
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PetriNet_extended/grammar.bgf > tank/metamodels/PetriNet_extended.bgf
	_dev/format tank metamodels/PetriNet_extended metamodels/PetriNet_extended
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PluginEclipse/grammar.bgf > tank/metamodels/PluginEclipse.bgf
	_dev/format tank metamodels/PluginEclipse metamodels/PluginEclipse
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ProMarte/grammar.bgf > tank/metamodels/ProMarte.bgf
	_dev/format tank metamodels/ProMarte metamodels/ProMarte
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Problem/grammar.bgf > tank/metamodels/Problem.bgf
	_dev/format tank metamodels/Problem metamodels/Problem
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Program/grammar.bgf > tank/metamodels/Program.bgf
	_dev/format tank metamodels/Program metamodels/Program
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Promenade/grammar.bgf > tank/metamodels/Promenade.bgf
	_dev/format tank metamodels/Promenade metamodels/Promenade
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PtolemyII/grammar.bgf > tank/metamodels/PtolemyII.bgf
	_dev/format tank metamodels/PtolemyII metamodels/PtolemyII
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Publication/grammar.bgf > tank/metamodels/Publication.bgf
	_dev/format tank metamodels/Publication metamodels/Publication
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QVT/grammar.bgf > tank/metamodels/QVT.bgf
	_dev/format tank metamodels/QVT metamodels/QVT
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS_Characteristic/grammar.bgf > tank/metamodels/QoS_Characteristic.bgf
	_dev/format tank metamodels/QoS_Characteristic metamodels/QoS_Characteristic
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS_Profile/grammar.bgf > tank/metamodels/QoS_Profile.bgf
	_dev/format tank metamodels/QoS_Profile metamodels/QoS_Profile
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS_Statement/grammar.bgf > tank/metamodels/QoS_Statement.bgf
	_dev/format tank metamodels/QoS_Statement metamodels/QoS_Statement
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS/grammar.bgf > tank/metamodels/QoS.bgf
	_dev/format tank metamodels/QoS metamodels/QoS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RDFS/grammar.bgf > tank/metamodels/RDFS.bgf
	_dev/format tank metamodels/RDFS metamodels/RDFS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Relational/grammar.bgf > tank/metamodels/Relational.bgf
	_dev/format tank metamodels/Relational metamodels/Relational
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RelationalDBContent/grammar.bgf > tank/metamodels/RelationalDBContent.bgf
	_dev/format tank metamodels/RelationalDBContent metamodels/RelationalDBContent
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RelationalDBSchema/grammar.bgf > tank/metamodels/RelationalDBSchema.bgf
	_dev/format tank metamodels/RelationalDBSchema metamodels/RelationalDBSchema
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Repository/grammar.bgf > tank/metamodels/Repository.bgf
	_dev/format tank metamodels/Repository metamodels/Repository
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Reqtify/grammar.bgf > tank/metamodels/Reqtify.bgf
	_dev/format tank metamodels/Reqtify metamodels/Reqtify
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RequisitePro/grammar.bgf > tank/metamodels/RequisitePro.bgf
	_dev/format tank metamodels/RequisitePro metamodels/RequisitePro
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SBVRvoc/grammar.bgf > tank/metamodels/SBVRvoc.bgf
	_dev/format tank metamodels/SBVRvoc metamodels/SBVRvoc
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/sbvrEclipse/grammar.bgf > tank/metamodels/sbvrEclipse.bgf
	_dev/format tank metamodels/sbvrEclipse metamodels/sbvrEclipse
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/sbvrOMG/grammar.bgf > tank/metamodels/sbvrOMG.bgf
	_dev/format tank metamodels/sbvrOMG metamodels/sbvrOMG
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SCADE/grammar.bgf > tank/metamodels/SCADE.bgf
	_dev/format tank metamodels/SCADE metamodels/SCADE
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SEE_Design/grammar.bgf > tank/metamodels/SEE_Design.bgf
	_dev/format tank metamodels/SEE_Design metamodels/SEE_Design
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SPEM/grammar.bgf > tank/metamodels/SPEM.bgf
	_dev/format tank metamodels/SPEM metamodels/SPEM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SPL/grammar.bgf > tank/metamodels/SPL.bgf
	_dev/format tank metamodels/SPL metamodels/SPL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SQLDDL/grammar.bgf > tank/metamodels/SQLDDL.bgf
	_dev/format tank metamodels/SQLDDL metamodels/SQLDDL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SQLDML/grammar.bgf > tank/metamodels/SQLDML.bgf
	_dev/format tank metamodels/SQLDML metamodels/SQLDML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SWRC/grammar.bgf > tank/metamodels/SWRC.bgf
	_dev/format tank metamodels/SWRC metamodels/SWRC
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Scilab/grammar.bgf > tank/metamodels/Scilab.bgf
	_dev/format tank metamodels/Scilab metamodels/Scilab
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SecureUML/grammar.bgf > tank/metamodels/SecureUML.bgf
	_dev/format tank metamodels/SecureUML metamodels/SecureUML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SeminarSchedulingSystem/grammar.bgf > tank/metamodels/SeminarSchedulingSystem.bgf
	_dev/format tank metamodels/SeminarSchedulingSystem metamodels/SeminarSchedulingSystem
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Sharengo/grammar.bgf > tank/metamodels/Sharengo.bgf
	_dev/format tank metamodels/Sharengo metamodels/Sharengo
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/sigkdd.owl/grammar.bgf > tank/metamodels/sigkdd.owl.bgf
	_dev/format tank metamodels/sigkdd.owl metamodels/sigkdd.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SignalFlow/grammar.bgf > tank/metamodels/SignalFlow.bgf
	_dev/format tank metamodels/SignalFlow metamodels/SignalFlow
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SimpleAirlineDomain/grammar.bgf > tank/metamodels/SimpleAirlineDomain.bgf
	_dev/format tank metamodels/SimpleAirlineDomain metamodels/SimpleAirlineDomain
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/useCase/grammar.bgf > tank/metamodels/useCase.bgf
	_dev/format tank metamodels/useCase metamodels/useCase
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WSLink/grammar.bgf > tank/metamodels/WSLink.bgf
	_dev/format tank metamodels/WSLink metamodels/WSLink
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WTIP_SimpleClass/grammar.bgf > tank/metamodels/WTIP_SimpleClass.bgf
	_dev/format tank metamodels/WTIP_SimpleClass metamodels/WTIP_SimpleClass
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QVT_SimpleRDBMS/grammar.bgf > tank/metamodels/QVT_SimpleRDBMS.bgf
	_dev/format tank metamodels/QVT_SimpleRDBMS metamodels/QVT_SimpleRDBMS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WTIP_SimpleRDBMS/grammar.bgf > tank/metamodels/WTIP_SimpleRDBMS.bgf
	_dev/format tank metamodels/WTIP_SimpleRDBMS metamodels/WTIP_SimpleRDBMS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SimpleSBVR/grammar.bgf > tank/metamodels/SimpleSBVR.bgf
	_dev/format tank metamodels/SimpleSBVR metamodels/SimpleSBVR
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SimulinkStateFlow/grammar.bgf > tank/metamodels/SimulinkStateFlow.bgf
	_dev/format tank metamodels/SimulinkStateFlow metamodels/SimulinkStateFlow
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Conference.owl/grammar.bgf > tank/metamodels/Conference.owl.bgf
	_dev/format tank metamodels/Conference.owl metamodels/Conference.owl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SoftwareQualityControl/grammar.bgf > tank/metamodels/SoftwareQualityControl.bgf
	_dev/format tank metamodels/SoftwareQualityControl metamodels/SoftwareQualityControl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLBasicDef/grammar.bgf > tank/metamodels/MSOfficeExcel_SpreadsheetMLBasicDef.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLBasicDef metamodels/MSOfficeExcel_SpreadsheetMLBasicDef
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup/grammar.bgf > tank/metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLSimplified/grammar.bgf > tank/metamodels/MSOfficeExcel_SpreadsheetMLSimplified.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLSimplified metamodels/MSOfficeExcel_SpreadsheetMLSimplified
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLStyles/grammar.bgf > tank/metamodels/MSOfficeExcel_SpreadsheetMLStyles.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLStyles metamodels/MSOfficeExcel_SpreadsheetMLStyles
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp/grammar.bgf > tank/metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt/grammar.bgf > tank/metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt.bgf
	_dev/format tank metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SyncCharts/grammar.bgf > tank/metamodels/SyncCharts.bgf
	_dev/format tank metamodels/SyncCharts metamodels/SyncCharts
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SysML/grammar.bgf > tank/metamodels/SysML.bgf
	_dev/format tank metamodels/SysML metamodels/SysML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SDM/grammar.bgf > tank/metamodels/SDM.bgf
	_dev/format tank metamodels/SDM metamodels/SDM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DeploymentReport/grammar.bgf > tank/metamodels/DeploymentReport.bgf
	_dev/format tank metamodels/DeploymentReport metamodels/DeploymentReport
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Table/grammar.bgf > tank/metamodels/Table.bgf
	_dev/format tank metamodels/Table metamodels/Table
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TextualPathExp/grammar.bgf > tank/metamodels/TextualPathExp.bgf
	_dev/format tank metamodels/TextualPathExp metamodels/TextualPathExp
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Trace/grammar.bgf > tank/metamodels/Trace.bgf
	_dev/format tank metamodels/Trace metamodels/Trace
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UDDI_meta-model_fragment/grammar.bgf > tank/metamodels/UDDI_meta-model_fragment.bgf
	_dev/format tank metamodels/UDDI_meta-model_fragment metamodels/UDDI_meta-model_fragment
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEML/grammar.bgf > tank/metamodels/UEML.bgf
	_dev/format tank metamodels/UEML metamodels/UEML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtended/grammar.bgf > tank/metamodels/UEMLExtended.bgf
	_dev/format tank metamodels/UEMLExtended metamodels/UEMLExtended
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionCapturingAgents/grammar.bgf > tank/metamodels/UEMLExtensionCapturingAgents.bgf
	_dev/format tank metamodels/UEMLExtensionCapturingAgents metamodels/UEMLExtensionCapturingAgents
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionCapturingSocialEffects/grammar.bgf > tank/metamodels/UEMLExtensionCapturingSocialEffects.bgf
	_dev/format tank metamodels/UEMLExtensionCapturingSocialEffects metamodels/UEMLExtensionCapturingSocialEffects
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionDynamicAspects/grammar.bgf > tank/metamodels/UEMLExtensionDynamicAspects.bgf
	_dev/format tank metamodels/UEMLExtensionDynamicAspects metamodels/UEMLExtensionDynamicAspects
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionModelingAspects/grammar.bgf > tank/metamodels/UEMLExtensionModelingAspects.bgf
	_dev/format tank metamodels/UEMLExtensionModelingAspects metamodels/UEMLExtensionModelingAspects
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/USECASE1/grammar.bgf > tank/metamodels/USECASE1.bgf
	_dev/format tank metamodels/USECASE1 metamodels/USECASE1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/USECASE2/grammar.bgf > tank/metamodels/USECASE2.bgf
	_dev/format tank metamodels/USECASE2 metamodels/USECASE2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UnifiedOntologyLanguage/grammar.bgf > tank/metamodels/UnifiedOntologyLanguage.bgf
	_dev/format tank metamodels/UnifiedOntologyLanguage metamodels/UnifiedOntologyLanguage
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UnixFS/grammar.bgf > tank/metamodels/UnixFS.bgf
	_dev/format tank metamodels/UnixFS metamodels/UnixFS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UsiXML-task/grammar.bgf > tank/metamodels/UsiXML-task.bgf
	_dev/format tank metamodels/UsiXML-task metamodels/UsiXML-task
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WSDL/grammar.bgf > tank/metamodels/WSDL.bgf
	_dev/format tank metamodels/WSDL metamodels/WSDL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WebApplications_AbstractModel/grammar.bgf > tank/metamodels/WebApplications_AbstractModel.bgf
	_dev/format tank metamodels/WebApplications_AbstractModel metamodels/WebApplications_AbstractModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WebApplications_ConceptualModel/grammar.bgf > tank/metamodels/WebApplications_ConceptualModel.bgf
	_dev/format tank metamodels/WebApplications_ConceptualModel metamodels/WebApplications_ConceptualModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WfMC/grammar.bgf > tank/metamodels/WfMC.bgf
	_dev/format tank metamodels/WfMC metamodels/WfMC
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLBasicDef/grammar.bgf > tank/metamodels/MSOfficeWord_WordprocessingMLBasicDef.bgf
	_dev/format tank metamodels/MSOfficeWord_WordprocessingMLBasicDef metamodels/MSOfficeWord_WordprocessingMLBasicDef
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLSimplified/grammar.bgf > tank/metamodels/MSOfficeWord_WordprocessingMLSimplified.bgf
	_dev/format tank metamodels/MSOfficeWord_WordprocessingMLSimplified metamodels/MSOfficeWord_WordprocessingMLSimplified
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLStyles/grammar.bgf > tank/metamodels/MSOfficeWord_WordprocessingMLStyles.bgf
	_dev/format tank metamodels/MSOfficeWord_WordprocessingMLStyles metamodels/MSOfficeWord_WordprocessingMLStyles
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLTableElts/grammar.bgf > tank/metamodels/MSOfficeWord_WordprocessingMLTableElts.bgf
	_dev/format tank metamodels/MSOfficeWord_WordprocessingMLTableElts metamodels/MSOfficeWord_WordprocessingMLTableElts
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WorkDefinitions/grammar.bgf > tank/metamodels/WorkDefinitions.bgf
	_dev/format tank metamodels/WorkDefinitions metamodels/WorkDefinitions
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XAML-Perspective/grammar.bgf > tank/metamodels/XAML-Perspective.bgf
	_dev/format tank metamodels/XAML-Perspective metamodels/XAML-Perspective
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XAML-ResourceDictionary/grammar.bgf > tank/metamodels/XAML-ResourceDictionary.bgf
	_dev/format tank metamodels/XAML-ResourceDictionary metamodels/XAML-ResourceDictionary
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ASM/grammar.bgf > tank/metamodels/ASM.bgf
	_dev/format tank metamodels/ASM metamodels/ASM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XPDL-1.14/grammar.bgf > tank/metamodels/XPDL-1.14.bgf
	_dev/format tank metamodels/XPDL-1.14 metamodels/XPDL-1.14
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XUL-Interactorl/grammar.bgf > tank/metamodels/XUL-Interactorl.bgf
	_dev/format tank metamodels/XUL-Interactorl metamodels/XUL-Interactorl
