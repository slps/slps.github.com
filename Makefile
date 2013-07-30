all:
	xsltproc _dev/expand.xslt _dev/zoo.xml  > _dev/zoo.expanded.xml
	xsltproc --stringparam date `date +"%b%Y"` _dev/list2xhtml.xslt _dev/zoo.expanded.xml  >  zoo/index.html
	xsltproc _dev/expand.xslt _dev/tank.xml > _dev/tank.expanded.xml
	xsltproc --stringparam date `date +"%b%Y"` _dev/list2xhtml.xslt _dev/tank.expanded.xml > tank/index.html

clean:
	rm -f *~ zoo/*/*

build:
	make zooprj
	# make tankprj
	# make tmprj

htmls:
	xsltproc --stringparam date `date +"%b%Y"` _dev/list2xhtml.xslt _dev/zoo.xml  >  zoo/index.html
	xsltproc --stringparam date `date +"%b%Y"` _dev/list2xhtml.xslt _dev/tank.xml > tank/index.html

zooprj:
	rm -f zoo/*/*
	xsltproc _dev/expand.xslt _dev/zoo.xml  > _dev/zoo.expanded.xml
	xsltproc _dev/list2makefile.xslt _dev/zoo.expanded.xml > _dev/Makefile.x
	make -f _dev/Makefile.x
	xsltproc --stringparam date `date +"%b%Y"` _dev/list2xhtml.xslt _dev/zoo.expanded.xml  >  zoo/index.html
	xsltproc _dev/links2html.xslt _dev/java-grammars.xml | python ../slps/topics/export/hypertext/closemeta.py > zoo/java/links.html

tankprj:
	rm -f tank/*/*
	xsltproc _dev/expand.xslt _dev/tank.xml > _dev/tank.expanded.xml
	#cp ../slps/topics/convergence/xbgf/fl/snapshot/*.bgf tank/fl/
	cp ../slps/topics/testing/gbtf/tests/tescol/*.bgf tank/tescol/
	chmod 644 tank/*/*.bgf
	xsltproc _dev/list2makefile.xslt _dev/tank.expanded.xml > _dev/Makefile.y
	make -f _dev/Makefile.y
	xsltproc --stringparam date `date +"%b%Y"` _dev/list2xhtml.xslt _dev/tank.expanded.xml > tank/index.html

tmprj:
	ls -1 ../topics/testing/gbtf/tests/java/*.bgf   | xargs -n1 _dev/conv java
	ls -1 ../topics/testing/gbtf/tests/tescol/*.bgf | xargs -n1 _dev/conv tescol
	@#xsltproc ../shared/xsl/links2html.xslt _dev/testmatch.xml | python ../shared/python/closemeta.py > testmatch/index.html

test:
	xmllint --noout --schema ../shared/xsd/links.xsd _dev/java-grammars.xml
