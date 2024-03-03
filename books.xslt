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

            
            <body>

            <header>
            <div class="container">
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">
                            <img src="logo.png" width="70" alt="Logo"/>
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="collapsibleNavbar">
                            <div class="headerright">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="main.html">
                                            <i class="bi bi-house"></i> main
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="books.xml">
                                            <i class="bi bi-book"></i> program
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="headercontact">
                                <div class="headerrighticon">
                                    <a href="tel:02084115000">
                                        <i class="bi bi-phone"></i>
                                    </a>
                                </div>
                                <div class="headerrighticon">
                                    <a href="mailto:info@ourbookshop.com">
                                        <i class="bi bi-envelope"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </header>

            
                <div class="container">
                <h1>Book List</h1>
                <table class="table">
                    <tr class="table-primary">
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
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>