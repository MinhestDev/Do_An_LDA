<!-- Name Field -->
<div class="form-group">
    {!! Form::label('name', 'Tên:') !!}
    <p>{{ $fileType->name }}</p>
</div>


<!-- No Of Files Field -->
<div class="form-group">
    {!! Form::label('no_of_files', 'Số tập tin:') !!}
    <p>{{ $fileType->no_of_files }}</p>
</div>


<!-- Labels Field -->
<div class="form-group">
    {!! Form::label('labels', 'Nhãn:') !!}
    <p>{{ $fileType->labels }}</p>
</div>


<!-- File Validations Field -->
<div class="form-group">
    {!! Form::label('file_validations', 'Xác thực tệp:') !!}
    <p>{{ $fileType->file_validations }}</p>
</div>


<!-- File Maxsize Field -->
<div class="form-group">
    {!! Form::label('file_maxsize', 'Kích thước file lớn nhất:') !!}
    <p>{{ $fileType->file_maxsize }} MB</p>
</div>


<!-- Created At Field -->
<div class="form-group">
    {!! Form::label('created_at', 'Đã tạo lúc:') !!}
    <p>{{ formatDateTime($fileType->created_at) }}</p>
</div>


<!-- Updated At Field -->
<div class="form-group">
    {!! Form::label('updated_at', 'Đã cập nhật lúc:') !!}
    <p>{{ formatDateTime($fileType->updated_at) }}</p>
</div>


