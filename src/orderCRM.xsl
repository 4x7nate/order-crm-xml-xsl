<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/order">
    <crmOrder>
      <crmOrderID><xsl:value-of select="orderID"/></crmOrderID>
      <client>
        <fullName><xsl:value-of select="customer/name"/></fullName>
        <email><xsl:value-of select="customer/email"/></email>
        <contact><xsl:value-of select="customer/contact"/></contact>
      </client>
      <products>
        <xsl:for-each select="items/item">
          <product>
            <name><xsl:value-of select="product"/></name>
            <qty><xsl:value-of select="quantity"/></qty>
            <price><xsl:value-of select="price"/></price>
          </product>
        </xsl:for-each>
      </products>
      <summary>
        <totalQty><xsl:value-of select="totalQuantity"/></totalQty>
        <totalPrice><xsl:value-of select="totalPrice"/></totalPrice>
      </summary>
    </crmOrder>
  </xsl:template>
</xsl:stylesheet>