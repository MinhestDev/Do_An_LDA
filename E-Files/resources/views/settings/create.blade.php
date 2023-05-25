@extends('layouts.app')
@section('title','Cài đặt')
@section('content')
    <section class="content-header">
        <h1>
            Cài đặt
        </h1>
    </section>
    <div class="content">
        <div class="box box-primary">

            <div class="box-body">
                <div class="row">
                    {!! Form::open(['route' => 'settings.store']) !!}

                        @include('settings.fields')

                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
@endsection
