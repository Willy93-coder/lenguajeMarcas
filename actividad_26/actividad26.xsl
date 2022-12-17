<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/" xmlns:atom="http://www.w3.org/2005/Atom"
    xmlns:media="http://search.yahoo.com/mrss/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/rss/channel">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="stylesheet" href="reset.css" />
                <link rel="stylesheet" href="actividad26.css" />
                <title>
                    <xsl:value-of select="title" />
                </title>
            </head>
            <body>
                <div class="max-w">
                    <header class="p-x">
                        <a href="{link}" class="block">
                            <h1 class="text-center font-size-72">
                                <xsl:value-of select="title" />
                            </h1>
                        </a>
                        <p>
                            <xsl:value-of select="description" />
                        </p>
                        <p>
                            <xsl:value-of select="lastBuildDate" />
                        </p>
                    </header>
                    <main>
                        <xsl:for-each select="item">
                            <div class="line"></div>
                            <section>
                                <a href="{link}">
                                    <h2 class="p-x font-size-40">
                                        <xsl:value-of select="title" />
                                    </h2>
                                </a>
                                <ul class="category">
                                    <xsl:for-each select="category">
                                        <li class="block category-barra">
                                            <xsl:value-of select="." />
                                        </li>
                                    </xsl:for-each>
                                </ul>
                                <xsl:for-each select="media:content">
                                    <figure class="p-x">
                                        <div class="max-w m-y h-700">
                                            <img src="{@url}" alt="{media:description}" />
                                        </div>
                                        <figcaption>
                                            <p class="p-0 m-0">
                                                <xsl:value-of select="media:description" />
                                            </p>
                                            <div class="credit-title">
                                                <p class="author uppercase">
                                                    <xsl:value-of select="media:credit" />
                                                </p>
                                                <p class="title">
                                                    <xsl:value-of select="media:title" />
                                                </p>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </xsl:for-each>
                                <article class="p-x">
                                    <p class="description">
                                        <xsl:value-of select="description" />
                                    </p>
                                    <div class="date-author">
                                        <p class="p-0 m-0">
                                            <xsl:value-of select="pubDate" />
                                        </p>
                                        <h6 class="p-0 m-0">
                                            <xsl:value-of select="dc:creator" />
                                        </h6>
                                    </div>
                                </article>
                            </section>
                        </xsl:for-each>
                    </main>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>