<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:schema="http://schema.org/">

<xsl:output indent="yes" omit-xml-declaration="no" encoding="UTF-8" />

<xsl:template match="/">
  <searchresult>
    <xsl:apply-templates select="//rdf:Description" />
  </searchresult>
</xsl:template>

 <xsl:template match="rdf:Description">
   <document>
     <title><xsl:value-of select="schema:name" /></title>
     <snippet><xsl:value-of select="schema:description" /></snippet>
     <url><xsl:value-of select="rdfs:member/@rdf:resource" /></url>
   </document>
 </xsl:template>

</xsl:stylesheet>
