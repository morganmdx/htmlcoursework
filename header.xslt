<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
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
    </xsl:template>
</xsl:stylesheet>
