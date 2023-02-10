<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

    <html lang="en">
        <head>
            <meta charset="UTF-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <link rel="stylesheet" href="./styles.css"/>
            <title>Simulacro examen</title>
        </head>
        <body>
            <div>
                <h1>Información de las clases</h1>
                <table>
                    <thead>
                        <th>Baile</th>
                        <th>Precio</th>
                        <th>Plazas</th>
                        <th>Fechas</th>
                        <th>Días clase</th>
                        <th>Profesor</th>
                        <th>Sala</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="academia_baile/baile">
                            <tr>
                                <td>
                                    <xsl:value-of select="@nombre" />
                                </td>
                                <td>
                                    <xsl:for-each select="precio_clase">
                                        <xsl:value-of select="@precio" /><xsl:value-of select="moneda" /><br/>
                                        <xsl:value-of select="periocidad_cuota" /> Cuotas
                                    </xsl:for-each>   
                                </td>
                                <td>
                                    <xsl:value-of select="plazas_disponibles" />
                                </td>
                                <td>
                                    <xsl:for-each select="fechas">
                                        I: <xsl:value-of select="fecha_inicio" /><br/>
                                        F: <xsl:value-of select="fecha_fin" />
                                    </xsl:for-each> 
                                </td>
                                <td>
                                    <xsl:for-each select="dias_clase">
                                        <xsl:value-of select="dia1" /><br/>
                                        <xsl:value-of select="dia2" /><br/>
                                        <xsl:value-of select="dia3" />
                                    </xsl:for-each> 
                                </td>
                                <td>
                                    <xsl:value-of select="profesor" />
                                </td>
                                <td>
                                    <xsl:value-of select="sala" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </div>
        </body>
    </html>

    </xsl:template>
</xsl:stylesheet>