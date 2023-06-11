@extends('layouts.app')
@push('css')
    
@endpush
@section('content')

<a href="/superadmin/percakapan" class="btn btn-danger"><i class="fa fa-arrow-left"></i> Kembali</a> <br /><br />
<div class="row">

    <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header">
            <i class="ion ion-clipboard"></i><h3 class="box-title">Data Riwayat Percakapan CHATI ID : {{$data->first()->chat_id}}</h3>

            <div class="box-tools">
            </div>
          </div>
          <!-- /.box-header -->
          <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
              <tbody><tr>
                <th>Tanggal</th>
                <th>Response Bot</th>
                <th>Response User</th>
              </tr>
              @foreach ($data as $key => $item)
              <tr>
                <td>{{$item->created_at}}</td>
                <td>{{$item->response_bot}}</td>
                <td>{{$item->response_user}}</td>
              </tr>
              @endforeach
            </tbody></table>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
</div>

@endsection
@push('js')

@endpush
