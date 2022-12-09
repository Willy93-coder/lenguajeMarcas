<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        {
            "cds_oferta": {
                "cd": [
        <xsl:for-each select="cds_oferta/cd">
                {
                    "titulo": "<xsl:value-of select="@titulo" />",
                    "artista":"<xsl:value-of select="artista" />",
                    "pais":"<xsl:value-of select="pais" />",
                    "compañia discográfica":"<xsl:value-of select="compania_discografica" />",
                    "precio":"<xsl:value-of select="precio" />",
                    "año publicación":"<xsl:value-of select="anio_publicacion" />"
                }<xsl:if test="position() &lt; last()">,</xsl:if>
        </xsl:for-each>
                ]
            }
        }
    </xsl:template>
</xsl:stylesheet>