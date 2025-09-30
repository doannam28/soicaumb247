@extends('layouts.app')
@section('meta')
    <?php use App\Helpers\Utility;$setting = Utility::setting();?>
    <title>{{$setting->site_title}}</title>
    <meta name="description" content="{{$setting->meta_description}}">
    <meta property="og:title" content="{{$setting->site_title}}">
    <meta name="keywords" content="{{$setting->site_title}}">
    <meta property="og:description" content="{{$setting->meta_description}}">
    <meta property="og:type" content="article">
    <meta property="og:image" content="{{Storage::disk('admin')->url($setting->image_og)}}" />
@endsection
@section('content')

@stop
@push('js')
@endpush

