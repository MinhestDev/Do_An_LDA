<!-- Name Field -->
<div class="form-group">
    {!! Form::label('name', 'Name:') !!}
    <p>{{ $tag->name }}</p>
</div>


<!-- Color Field -->
<div class="form-group">
    {!! Form::label('color', 'Màu sắc:') !!}
    <p>{!! '<span class="label" style="background-color: '.$tag->color.'">'.$tag->color.'</span>'  !!}</p>
</div>


<!-- Custom Fields Field -->
@foreach ($tag->custom_fields??[] as $custom_field_name=>$custom_field_value)
    <div class="form-group">
        {!! Form::label($custom_field_name, Str::title(str_replace('_',' ',$custom_field_name)).":") !!}
        <p>{{ $custom_field_value }}</p>
    </div>
@endforeach

<!-- Created By Field -->
<div class="form-group">
    {!! Form::label('created_by', 'Đã tạo bởi:') !!}
    <p>{{ $tag->createdBy->name }}</p>
</div>

<!-- Created At Field -->
<div class="form-group">
    {!! Form::label('created_at', 'Đã tạo lúc:') !!}
    <p>{{ $tag->created_at }}</p>
</div>


<!-- Updated At Field -->
<div class="form-group">
    {!! Form::label('updated_at', 'Cập nhật lúc:') !!}
    <p>{{ $tag->updated_at }}</p>
</div>


