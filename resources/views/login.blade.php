<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CHATBOT</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="/assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/assets/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="/assets/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/assets/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/assets/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <!-- IziToast -->
  <link rel="stylesheet" href="/notif/dist/css/iziToast.min.css">
  <script src="/notif/dist/js/iziToast.min.js" type="text/javascript"></script>

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-green layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    
  </header>
  <!-- Full Width Column -->
  <div class="content-wrapper"  style="background-image: url('/logo/bg3.png'); background-size:cover">
    <div class="containe">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        {{-- <h1>
          Top Navigation
          <small>Example 2.0</small>
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="#">Layout</a></li>
          <li class="active">Top Navigation</li>
        </ol> --}}
        <div class="text-right">

          <strong><a href="/" class="btn btn-danger btn-flat"><i class="fa fa-arrow-left"></i> Ke Home</a></strong>
        </div>
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-md-4">
          </div>
          <div class="col-md-4">
            <div class="text-center">
              <br/><br/>
              <img src="/logo/bot.png" width="100%">
            </div>
          <br/><br/>
            <div class="box box-primary">
              <div class="box-header with-border text-center">
                <h3 class="box-title">CHATBOT ADMIN </h3>
      
              </div>
              <form class="form-horizontal" method="post" action="/login">
                @csrf
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Username</label>

                  <div class="col-sm-9">
                    <input type="username" class="form-control" placeholder="username" name="username" value="{{old('username')}}" autocomplete="new-password" />
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-3 control-label">Password</label>

                  <div class="col-sm-9">
                    <input type="password" class="form-control" placeholder="Password" name="password" value="{{old('password')}}" autocomplete="new-password" />
                  </div>
                </div>
              </div>
              <div class="box-footer social-auth-links">
                <button type="submit" class="btn btn-primary btn-flat btn-block"><i class="fa fa-sign-out"></i> Masuk</button>
              </div>
              </form>
            </div>
          </div>
          <div class="col-md-4">
          </div>
        </div>
        
      </section>
      <!-- /.content -->
    </div>
    <!-- /.container -->
  </div>
  <!-- /.content-wrapper -->
  {{-- <footer class="main-footer">
    <div class="container">
      <div class="pull-right hidden-xs">
        <b>Version</b> 1.0.0
      </div>
      <strong>Copyright &copy; 2023 PEMERINTAH DESA NARAHAN</strong>
    </div>
    <!-- /.container -->
  </footer> --}}
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="/assets/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="/assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/assets/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/assets/dist/js/demo.js"></script>
<script type="text/javascript">
@include('layouts.notif')
</script>

</body>

{{-- <script>
  var botmanWidget = {
aboutText: 'Write Something',
title : 'ASISTEN DIGITAL STMIK IB'
introMessage: "✋ Hi! I'm form eimpact.net"
};
</script> --}}
{{-- <script>
  var botmanWidget = {
title: 'ASISTEN DIGITAL STMIK IB',
introMessage: 'Hai, Saya adalah Asisten Digital STMIK Indonesia Banjarmasin, Silahkan ketik Hi atau Halo untuk memulai percakapan',
headerTextColor : '#fff'

};
</script>
<script src='https://cdn.jsdelivr.net/npm/botman-web-widget@0/build/js/widget.js'></script> --}}
</html>
