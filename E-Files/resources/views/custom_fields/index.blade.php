@extends('layouts.app')
@section('title','Danh sách tùy chỉnh')
@section('content')
    <section class="content-header">
        <h1 class="pull-left">Trường tùy chỉnh</h1>
        <h1 class="pull-right">
           <a class="btn btn-primary pull-right" style="margin-top: -10px;margin-bottom: 5px" href="{!! route('customFields.create') !!}">
               <i class="fa fa-plus"></i>
               Thêm mới
           </a>

        </h1>
    </section>
    <div class="content">
        <div class="clearfix"></div>

        @include('flash::message')

        <div class="clearfix"></div>
        <div class="box box-primary">
            <div class="box-body">
                    @include('custom_fields.table')
            </div>
        </div>
        <div class="text-center">

        </div>
    </div>
@endsection

