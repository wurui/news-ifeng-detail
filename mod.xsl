<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/root" name="wurui.news-ifeng-detail">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-news-ifeng-detail" ox-mod="news-ifeng-detail">
            <xsl:variable name="news" select="data/news/i[1]"/>
            <h1 class="title">
                <xsl:value-of select="$news/title"/>

            </h1>
            <xsl:if test="$news/tag">
                <p class="tag">
                    <xsl:value-of select="$news/tag"/>
                </p>
            </xsl:if>
            <div class="content">
                <xsl:value-of select="$news/content" disable-output-escaping="yes"/>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>
