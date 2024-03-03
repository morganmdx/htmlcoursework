<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
            <title>Main Page</title>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <link rel="stylesheet" href="style.css"/>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@floating-ui/core@1.6.0"></script>
            <script src="https://cdn.jsdelivr.net/npm/@floating-ui/dom@1.6.3"></script>
        </head>

    <xsl:element name="header">
        <xsl:element name="div">
            <xsl:attribute name="class">container</xsl:attribute>
            <xsl:element name="nav">
                <xsl:attribute name="class">navbar navbar-expand-sm bg-dark navbar-dark</xsl:attribute>
                <xsl:element name="div">
                    <xsl:attribute name="class">container-fluid</xsl:attribute>
                    <xsl:element name="a">
                        <xsl:attribute name="class">navbar-brand</xsl:attribute>
                        <xsl:attribute name="href">#</xsl:attribute>
                        <xsl:element name="img">
                            <xsl:attribute name="src">logo.png</xsl:attribute>
                            <xsl:attribute name="width">70</xsl:attribute>
                            <xsl:attribute name="alt">Logo</xsl:attribute>
                        </xsl:element>
                    </xsl:element>
                    <xsl:element name="button">
                        <xsl:attribute name="class">navbar-toggler</xsl:attribute>
                        <xsl:attribute name="type">button</xsl:attribute>
                        <xsl:attribute name="data-bs-toggle">collapse</xsl:attribute>
                        <xsl:attribute name="data-bs-target">#collapsibleNavbar</xsl:attribute>
                        <xsl:element name="span" namespace="http://www.w3.org/2000/svg">
                            <xsl:attribute name="class">navbar-toggler-icon</xsl:attribute>
                        </xsl:element>
                    </xsl:element>
                    <xsl:element name="div">
                        <xsl:attribute name="class">collapse navbar-collapse</xsl:attribute>
                        <xsl:attribute name="id">collapsibleNavbar</xsl:attribute>
                        <xsl:element name="div">
                            <xsl:attribute name="class">headerright</xsl:attribute>
                            <xsl:element name="ul">
                                <xsl:attribute name="class">navbar-nav</xsl:attribute>
                                <xsl:element name="li" >
                                    <xsl:attribute name="class">nav-item</xsl:attribute>
                                    <xsl:element name="a">
                                        <xsl:attribute name="class">nav-link</xsl:attribute>
                                        <xsl:attribute name="href">main.html</xsl:attribute>
                                        <xsl:element name="i" namespace="http://www.w3.org/2000/svg">
                                            <xsl:attribute name="class">bi bi-house</xsl:attribute>
                                        </xsl:element>
                                        main
                                    </xsl:element>
                                </xsl:element>
                                <xsl:element name="li">
                                    <xsl:attribute name="class">nav-item</xsl:attribute>
                                    <xsl:element name="a">
                                        <xsl:attribute name="class">nav-link</xsl:attribute>
                                        <xsl:attribute name="href">books.xml</xsl:attribute>
                                        <xsl:element name="i" namespace="http://www.w3.org/2000/svg">
                                            <xsl:attribute name="class">bi bi-book</xsl:attribute>
                                        </xsl:element>
                                        program
                                    </xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </xsl:element>
                        <xsl:element name="div">
                            <xsl:attribute name="class">headercontact</xsl:attribute>
                            <xsl:element name="div">
                                <xsl:attribute name="class">headerrighticon</xsl:attribute>
                                <xsl:element name="i" namespace="http://www.w3.org/2000/svg">
                                    <xsl:attribute name="class">bi bi-phone</xsl:attribute>
                                </xsl:element>
                            </xsl:element>
                            <xsl:element name="div">
                                <xsl:attribute name="class">headerrighticon</xsl:attribute>
                                <xsl:element name="i" namespace="http://www.w3.org/2000/svg">
                                    <xsl:attribute name="class">bi bi-envelope</xsl:attribute>
                                </xsl:element>
                            </xsl:element>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:element>

            
            <body>

            
                <h1>Book List</h1>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Price</th>
                        <th>Image</th>
                    </tr>
                    <xsl:for-each select="books/book">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="author"/></td>
                            <td><xsl:value-of select="genre"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><img src="{image}" alt="{title}" width="100"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>