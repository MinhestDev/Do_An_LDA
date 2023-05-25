@extends('layouts.app')
@section('title','Người mới')
@section('content')
    <section class="content-header">
        <h1>
            Người dùng
        </h1>
    </section>
    <div class="content">

        {!! Form::open(['route' => 'users.store']) !!}

        @include('users.fields')

        {!! Form::close() !!}
    </div>
@endsection
