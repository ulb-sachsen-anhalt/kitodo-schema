<xsl:transform version="2.0"
               xmlns:sch="http://purl.oclc.org/dsdl/schematron"
               xmlns:rng="http://relaxng.org/ns/structure/1.0"
               xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="rng:grammar">
    <sch:schema queryBinding="xslt2">
      <xsl:apply-templates/>
    </sch:schema>
  </xsl:template>

  <xsl:template match="sch:*">
    <xsl:sequence select="."/>
  </xsl:template>

  <xsl:template match="text()"/>
  
</xsl:transform>
