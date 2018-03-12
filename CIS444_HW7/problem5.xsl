<?xml version="1.0" encoding="UTF-8"?>

<!--
  Chris Banci
  CIS444
  12/8/17
  
  problem5.xsl
  URL: http://cis444.cs.csusm.edu/banci002/hw7/problem5.xsl
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="catalog">
	<html>
		<body>
		<h2>My Cars</h2>
		<table border="1" width="100%">
			<tr bgcolor="#f5f5f5">
				<th style="text-align:center"> Make </th>
				<th style="text-align:center"> Model </th>
				<th style="text-align:center"> Year </th>
				<th style="text-align:center"> Color </th>
				<th style="text-align:center"> Engine </th>
				<th style="text-align:center"> Doors </th>
				<th style="text-align:center"> Transmission </th>
				<th style="text-align:center"> Accessories </th>
			</tr>
			<xsl:apply-templates select="car"/>
		</table>
		</body>
	</html>
</xsl:template>

<xsl:template match="car">
	<tr>
		<td style="text-align:center"><xsl:value-of select="make"/></td>
		<td style="text-align:center"><xsl:value-of select="model"/></td>
		<td style="text-align:center"><xsl:value-of select="year"/></td>
		<td style="text-align:center"><xsl:value-of select="color"/></td>
		<td style="text-align:center"><xsl:apply-templates select="engine"/></td>
		<td style="text-align:center"><xsl:value-of select="number_of_doors"/></td>
		<td style="text-align:center"><xsl:value-of select="transmission_type"/></td>
		<td style="text-align:center"><xsl:apply-templates select="accessories"/></td>
	</tr>
</xsl:template>

<xsl:template match="engine">
	<span style = "display:block;"> cylinders: <xsl:value-of select="number_of_cylinders" /> </span>
	<span style = "display:block;"> fuel system: <xsl:value-of select="fuel_system" /> </span>
</xsl:template>

<xsl:template match="accessories">
	<span style = "display:block;"> radio: <xsl:value-of select="radio" /> </span>
	<span style = "display:block;"> air conditioning: <xsl:value-of select="air_conditioning" /> </span>
	<span style = "display:block;"> power windows: <xsl:value-of select="power_windows" /> </span>
	<span style = "display:block;"> power steering: <xsl:value-of select="power_steering" /> </span>
	<span style = "display:block;"> power brakes: <xsl:value-of select="power_brakes" /> </span>
</xsl:template>

</xsl:stylesheet>