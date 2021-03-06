<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes" />

<xsl:template match="root">
<tests>
  <summary>
    <title><xsl:value-of select="summary/title"/></title>
    <recordx_type>polyrex</recordx_type>
    <schema>tests/test[path,type,description]/{input[*]; output[*]}</schema>
    <ruby_version>ruby-2.1.2-p25</ruby_version>
    <script><xsl:value-of select="summary/script"/></script>
    <test_dir><xsl:value-of select="summary/test_dir"/></test_dir>    
  </summary>
  <records>
    <xsl:apply-templates select="item"/>
  </records>
</tests>
</xsl:template>

<xsl:template match="root/item">
  <test>
    <summary>
      <path><xsl:value-of select="path"/></path>
      <type><xsl:value-of select="type"/></type>
      <description><xsl:value-of select="type"/></description>
    </summary>
    <records>
      <xsl:apply-templates select="input"/>
      <xsl:apply-templates select="output"/>
    </records>
  </test>
</xsl:template>

<xsl:template match="input">
  <input>
    <summary>
      <xsl:for-each select="item/*">
        <xsl:copy-of select="."/>
      </xsl:for-each>
    </summary>
    <records/>
  </input>
</xsl:template>

<xsl:template match="output">
  <output>
    <summary>
      <xsl:for-each select="item/*">
        <xsl:copy-of select="."/>
      </xsl:for-each>
    </summary>
    <records/>
  </output>
</xsl:template>


</xsl:stylesheet>