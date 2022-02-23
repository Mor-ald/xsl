<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html><head><title></title></head>
<body>
<xsl:apply-templates/>
</body></html>
</xsl:template>
<xsl:template match="графика">

<xsl:variable name="width"><xsl:value-of select="@ширина"/></xsl:variable>
<xsl:variable name="height"><xsl:value-of select="@высота"/></xsl:variable>
<xsl:variable name="elwidth"><xsl:value-of select="эллипс/@rx"/></xsl:variable>
<xsl:variable name="elheight"><xsl:value-of select="эллипс/@ry"/></xsl:variable>
<xsl:variable name="rgba1"><xsl:value-of select="эллипс[1]/@заливка"/></xsl:variable>
<xsl:variable name="rgba2"><xsl:value-of select="эллипс[2]/@заливка"/></xsl:variable>
<xsl:variable name="rgba3"><xsl:value-of select="эллипс[3]/@заливка"/></xsl:variable>
<xsl:variable name="br-c"><xsl:value-of select="эллипс/@ободок"/></xsl:variable>
<xsl:variable name="br-w"><xsl:value-of select="эллипс/@ширина-ободка"/></xsl:variable>

<xsl:variable name="el1left"><xsl:value-of select="эллипс[1]/@cx"/></xsl:variable>
<xsl:variable name="el1top"><xsl:value-of select="эллипс[1]/@cy"/></xsl:variable>
<xsl:variable name="el2left"><xsl:value-of select="эллипс[2]/@cx"/></xsl:variable>
<xsl:variable name="el2top"><xsl:value-of select="эллипс[2]/@cy"/></xsl:variable>
<xsl:variable name="el3left"><xsl:value-of select="эллипс[3]/@cx"/></xsl:variable>
<xsl:variable name="el3top"><xsl:value-of select="эллипс[3]/@cy"/></xsl:variable>


<div style="width: {$width}px; height: {$height}px">
    <div style="position: absolute; top: {$el1top}px; left: {$el1left}px; width: calc({$elwidth}px + 100px); height: calc({$elheight}px + 100px); background: {$rgba1}; border: {$br-w}px solid; border-color: {$br-c}; border-radius: 50%;"></div>
    <div style="position: absolute; top: {$el2top}px; left: {$el2left}px; width: calc({$elwidth}px + 100px); height: calc({$elheight}px + 100px); background: {$rgba2}; border: {$br-w}px solid; border-color: {$br-c}; border-radius: 50%;"></div>
    <div style="position: absolute; top: {$el3top}px; left: {$el3left}px; width: calc({$elwidth}px + 100px); height: calc({$elheight}px + 100px); background: {$rgba3}; border: {$br-w}px solid; border-color: {$br-c}; border-radius: 50%;"></div>
</div>

</xsl:template>
</xsl:stylesheet>