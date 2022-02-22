<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Alexey Morozov</title>
    </head>
<body>

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
    <mrow>
        <xsl:for-each select="строка">
            <mi>
                <xsl:value-of select="операнд"/>
            </mi>
            <mo>
                <xsl:value-of select="оператор"/>
            </mo>
        </xsl:for-each>
        <msqrt>
            <mrow>
                <mfrac>
                    <mrow>
                        <xsl:for-each select="строка/корень/строка/дробь/строка[1]">
                            <mn>
                                <xsl:value-of select="число"/>
                            </mn>
                        </xsl:for-each>
                    </mrow>
                    <mrow>
                        <xsl:for-each select="строка/корень/строка/дробь/строка[2]">
                            <mi>
                                <xsl:value-of select="операнд"/>
                            </mi>
                        </xsl:for-each> 
                    </mrow>
                </mfrac>
                <mrow>
                    <munderover>
                        <mrow>
                            <xsl:for-each select="строка/корень/строка/строка/низверх/строка[1]">
                                <mo>
                                    <xsl:value-of select="оператор"/>
                                </mo>
                            </xsl:for-each>
                        </mrow>
                        <mrow>
                            <xsl:for-each select="строка/корень/строка/строка/низверх/строка[2]">
                                <mi>
                                    <xsl:value-of select="операнд"/>
                                </mi>
                            </xsl:for-each>
                            <xsl:for-each select="строка/корень/строка/строка/низверх/строка[2]">
                                <mo>
                                    <xsl:value-of select="оператор"/>
                                </mo>
                            </xsl:for-each>
                            <xsl:for-each select="строка/корень/строка/строка/низверх/строка[2]">
                                <mn>
                                    <xsl:value-of select="число"/>
                                </mn>
                            </xsl:for-each>
                            </mrow>
                        
                        <xsl:for-each select="строка/корень/строка/строка/низверх/строка[3]">
                            <mrow>
                                <mi>
                                    <xsl:value-of select="операнд"/>
                                </mi>
                            </mrow>
                        </xsl:for-each>
                    </munderover>
                    <mrow>
                        <msup>
                            <mrow>
                                <xsl:for-each select="строка/корень/строка/строка/строка/верх/строка[1]">
                                    <mo>
                                        <xsl:value-of select="оператор"/>
                                    </mo>
                                <msub>
                                    <mrow>
                                        <mo>
                                            <xsl:value-of select="низ/строка[1]/операнд"/>
                                        </mo>
                                    </mrow>
                                    <mrow>
                                        <mo>
                                            <xsl:value-of select="низ/строка[2]/операнд"/>
                                        </mo>
                                    </mrow>
                                </msub>
                                    <mo>
                                        <xsl:value-of select="оператор[2]"/>
                                    </mo>
                                    <mi>
                                        <xsl:value-of select="операнд"/>
                                    </mi>
                                    <mo>
                                        <xsl:value-of select="оператор[3]"/>
                                    </mo>
                                </xsl:for-each>
                            </mrow>
                            <mrow>
                                <xsl:for-each select="строка/корень/строка/строка/строка/верх/строка[2]">
                                    <mn>
                                        <xsl:value-of select="число"/>
                                    </mn>
                                </xsl:for-each>
                            </mrow>   
                        </msup>
                    </mrow>
                </mrow>
            </mrow>
        </msqrt>
        <xsl:for-each select="строка">
            <mo>
                <xsl:value-of select="оператор[2]"/>
            </mo>
        </xsl:for-each>
    </mrow>
</math>
</body>
</html>
</xsl:template>
</xsl:stylesheet>