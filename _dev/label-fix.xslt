<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bgf="http://planet-sl.org/bgf" xmlns:ldf="http://planet-sl.org/ldf" version="1.0">
	<xsl:output method="xml" omit-xml-declaration="yes"/>
	<xsl:template match="/bgf:grammar">
		<bgf:grammar>
			<xsl:for-each select="bgf:production">
				<bgf:production>
					<xsl:copy-of select="nonterminal"/>
					<bgf:expression>
						<xsl:choose>
							<xsl:when test="label">
								<labelled>
									<xsl:copy-of select="label"/>
									<xsl:copy-of select="bgf:expression"/>
								</labelled>
							</xsl:when>
							<xsl:otherwise>
								<xsl:copy-of select="bgf:expression/*"/>
							</xsl:otherwise>
						</xsl:choose>
					</bgf:expression>
				</bgf:production>
			</xsl:for-each>
		</bgf:grammar>
	</xsl:template>
</xsl:stylesheet>
