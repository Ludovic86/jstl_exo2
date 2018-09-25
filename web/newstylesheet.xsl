<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : 25 septembre 2018, 11:36
    Author     : TA-13
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>newstylesheet.xsl</title>
            </head>
            <body>
                        <table width="1000" border="1" cellspacing="0" cellpadding="0">
          <tr>
            <th scope="col">Titre</th>
            <th scope="col">Stock</th>
          </tr>
          <xsl:for-each select="/inventaire/livre">
            <tr>
              <td>
                <xsl:value-of select="titre" ></xsl:value-of>
              </td>
              <td>
                <xsl:value-of select="stock" ></xsl:value-of>
              </td>
            </tr>
          </xsl:for-each>
        </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
