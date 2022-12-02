<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Actividad 21</title>
            </head>
            <body>
                <table border="1" style="border-collapse: collapse">
                    <tr>
                        <th rowspan="2">Descripción de cada hecho</th>
                        <th colspan="3">
                            Fecha
                        </th>
                    </tr>
                    <tr>
                        <th>Día</th>
                        <th>Mes</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="acontecimientos/fecha">
                        <tr>
                            <td>
                                <xsl:value-of select="@hecho" />
                            </td>
                            <td>
                                <xsl:value-of select="dia" />
                            </td>
                            <td>
                                <xsl:value-of select="mes" />
                            </td>
                            <td>
                                <xsl:value-of select="anio" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>