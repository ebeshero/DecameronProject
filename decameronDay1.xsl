<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
    <html>
        
        <head><title>Day 1</title></head>
        
        <body>
            <div id="main">
                <xsl:apply-templates select="//div[@type='Day'] [@corresp='day01']"/>
                
            </div>
            
       
        </body>
        
    </html>
    </xsl:template>
    
    <xsl:template match="head">
        <h1 style="text-align:center">
        <xsl:apply-templates/>
        </h1>
    </xsl:template>
    
    <xsl:template match="div[@type='novella']/head">
        <h3 style="text-align:center">
            <xsl:apply-templates/>
        </h3>
    </xsl:template>
    
    <xsl:template match="div[@type='introduction']/head">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>
    
    <xsl:template match="div[@type='conclusion']/head">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>
    
    <xsl:template match="persName">
        <span class="person">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="placeName">
        <span class="place">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match=".//p">
        <p n="{count(preceding::p) + 1}">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="floatingText">

            <em><span class="floatingText"><xsl:apply-templates/></span></em>

    </xsl:template>

</xsl:stylesheet>