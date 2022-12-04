<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Actividad 23</title>
            </head>
            <body>
                <table style="border-collapse: collapse; border: 0px solid black">
                    <tbody>
                        <xsl:for-each select="facturas/factura">
                            <tr style="border: 2px solid black">
                                <th colspan="6">
                                    Factura nº
                                    <xsl:value-of select="@numero" />
                                </th>
                            </tr>
                            <tr style="border: 2px solid black">
                                <td colspan="3" style="border: 2px solid black">
                                    <xsl:for-each select="datos_empresa">
                                        <xsl:value-of select="nombre_empresa" />
                                        <br />
                                        <xsl:value-of select="calle" />
                                        <br />
                                        <xsl:for-each select="datos_origen">
                                            <xsl:value-of select="poblacion_empresa" />
                                            <xsl:value-of select="codigo_postal_empresa" />
                                        </xsl:for-each>
                                        <br />
                                        C.I.F. : <xsl:value-of select="cif" />
                                        <br />
                                        <xsl:for-each select="contacto">
                                            teléfono: <xsl:value-of select="telefono" />
                                            <br />
                                            fax: <xsl:value-of select="fax" />
                                            <br />
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </td>
                                <td colspan="3">
                                    <xsl:for-each select="pedido">
                                        Fecha: <xsl:value-of select="fecha" /><br />
                                        Pedido nº <xsl:value-of select="numero_pedido" /><br />
                                        Forma de pago: <xsl:value-of select="forma_pago" />
                                    </xsl:for-each>
                                </td>
                            </tr>
                            <tr style="border: 2px solid black">
                                <th colspan="6" style="text-align: left">
                                    Datos CLIENTE
                                </th>
                            </tr>
                            <tr style="border: 2px solid black">
                                <td colspan="6">
                                    <xsl:for-each select="datos_cliente">
                                            nº cliente: <xsl:value-of select="@numero" /><br />
                                            Nombre: <xsl:value-of select="nombre_cliente" /><br />
                                            <xsl:for-each select="datos_envio">
                                                <xsl:for-each select="direccion_envio">
                                                    Dirección de envio: <xsl:value-of select="calle_cliente" />
                                                    nº <xsl:value-of select="numero_calle" />
                                                    <xsl:value-of select="escalera" />º
                                                    <xsl:for-each select="escalera">
                                                    <xsl:value-of select="@letra" />
                                                </xsl:for-each>
                                            </xsl:for-each>
                                            <br/> Población: <xsl:value-of select="poblacion_cliente" />
                                            <br/> Cod. postal: <xsl:value-of select="codigo_postal_cliente" />
                                            <br/> Provincia: <xsl:value-of select="provincia_cliente" />
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </td>
                            </tr>
                            <tr style="border: 2px solid black">
                                <th colspan="6" style="text-align: left">Datos FACTURA</th>
                            </tr>
                            <tr style="border: 2px solid black">
                                <td style="text-align: right; border: 2px solid black">REF.</td>
                                <td style="text-align: right; border: 2px solid black">DESCRIPCIÓN</td>
                                <td>CANT.</td>
                                <td style="text-align: right; border: 2px solid black">PRECIO.</td>
                                <td>I. V. A. </td>
                                <td style="text-align: right; border: 2px solid black">IMPORTE</td>
                            </tr>
                            <xsl:for-each select="datos_factura/datos_producto">
                                <tr style="border: 2px solid black">
                                    <td style="border: 2px solid black; text-align: right">
                                        <xsl:value-of select="@referencia" />
                                    </td>
                                    <td style="border: 2px solid black; text-align: right">
                                        <xsl:value-of select="descripcion" />
                                    </td>
                                    <td style="border: 2px solid black; text-align: right">
                                        <xsl:value-of select="cantidad" />
                                    </td>
                                    <td style="border: 2px solid black; text-align: right">
                                        <xsl:value-of select="precio" /> eur.
                                    </td>
                                    <td style="border: 2px solid black; text-align: right">
                                        <xsl:value-of select="iva" />
                                    </td>
                                    <td style="border: 2px solid black; text-align: right">
                                        <xsl:value-of select="importe" /> eur.
                                    </td>
                                </tr>
                            </xsl:for-each>
                            <tr style="text-align: right; border: 2px solid black">
                                <td colspan="2" style="text-align: left; border: 2px solid black">Base imponible</td>
                                <td colspan="2" style="text-align: left; border: 2px solid black">% I.V.A.</td>
                                <td colspan="2" style="text-align: left; border: 2px solid black">Cuota I.V.A</td>
                            </tr>
                        </xsl:for-each>
                        <tr style="display: block; margin-top: 20px">
                            <td colspan="6"></td>
                        </tr>
                    </tbody>
                    
                    <tbody>
                        <xsl:for-each select="facturas/factura">
                        <xsl:for-each select="total_factura">
                                <tr style="border: 2px solid black">
                                    <td colspan="2" style="text-align: left; border: 2px solid black">
                                        <xsl:value-of select="base_imponible" /> eur.
                                    </td>
                                    <td colspan="2" style="text-align: left; border: 2px solid black">
                                        <xsl:value-of select="iva" />
                                    </td>
                                    <td colspan="2" style="text-align: left; border: 2px solid black">
                                        <xsl:value-of select="cuota_iva" /> eur.
                                    </td>
                                </tr>
                                <tr style="text-align: right; border: 2px solid black">
                                    <td colspan="6" style="text-align: center">
                                        TOTAL FACTURA: <xsl:value-of select="@total" /> eur
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>