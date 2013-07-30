<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:links="http://planet-sl.org/links" xmlns:xhtml="http://www.w3.org/1999/xhtml" version="1.0">
	<xsl:output method="xml" encoding="UTF-8"/>
	<xsl:template match="/zoo">
		<zoo>
			<xsl:copy-of select="name"/>
			<xsl:apply-templates select="language"/>
		</zoo>
	</xsl:template>
	<xsl:template match="language">
		<language>
			<!-- <xsl:copy-of select="*"/> -->
			<xsl:copy-of select="name"/>
			<xsl:copy-of select="short"/>
			<xsl:apply-templates select="version"/>
		</language>
	</xsl:template>
	<xsl:template match="version">
		<version>
			<xsl:for-each select="*">
				<xsl:choose>
					<xsl:when test="local-name()='name'">
						<xsl:copy-of select="."/>
					</xsl:when>
					<xsl:when test="local-name()='grammar'">
						<xsl:copy-of select="."/>
					</xsl:when>
					<xsl:when test="local-name()='grammarset'">
						<xsl:copy-of select="."/>
					</xsl:when>
					<xsl:when test="local-name()='expand-grammar'">
						<xsl:apply-templates select="."/>
					</xsl:when>
				</xsl:choose>
			</xsl:for-each>
		</version>
	</xsl:template>
	<xsl:template match="expand-grammar">
		<xsl:variable name="handle" select="."/>
		<xsl:variable name="g" select="document(concat('../../slps/topics/grammars/',$handle,'/zoo.xml'))/grammar"/>
		<grammar>
			<xsl:for-each select="$g/*">
				<xsl:choose>
					<xsl:when test="local-name()='name'">
						<xsl:copy-of select="."/>
						<handle>
							<xsl:value-of select="$handle"/>
						</handle>
					</xsl:when>
					<xsl:when test="local-name()='extraction'">
						<xsl:if test="edd|xbgf|shedd|make">
							<toolset>
								<name>Extraction</name>
								<xsl:for-each select="*">
									<xsl:choose>
										<xsl:when test="local-name()='link'">
											<xsl:copy-of select="."/>
										</xsl:when>
										<xsl:when test="local-name()='mutation'"/>
										<xsl:when test="local-name()='antlr2'"/>
										<xsl:when test="local-name()='antlr3'"/>
										<xsl:when test="local-name()='dcg'"/>
										<xsl:when test="local-name()='ecore'"/>										<xsl:when test="local-name()='java2bgf'"/>
										<xsl:when test="local-name()='txl'"/>
										<xsl:when test="local-name()='pyparsing'"/>
										<xsl:when test="local-name()='rng'"/>
										<xsl:when test="local-name()='sdf2bgf'"/>
										<xsl:when test="local-name()='html2bgf'"/>
										<xsl:when test="local-name()='spec2bgf'"/>
										<xsl:when test="local-name()='pdf2lll2bgf'"/>
										<xsl:when test="local-name()='rascal-sd'"/>
										<xsl:when test="local-name()='rascal-adt'"/>
										<xsl:when test="local-name()='xsd2bgf'"/>
										<xsl:when test="local-name()='edd'">
											<link>
												<mu>
													<xsl:text>topics/grammars/</xsl:text>
													<xsl:value-of select="$handle"/>
													<xsl:text>/</xsl:text>
													<xsl:value-of select="."/>
													<xsl:text>.edd</xsl:text>
												</mu>
												<name>
													<xsl:value-of select="."/>
													<xsl:text>.edd</xsl:text>
												</name>
											</link>
										</xsl:when>
										<xsl:when test="local-name()='shedd'">
											<link>
												<mu>
													<xsl:text>shared/edd/</xsl:text>
													<xsl:value-of select="."/>
													<xsl:text>.edd</xsl:text>
												</mu>
												<name>
													<xsl:choose>
														<xsl:when test=".='lll1' or .='lll2'">
															<xsl:text>LLL.EDD</xsl:text>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="."/>
															<xsl:text>.edd</xsl:text>
														</xsl:otherwise>
													</xsl:choose>
												</name>
											</link>
										</xsl:when>
										<xsl:when test="local-name()='xbgf'">
											<link>
												<xbgf>
													<xsl:value-of select="$handle"/>
													<xsl:text>-</xsl:text>
													<xsl:value-of select="."/>
												</xbgf>
												<name>
													<xsl:value-of select="."/>
												</name>
											</link>
										</xsl:when>
										<xsl:when test="local-name()='make'">
											<link>
												<mu>
													<xsl:text>topics/grammars/</xsl:text>
													<xsl:value-of select="$handle"/>
													<xsl:text>/</xsl:text>
													<xsl:text>Makefile</xsl:text>
												</mu>
												<name>
													<xsl:value-of select="."/>
												</name>
											</link>
										</xsl:when>
										<xsl:otherwise>
											<xsl:copy-of select="."/>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:for-each>
							</toolset>
						</xsl:if>
					</xsl:when>
					<xsl:when test="local-name()='recovery'">
						<xsl:if test="xbgf|trafo">
							<toolset>
								<name>Recovery</name>
								<xsl:for-each select="*">
									<xsl:choose>
										<xsl:when test="local-name()='xbgf'">
											<link>
												<xbgf>
													<xsl:value-of select="$handle"/>
													<xsl:text>-</xsl:text>
													<xsl:value-of select="."/>
												</xbgf>
												<name>
													<xsl:value-of select="."/>
												</name>
											</link>
										</xsl:when>
										<xsl:when test="local-name()='trafo'">
											<link>
												<mu>
													<xsl:if test="../@dir">
														<xsl:value-of select="../@dir"/>
														<xsl:text>/</xsl:text>
													</xsl:if>
													<xsl:value-of select="."/>
													<xsl:text>.trafo</xsl:text>
												</mu>
												<name>
													<xsl:value-of select="."/>
													<xsl:text>.trafo</xsl:text>
												</name>
											</link>
										</xsl:when>
										<xsl:otherwise>
											<xsl:copy-of select="."/>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:for-each>
							</toolset>
						</xsl:if>
					</xsl:when>
					<xsl:otherwise>
						<xsl:copy-of select="."/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
			<xsl:if test="$g/extraction|$g/recovery">
				<used>
					<xsl:if test="$g/*/mutation">
						<wiki>
							<xsl:value-of select="$g/*/mutation"/>
						</wiki>
					</xsl:if>
					<xsl:if test="$g/*/antlr2">
						<antlr2/>
					</xsl:if>
					<xsl:if test="$g/*/antlr3">
						<antlr3/>
					</xsl:if>
					<xsl:if test="$g/*/dcg">
						<dcg/>
					</xsl:if>
					<xsl:if test="$g/*/ecore">
						<ecore/>
					</xsl:if>
					<xsl:if test="$g/*/trafo">
						<gdk/>
					</xsl:if>
					<xsl:if test="$g/*/edd|$g/*/shedd">
						<hunter/>
					</xsl:if>
					<xsl:if test="$g/*/pdf2lll2bgf">
						<pdf2lll/>
						<lll2bgf/>
					</xsl:if>
					<xsl:if test="$g/*/txl">
						<txl/>
					</xsl:if>
					<xsl:if test="$g/*/pyparsing">
						<pyparsing/>
					</xsl:if>
					<xsl:if test="$g/*/rng">
						<rng/>
					</xsl:if>
					<xsl:if test="$g/*/sdf2bgf">
						<sdf2bgf/>
					</xsl:if>
					<xsl:if test="$g/*/html2bgf">
						<html2bgf/>
					</xsl:if>
					<xsl:if test="$g/*/java2bgf">
						<java2bgf/>
					</xsl:if>
					<xsl:if test="$g/*/spec2bgf">
						<spec2bgf/>
					</xsl:if>
					<xsl:if test="$g/*/rascal-sd">
						<rascal-sd/>
					</xsl:if>
					<xsl:if test="$g/*/rascal-adt">
						<rascal-adt/>
					</xsl:if>
					<xsl:if test="$g/*/xbgf">
						<wiki>XBGF</wiki>
					</xsl:if>
					<xsl:if test="$g/*/xsd2bgf">
						<xsd2bgf/>
					</xsl:if>
				</used>
			</xsl:if>
		</grammar>
	</xsl:template>
	<!-- <xsl:template match="edd">
	</xsl:template> -->
</xsl:stylesheet>
