<?xml version="1.0" encoding="utf-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:input="urn:my-input-variables" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="https://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:ns0="https://Integration.Destination" xmlns:s0="https://Integration.Source" xmlns:userCSharp="https://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:import href="https://az818438.vo.msecnd.net/functoids/functoidsscript.xslt" />
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:param name="input:X"></xsl:param>
  <xsl:param name="input:Y"></xsl:param>
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:Root" />
  </xsl:template>
  <xsl:template match="/s0:Root">
    <ns0:Root>
      <Sum>
        <xsl:value-of select="userCSharp:MathAdd($input:X, $input:Y)" />
      </Sum>
      <Diff>
        <xsl:value-of select="userCSharp:MathSubtract($input:X, $input:Y)" />
      </Diff>
      <Product>
        <xsl:value-of select="userCSharp:MathMultiply($input:X, $input:Y)" />
      </Product>
      <Division>
        <xsl:value-of select="userCSharp:MathDivide($input:X, $input:Y)" />
      </Division>
    </ns0:Root>
  </xsl:template>
</xsl:stylesheet>