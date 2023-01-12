<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Core</div>
                    <a class="nav-link" href="/">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        Dashboard
                    </a>
                    <div class="sb-sidenav-menu-heading">MASTER</div>

                    <a class="nav-link" href="/stock">
                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                        Data Produk
                    </a>
                    <?php if (has_permission('data-users')) : ?>
                        <a class="nav-link" href="/users">
                            <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                            Data User
                        </a>
                    <?php endif; ?>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Logged in as:</div>
                BAKSO BAKSO
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">