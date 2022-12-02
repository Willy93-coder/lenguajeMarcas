<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>actividad 22</title>
            </head>
            <body>
                <table border="1" style="border-collapse: collapse">
                    <tr>
                        <th colspan="6">CDs EN OFERTA</th>
                    </tr>
                    <tr>
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>Pais</th>
                        <th>Compañía discográfica</th>
                        <th>Precio</th>
                        <th>Año de publicación</th>
                    </tr>
                    <xsl:for-each select="cds_oferta/cd">
                        <tr>
                            <td>
                                <xsl:value-of select="@titulo" />
                            </td>
                            <td>
                                <xsl:value-of select="artista" />
                            </td>
                            <td>
                                <xsl:value-of select="pais" />
                            </td>
                            <td>
                                <xsl:value-of select="compania_discografica" />
                            </td>
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                            <td>
                                <xsl:value-of select="anio_publicacion" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>