<?xml version='1.0' encoding='UTF-8'?><!-- -*- indent-tabs-mode: nil -*- -->
<!--
This program is free software; you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the Free
Software Foundation; either version 2 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
details.

You should have received a copy of the GNU Lesser General Public License
along with this program; see the file COPYING.LGPL.  If not, write to the
Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
02111-1307, USA.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns:str="http://exslt.org/strings"
                xmlns:mal="http://projectmallard.org/1.0/"
                xmlns="http://www.w3.org/1999/xhtml"
                extension-element-prefixes="exsl"
                exclude-result-prefixes="mal str"
                version="1.0">

<xsl:param name="theme.icons.size.note" select="24"/>

<xsl:template name="html.head.custom">
  <link href="http://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet" type="text/css"/>
  <link href="http://fonts.googleapis.com/css?family=Bitter:400,700" rel="stylesheet" type="text/css"/>
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
</xsl:template>

<xsl:template name="html.css.custom">
<xsl:text>
body {
  font-family: 'Lato', sans;
  font-size: 18px;
}
div.top {
  margin: 0;
  padding: 20px 0;
  background: #eeeeec url(eeeeec.png);
  border-bottom: solid 1px #d3d7cf;
}
div.top > div.inner {
  font-family: Bitter;
  text-shadow: 1px 1px 0 white;
}
div.top img {
  float: left;
  margin: 0 20px;
}
div.top h1 {
  font-size: 64px;
}
div.top h2 {
  color: #888a85;
  font-size: 18px;
  font-weight: normal;
  margin-top: 4px;
}
div.top > div.inner::after {
  display: block;
  content: " ";
  clear: both;
}
div.header {
  font-size: 16px;
  max-width: 800px;
}
div.trails {
  background: transparent;
  padding: 0 20px;
}
div.hgroup {
  font-family: Bitter;
}
div.hgroup span.cmd {
  background: transparent;
}
a span.cmd {
  background: transparent;
}
p span.cmd, p span.code, p span.sys {
  font-size: 16px;
}
span.hi {
  display: inline-block;
  padding: 2px 8px;
  border-radius: 2px;
}
div.code, div.screen {
  background: #eeeeec url(eeeeec.png);
  font-size: 16px;
}
pre {
  background: rgba(255, 255, 255, 0.3);
}
td.td-yes {
  background: rgba(138, 226, 52, 0.2);
}
td.td-no {
  background: rgba(239, 41, 41, 0.1);
}
</xsl:text>
</xsl:template>

<xsl:template name="html.js.content.custom">
</xsl:template>

<xsl:template name="html.top.custom">
  <xsl:variable name="rootlink">
    <xsl:if test="$mal.link.extension != ''">
      <xsl:text>index</xsl:text>
      <xsl:value-of select="$mal.link.extension"/>
    </xsl:if>
  </xsl:variable>
  <div class="top"><div class="inner pagewide">
    <a href="{$mal.site.root}{$rootlink}">
      <img src="{$mal.site.root}yelp.png" width="128" height="128"/>
      <h1>Yelp</h1>
      <h2>(The Help System)</h2>
    </a>
  </div></div>
</xsl:template>

<xsl:template name="html.bottom.custom">
</xsl:template>

<xsl:template mode="html.class.attr.mode" match="mal:td">
  <xsl:if test=". = 'Yes'">
    <xsl:text>td-yes</xsl:text>
  </xsl:if>
  <xsl:if test=". = 'No'">
    <xsl:text>td-no</xsl:text>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
