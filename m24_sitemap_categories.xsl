<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9"
                exclude-result-prefixes="s">

    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
        <head>
            <meta charset="UTF-8"/>
            <title>Список разделов m24.ru</title>
        </head>
        <body>
            <h1>Список разделов m24.ru</h1>
            <ul>
                <xsl:apply-templates select="s:urlset/s:url"/>
            </ul>
        </body>
        </html>
    </xsl:template>

    <xsl:template match="s:url">
        <li>
            <a href="{s:loc}"><xsl:value-of select="s:loc"/></a>
            — изменён: <xsl:value-of select="s:lastmod"/>
            — частота: <xsl:value-of select="s:changefreq"/>
            — приоритет: <xsl:value-of select="s:priority"/>
        </li>
    </xsl:template>

</xsl:stylesheet>