<xsl:transform version="2.0"
               xmlns:dct="http://purl.org/dc/terms/"
               xmlns:foaf="http://xmlns.com/foaf/0.1/"
               xmlns:owl="http://www.w3.org/2002/07/owl#"
               xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
               xmlns:skos="http://www.w3.org/2004/02/skos/core#"
               xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" encoding="utf-8"/>

  <xsl:variable name="baseUri">http://uri.hab.de/vocab/struct/diglib</xsl:variable>

  <xsl:template match="Preferences">
    <rdf:RDF>
      <skos:ConceptSchema rdf:about="{$baseUri}">
        <skos:prefLabel xml:lang="de">Strukturelemente der Digitalen Bibliothek</skos:prefLabel>
        <dct:publisher>
          <foaf:Organization rdf:about="http://uri.hab.de/instance/organization/habwf">
            <skos:prefLabel>Herzog August Bibliothek Wolfenbüttel</skos:prefLabel>
          </foaf:Organization>
        </dct:publisher>
        <dct:license>
          <dct:LicenseDocument >
            <owl:sameAs rdf:resource="http://creativecommons.org/publicdomain/zero/1.0/"/>
            <skos:prefLabel>CC0 1.0 Universal</skos:prefLabel>
          </dct:LicenseDocument>
        </dct:license>
        <dct:modified rdf:datatype="http://www.w3.org/2001/XMLSchema#date">2018-01-31</dct:modified>
        <dct:created rdf:datatype="http://www.w3.org/2001/XMLSchema#date">2018-01-31</dct:created>
      </skos:ConceptSchema>
      <xsl:apply-templates select="DocStrctType"/>
      <xsl:apply-templates select="MetadataType"/>
    </rdf:RDF>
  </xsl:template>

  <xsl:template match="DocStrctType">
    <skos:Concept rdf:about="{$baseUri}#{Name}">
      <skos:prefLabel xml:lang="de"><xsl:value-of select="language[@name = 'de']"/></skos:prefLabel>
      <skos:inSchema rdf:resource="{$baseUri}"/>
    </skos:Concept>
  </xsl:template>

  <xsl:template match="MetadataType">
    <skos:Concept rdf:about="{$baseUri}#{Name}">
      <skos:prefLabel xml:lang="de"><xsl:value-of select="language[@name = 'de']"/></skos:prefLabel>
      <skos:inSchema rdf:resource="{$baseUri}"/>
    </skos:Concept>
  </xsl:template>

</xsl:transform>
