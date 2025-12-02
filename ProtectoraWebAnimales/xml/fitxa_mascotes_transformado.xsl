<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>Fitxes de les mascotes</title>
   
  <link rel="stylesheet" href="../css/estilosAnimales.css"/>

      </head>
      <body>
  <header>
      <nav class="navegador">
        <h1>Protectora de Animales</h1>
        <ul>
          <li><a href="../index.html">Inicio</a></li>
          <li><a href="../adoptarAnimales.html">Adopción</a></li>
          <li><a href="../historiaAnimales.html">Historias</a></li>
          <li><a href="#">Mascotas</a></li>
          <li><a href="../Formulario.html">Contacto</a></li>
          <li><a href="../Justificación.html">Justificación</a></li>
        </ul>
    </nav>
  </header>

    <div class="fichas2">
        <xsl:apply-templates select="veterinario/mascota"/>
    </div>
      </body>

    </html>
  </xsl:template>

  <xsl:template match="mascota">
    <div class="ficha2">
      <h2><xsl:value-of select="nombre"/></h2>
      <img src="{foto}" alt="{nombre}"/>
      <p>Chip: <xsl:value-of select="chip"/></p>
      <p>Naixement: <xsl:value-of select="fechaNacimiento"/></p>
      <p>Pedigree: <xsl:value-of select="pedigree"/></p>
      <p>Pes: <xsl:value-of select="peso"/> kg</p>
      <p>Color: <xsl:value-of select="color"/></p>
      <p>Propietari: <xsl:value-of select="propietario/nombre"/> <xsl:value-of select="propietario/apellido"/></p>
      <p>Email: <xsl:value-of select="propietario/email"/></p>
      <p>Telèfon: <xsl:value-of select="propietario/telefono"/></p>
      <p>Vacuna: <xsl:value-of select="vacunas/vacuna/nombre"/> (<xsl:value-of select="vacunas/vacuna/@laboratorio"/>)</p>
      <p>Administrada: <xsl:value-of select="vacunas/vacuna/fechaAdministracion"/></p>
      <p>Pròxima: <xsl:value-of select="vacunas/vacuna/fechaProxima"/></p>
      <p>Última visita: <xsl:value-of select="visitas/visita/fecha"/> — <xsl:value-of select="visitas/visita/motivo"/></p>
      <p>Diagnòstic: <xsl:value-of select="visitas/visita/diagnostico"/></p>
      <p>Tractament: <xsl:value-of select="visitas/visita/tratamiento"/></p>
      <p>Alta: <xsl:value-of select="visitas/visita/alta"/></p>
    </div>
  </xsl:template>

</xsl:stylesheet>