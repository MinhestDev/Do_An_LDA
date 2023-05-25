@extends('layouts.app')
@section('title','Trường tùy chỉnh mới')
@section('content')
    <section class="content-header">
        <h1>
            Tùy chỉnh
        </h1>
    </section>
    <div class="content">
        <div class="box box-primary">

            <div class="box-body">
                <div class="row">
                    {!! Form::open(['route' => 'customFields.store']) !!}

                        @include('custom_fields.fields')

                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
@endsection
