<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bgf="http://planet-sl.org/bgf" xmlns:xhtml="http://www.w3.org/1999/xhtml" version="1.0">
	<xsl:output method="text" encoding="UTF-8"/>
	<xsl:template match="/zoo">
		<xsl:text>all:
</xsl:text>
		<xsl:for-each select="language">
			<xsl:for-each select="version/grammar">
				<xsl:variable name="filename">
					<xsl:choose>
						<xsl:when test="as">
							<xsl:value-of select="as"/>
							<xsl:text>/</xsl:text>
							<xsl:value-of select="translate(handle,'/','-')"/>
						</xsl:when>
						<xsl:when test="../../short">
							<xsl:value-of select="handle"/>
						</xsl:when>
						<xsl:when test="substring-after(handle,concat(translate(../../name,'ABCDEFGHIJKLMNOPQRSTUVWXYZ +#“”','abcdefghijklmnopqrstuvwxyz_ps__'),'/'))=''">
							<xsl:value-of select="concat(translate(../../name,'ABCDEFGHIJKLMNOPQRSTUVWXYZ +#“”','abcdefghijklmnopqrstuvwxyz_ps__'),concat('/',translate(handle,'/','-')))"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="concat(translate(../../name,'ABCDEFGHIJKLMNOPQRSTUVWXYZ +#“”','abcdefghijklmnopqrstuvwxyz_ps__'),concat('/',substring-after(handle,'/')))"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<!--
				<xsl:text>	cp ../slps/topics/grammars/</xsl:text>
				<xsl:value-of select="handle"/>
				<xsl:text>/grammar.bgf </xsl:text>
				<xsl:value-of select="/zoo/name"/>
				<xsl:text>/</xsl:text>
				<xsl:value-of select="$filename"/>
				-->
				<xsl:text>	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/</xsl:text>
				<xsl:value-of select="handle"/>
				<xsl:text>/grammar.bgf &gt; </xsl:text>
				<xsl:value-of select="/zoo/name"/>
				<xsl:text>/</xsl:text>
				<xsl:value-of select="$filename"/>
				<xsl:text>.bgf
	_dev/format </xsl:text>
				<xsl:value-of select="/zoo/name"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="$filename"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="handle"/>
				<xsl:text>
</xsl:text>
			</xsl:for-each>
			<xsl:for-each select="version/grammarset/grammarname">
				<!-- <xsl:if test="../from and ../to"> -->
				<xsl:text>	cp ../slps/topics/grammars/</xsl:text>
				<xsl:if test="../from/@repo">
					<xsl:value-of select="../from/@repo"/>
					<xsl:text>/</xsl:text>
					<xsl:value-of select="../from"/>
					<xsl:text>/</xsl:text>
					<xsl:value-of select="translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ +#“”','abcdefghijklmnopqrstuvwxyz_ps__')"/>
					<xsl:text>.bgf </xsl:text>
				</xsl:if>
				<xsl:if test="not(../from/@repo)">
					<xsl:value-of select="../from"/>
					<xsl:text>/</xsl:text>
					<xsl:value-of select="."/>
					<xsl:text>/grammar.bgf </xsl:text>
				</xsl:if>
				<xsl:value-of select="/zoo/name"/>
				<xsl:text>/</xsl:text>
				<xsl:value-of select="../to"/>
				<xsl:text>/</xsl:text>
				<xsl:if test="../to/text()!=../from/text()">
					<xsl:value-of select="../from"/>
					<xsl:text>-</xsl:text>
				</xsl:if>
				<xsl:value-of select="translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ +#“”','abcdefghijklmnopqrstuvwxyz_ps__')"/>
				<xsl:text>.bgf
	_dev/format </xsl:text>
				<xsl:value-of select="/zoo/name"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="../to"/>
				<xsl:text>/</xsl:text>
				<xsl:if test="../to/text()!=../from/text()">
					<xsl:value-of select="../from"/>
					<xsl:text>-</xsl:text>
				</xsl:if>
				<xsl:value-of select="translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ +#“”','abcdefghijklmnopqrstuvwxyz_ps__')"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="../from"/>
				<xsl:text>/</xsl:text>
				<xsl:value-of select="."/>
				<xsl:text>
</xsl:text>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
