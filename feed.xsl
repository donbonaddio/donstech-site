<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:a="http://www.w3.org/2005/Atom">
<xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/">
<html lang="en"><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1"/><title>donstech updates (RSS)</title><link rel="stylesheet" href="/style.css"/></head>
<body><main class="wrap read" style="padding-top:3rem;padding-bottom:3rem">
<h1 style="font-size:2rem;margin-bottom:.8rem">donstech updates</h1>
<p>This is an RSS feed. To follow new app releases, paste this page&#8217;s address into a news reader such as NetNewsWire or Feedly. <a href="/notes/">Back to Notes</a></p>
<ol class="log"><xsl:for-each select="a:feed/a:entry"><li><time><xsl:value-of select="substring(a:updated,1,10)"/></time><div><strong><a href="{a:link/@href}"><xsl:value-of select="a:title"/></a></strong><xsl:text> </xsl:text><span><xsl:value-of select="a:summary"/></span></div></li></xsl:for-each></ol>
</main></body></html>
</xsl:template>
</xsl:stylesheet>
