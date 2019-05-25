<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Inmobiliaria CasasMartin</title>
        <link rel="stylesheet" type="text/css" href="inmobiliariacasasmartin.css" media="screen"/>        
        <link rel="shortcut icon" href="img/visita.png" type="image/png"/>
    </head>
    <body>
        <a name="arriba"></a>
        <header>
            <h1>Inmobiliaria CasasMartin</h1>
            <a class="boton" href="#comerciales">Visitas de los comerciales</a>
            <a class="boton" href="#propiedades">Propiedades visitadas</a>
            <a class="boton" href="#clientes">Clientes que realizaron visitas</a>
            <a class="boton" href="img/XQUERY.pdf">XQuery</a>
        </header>
        <section>
            <h2>Visitas realizadas</h2>
            <table>
                <tr>
                    <th>Referencia</th>
                    <th>Dirección</th>
                    <th>Número</th>
                    <th>Cod. Cliente</th>
                    <th>Cliente</th>
                    <th>Comercial</th>
                    <th>Fecha Visita</th>
                    <th>Hora Visita</th>
                </tr>
                <xsl:for-each select="inmobiliariacasasmartin/visita">
                    <tr>
                        <td><xsl:value-of select="propiedad/ref_pr"/></td>
                        <td><xsl:value-of select="propiedad/direccion_pr"/></td>
                        <td><xsl:value-of select="propiedad/numero"/></td>
                        <td><xsl:value-of select="cliente/cod_cl"/></td>
                        <td><xsl:value-of select="cliente/nom_cl"/></td>
                        <td><xsl:value-of select="cliente/comercial"/></td>
                        <td><xsl:value-of select="fecha_visita"/></td>
                        <td><xsl:value-of select="hora_visita"/></td>
                    </tr>
                </xsl:for-each>
            </table>
            </section>
            <img class="logo" src="img/visita.png"/>
            <br/><br/><br/><br/><br/><br/>
            <section>
            <a name="propiedades"></a>
            <h2>Propiedades visitadas</h2>
            <table>
                <tr>
                    <th>Referencia</th>
                    <th>Dirección</th>
                    <th>Número</th>
                    <th>Localidad</th>
                    <th>Metros 2</th>
                    <th>Nº Hab.</th>
                    <th>Propietario</th>
                    <th>Tlf. Propiet.</th>
                    <th>Particular-Banco</th>
                    <th>Financiación</th>
                    <th>Precio</th>
                    <th>Captador</th>
                </tr>
                <xsl:for-each select="inmobiliariacasasmartin/visita">
                    <tr>
                        <td><xsl:value-of select="propiedad/ref_pr"/></td>
                        <td><xsl:value-of select="propiedad/direccion_pr"/></td>
                        <td><xsl:value-of select="propiedad/numero"/></td>
                        <td><xsl:value-of select="propiedad/localidad"/></td>
                        <td><xsl:value-of select="propiedad/m2"/></td>
                        <td><xsl:value-of select="propiedad/n_hab"/></td>
                        <td><xsl:value-of select="propiedad/propietario"/></td>
                        <td><xsl:value-of select="propiedad/tlf_propietario"/></td>
                        <td><xsl:value-of select="propiedad/particular_banco"/></td>
                        <td><xsl:value-of select="propiedad/financiacion"/></td>
                        <td><xsl:value-of select="propiedad/precio"/></td>
                        <td><xsl:value-of select="propiedad/captador"/></td>
                    </tr>
                </xsl:for-each>
            </table>
            <br/><br/><br/>
            <a class="boton" href="#arriba">Volver</a>
            </section>
            <img class="logo" src="img/visita.png"/>
            <br/><br/><br/><br/><br/><br/>
            <section>
            <a name="clientes"></a>
            <h2>Clientes que realizaron visitas</h2>
            <table>
                <tr bgcolor="9887788">
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>DNI</th>
                    <th>Teléfono</th>
                    <th>Email</th>
                    <th>Estado</th>
                    <th>Comercial</th>
                    <th>Administrador</th>
                    <th>Ofinica</th>
                </tr>
                <xsl:for-each select="inmobiliariacasasmartin/visita">
                    <tr>
                        <td><xsl:value-of select="cliente/cod_cl"/></td>
                        <td><xsl:value-of select="cliente/nom_cl"/></td>
                        <td><xsl:value-of select="cliente/ap_cl"/></td>
                        <td><xsl:value-of select="cliente/dni_cl"/></td>
                        <td><xsl:value-of select="cliente/tlf_cl"/></td>
                        <td><xsl:value-of select="cliente/email_cl"/></td>
                        <td><xsl:value-of select="cliente/estado"/></td>
                        <td><xsl:value-of select="cliente/comercial"/></td>
                        <td><xsl:value-of select="cliente/administrador"/></td>
                        <td><xsl:value-of select="cliente/oficina"/></td>
                    </tr>
                </xsl:for-each>
            </table>
            <br/><br/><br/>
            <a class="boton" href="#arriba">Volver</a>
            </section>
            <img class="logo" src="img/visita.png"/>
            <br/><br/><br/><br/><br/><br/>
            <section>
            <a name="comerciales"></a>
            <h2>Visitas de la comercial María</h2>
            <table>
                <tr>
                    <th>Dirección Propiedad</th>
                    <th>Número</th>
                    <th>Cliente</th>
                    <th>Fecha Visita</th>
                    <th>Hora Visita</th>
                </tr>
                <xsl:for-each select="inmobiliariacasasmartin/visita">
                    <tr>
                        <xsl:if test="cliente/comercial/@movil='634567890'">
                            <td><xsl:value-of select="propiedad/direccion_pr"/></td>
                            <td><xsl:value-of select="propiedad/numero"/></td>
                            <td><xsl:value-of select="cliente/nom_cl"/></td>
                            <td><xsl:value-of select="fecha_visita"/></td>
                            <td><xsl:value-of select="hora_visita"/></td>
                        </xsl:if>
                    </tr>
                </xsl:for-each>
            </table>
            <h2>Visitas del comercial Pablo</h2>
            <table>
                <tr>
                    <th>Dirección Propiedad</th>
                    <th>Número</th>
                    <th>Cliente</th>
                    <th>Fecha Visita</th>
                    <th>Hora Visita</th>
                </tr>
                <xsl:for-each select="inmobiliariacasasmartin/visita">
                    <tr>
                        <xsl:if test="cliente/comercial/@movil='665432109'">
                            <td><xsl:value-of select="propiedad/direccion_pr"/></td>
                            <td><xsl:value-of select="propiedad/numero"/></td>
                            <td><xsl:value-of select="cliente/nom_cl"/></td>
                            <td><xsl:value-of select="fecha_visita"/></td>
                            <td><xsl:value-of select="hora_visita"/></td>
                        </xsl:if>
                    </tr>
                </xsl:for-each>
            </table>
            <h2>Visitas del comercial Carlos</h2>
            <table>
                <tr>
                    <th>Dirección Propiedad</th>
                    <th>Número</th>
                    <th>Cliente</th>
                    <th>Fecha Visita</th>
                    <th>Hora Visita</th>
                </tr>
                <xsl:for-each select="inmobiliariacasasmartin/visita">
                    <tr>
                        <xsl:if test="cliente/comercial/@movil='676543210'">
                            <td><xsl:value-of select="propiedad/direccion_pr"/></td>
                            <td><xsl:value-of select="propiedad/numero"/></td>
                            <td><xsl:value-of select="cliente/nom_cl"/></td>
                            <td><xsl:value-of select="fecha_visita"/></td>
                            <td><xsl:value-of select="hora_visita"/></td>
                        </xsl:if>
                    </tr>
                </xsl:for-each>
            </table>
            <br/><br/><br/>
            <a class="boton" href="#arriba">Volver</a>
        </section>
        <img class="logo" src="img/visita.png"/>
        <footer>Proyecto Común LND+BAE+ETS+PRO 1ºDAM Virginia Martín</footer>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>