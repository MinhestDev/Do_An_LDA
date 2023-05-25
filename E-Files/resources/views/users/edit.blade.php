@extends('layouts.app')
@section('title','Sửa người dùng')
@section('content')
    <section class="content-header">
        <h1>
            Người dùng
        </h1>
    </section>
    <div class="content">
        {!! Form::model($user, ['route' => ['users.update', $user->id], 'method' => 'patch']) !!}

        @include('users.fields')

        {!! Form::close() !!}
    </div>
@endsection
