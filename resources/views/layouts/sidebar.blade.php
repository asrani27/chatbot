
<section class="sidebar">
    <!-- Sidebar Menu -->
    <ul class="sidebar-menu" data-widget="tree">
    <li class="header">MENU UTAMA</li>
    
    @if (Auth::user()->hasRole('superadmin'))
        
    <li class="{{ (request()->is('superadmin')) ? 'active' : '' }}"><a href="/superadmin"><i class="fa fa-home"></i> <span>Beranda</span></a></li>    
    <li class="{{ (request()->is('superadmin/informasi*')) ? 'active' : '' }}"><a href="/superadmin/informasi"><i class="fa fa-arrow-right"></i> <span>Data informasi</span></a></li>
    <li class="{{ (request()->is('superadmin/percakapan*')) ? 'active' : '' }}"><a href="/superadmin/percakapan"><i class="fa fa-arrow-right"></i> <span>Riwayat Percakapan</span></a></li>
    <li><a href="/logout"><i class="fa fa-sign-out"></i> <span>Logout</span></a></li>
    @else
        
    <li class="{{ (request()->is('pemohon')) ? 'active' : '' }}"><a href="/pemohon"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
    <li class="{{ (request()->is('pemohon/profil*')) ? 'active' : '' }}"><a href="/pemohon/profil"><i class="fa fa-user"></i> <span>Profil</span></a></li>
    {{-- <li class="{{ (request()->is('pemohon/daftar-layanan*')) ? 'active' : '' }}"><a href="/pemohon/daftar-layanan"><i class="fa fa-list"></i> <span>Daftar Layanan</span></a></li> --}}
    @endif
    </ul>
    <!-- /.sidebar-menu -->
</section>