<?xml version="1.0"?>
<xsl:stylesheet  xmlns:sparql='http://www.w3.org/2005/sparql-results#' xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="sparql" version="1.0">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="sparql:sparql">
<html>
<head>
<title>1989-08-18</title>
<style type="text/css">
table {
	width: 100%;
}
td, th {
	text-align: left;
	padding: 10px;
}
a.pushpin:link {
    text-decoration: none;
}
</style>
</head>
<body>
	<h2>1989-08-18</h2>
	<table>
		<xsl:apply-templates/>
	</table>
</body>
</html>
</xsl:template>


<xsl:template match="sparql:head">
<tr>
	<th>Coverage</th>
	<th>Source</th>
	<th>Report</th>
	<th>Subject</th>
	<th>Description</th>
	<th></th>
</tr>
</xsl:template>

<xsl:template match="sparql:results">
<tbody>
	<xsl:apply-templates/>
</tbody>
</xsl:template>


<xsl:template match="sparql:result">
<tr>
	<td><xsl:value-of select="sparql:binding[@name = 'coverage']/sparql:literal"/></td>
	<td><xsl:value-of select="sparql:binding[@name = 'publisher']/sparql:literal"/></td>
	<td><a href="{sparql:binding[@name = 'doc']/sparql:uri}"><xsl:value-of select="sparql:binding[@name = 'title']/sparql:literal"/></a></td>
	<td><xsl:value-of select="sparql:binding[@name = 'name']/sparql:literal"/></td>
	<td><xsl:value-of select="sparql:binding[@name = 'description']/sparql:literal"/></td>
	<xsl:apply-templates select="sparql:binding[@name = 'event']"/>
</tr>
</xsl:template>

<xsl:template match="sparql:binding[@name = 'event']">
	<td><a class="pushpin" href="{../sparql:binding[@name = 'eventPage']/sparql:uri}"><xsl:value-of select="'📌'"/></a></td>
</xsl:template>

</xsl:stylesheet>
