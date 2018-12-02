<?xml version="1.0"?>
<xsl:stylesheet  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:schema="http://schema.org/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="sparql" version="1.0">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
<html>
<head>
<title>Assassination</title>
<style type="text/css">
li.agent {
    font-weight: bold;
}
a.memo:link {
    text-decoration: none;
}
</style>
</head>
<body>
	<h2>Assassination event</h2>
	<xsl:apply-templates select="//rdf:Description[@rdf:about = 'http://dbpedia.org/resource/Waldemar_Franklin_Quintero#Assassination']"/>
</body>
</html>
</xsl:template>


<xsl:template match="rdf:Description">
<h3>Object</h3>
<ul>
	<xsl:apply-templates select="./schema:object"/>
</ul>
<h3>Times</h3>
<ul>
	<xsl:apply-templates select="./schema:startTime"/>
</ul>
<h3>Description</h3>
<ul>
	<xsl:apply-templates select="./schema:description"/>
</ul>
<h3>Agents</h3>
<ul>
	<xsl:apply-templates select="./schema:agent"/>
</ul>
<h3>Instruments</h3>
<ul>
	<xsl:apply-templates select="./schema:instrument"/>
</ul>
<h3>Location</h3>
<ul>
	<xsl:apply-templates select="./schema:location"/>
</ul>
<h3>Reports</h3>
<p>
	<xsl:apply-templates select="//rdf:Description[schema:mentions]"/>
</p>
</xsl:template>


<xsl:template match="schema:description">
	<li><xsl:value-of select="."/></li>
</xsl:template>

<xsl:template match="schema:object[@rdf:resource][not(preceding-sibling::schema:object[./@rdf:resource = current()/@rdf:resource])]">
	<li class="agent"><a href="{@rdf:resource}"><xsl:value-of select="@rdf:resource"/></a></li>
</xsl:template>

<xsl:template match="schema:object[not(@rdf:resource)]">
	<li><xsl:value-of select="."/></li>
</xsl:template>

<xsl:template match="schema:agent[@rdf:resource]">
	<li class="agent"><a href="{@rdf:resource}"><xsl:value-of select="@rdf:resource"/></a></li>
</xsl:template>

<xsl:template match="schema:agent">
	<li class="agent"><xsl:value-of select="."/></li>
</xsl:template>

<xsl:template match="schema:location[@rdf:resource][not(preceding-sibling::schema:object[./@rdf:resource = current()/@rdf:resource])]">
	<li class="agent"><a href="{@rdf:resource}"><xsl:value-of select="@rdf:resource"/></a></li>
</xsl:template>

<xsl:template match="schema:location[not(@rdf:resource)]">
	<li><xsl:value-of select="."/></li>
</xsl:template>

<xsl:template match="schema:instrument">
	<li><xsl:value-of select="."/></li>
</xsl:template>

<xsl:template match="schema:startTime[not(preceding-sibling::schema:startTime[./text() = current()/text()])]">
	<li><xsl:value-of select="."/></li>
</xsl:template>

<xsl:template match="schema:*"/>


<xsl:template match="rdf:Description[schema:mentions]">
<xsl:if test="position() != 1">
	<text>, </text>
</xsl:if>
<a class="memo" href="{@rdf:about}">📝</a>
</xsl:template>


</xsl:stylesheet>
