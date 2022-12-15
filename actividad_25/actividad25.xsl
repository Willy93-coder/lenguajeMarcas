<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <xsl:for-each select="facturas/factura">
        facturas:
            factura: 
                numero: <xsl:value-of select="@numero" /></xsl:for-each> <xsl:for-each select="facturas/factura">
                datos_empresa: <xsl:for-each select="datos_empresa">
                    nombre_empresa: <xsl:value-of select="nombre_empresa" />
                    calle: <xsl:value-of select="calle" />
                    datos_origen: <xsl:for-each select="datos_origen">
                        poblacion_empresa: <xsl:value-of select="poblacion_empresa" />
                        codigo_postal_empresa: <xsl:value-of select="codigo_postal_empresa" />
                        </xsl:for-each>
                    cif: <xsl:value-of select="cif" />
                    contacto: <xsl:for-each select="datos_origen">
                        telefono: <xsl:value-of select="telefono" />
                        fax: <xsl:value-of select="fax" />
                        </xsl:for-each>
                    </xsl:for-each>
                pedido: <xsl:for-each select="pedido">
                    fecha: <xsl:value-of select="fecha" />
                    numero_pedido: <xsl:value-of select="numero_pedido" />
                    forma_pago: <xsl:value-of select="forma_pago" />
                    </xsl:for-each>
                datos_cliente: <xsl:for-each select="datos_cliente">
                    numero: <xsl:value-of select="@numero" />
                    nombre_cliente: <xsl:value-of select="nombre_cliente" />
                    datos_envio: <xsl:for-each select="datos_envio">
                        direccion_envio: <xsl:for-each select="direccion_envio">
                            calle_cliente: <xsl:value-of select="calle_cliente" />
                            numero_calle: <xsl:value-of select="numero_calle" />
                            escalera: <xsl:value-of select="@letra" /> <xsl:value-of select="escalera" />
                            </xsl:for-each>
                        poblacion_cliente: <xsl:value-of select="poblacion_cliente" />
                        codigo_postal_cliente: <xsl:value-of select="codigo_postal_cliente" />
                        provincia_cliente: <xsl:value-of select="provincia_cliente" />
                        </xsl:for-each>
                    </xsl:for-each>
                datos_factura: 
                    datos_producto: <xsl:for-each select="datos_factura/datos_producto">
                      - referencia: <xsl:value-of select="@referencia" />
                        descripcion: <xsl:value-of select="descripcion" />
                        cantidad: <xsl:value-of select="cantidad" />
                        precio: <xsl:value-of select="precio" />
                        iva: <xsl:value-of select="iva" />
                        importe: <xsl:value-of select="importe" />
                        </xsl:for-each>
                total_factura: <xsl:for-each select="total_factura">
                    base_imponible: <xsl:value-of select="base_imponible" />
                    iva: <xsl:value-of select="iva" />
                    cuota_iva: <xsl:value-of select="cuota_iva" />
                    total_factura: <xsl:value-of select="@total" />
                    </xsl:for-each>
                </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>