@extends('layouts.app')
@section('meta')
    <?php use App\Helpers\Utility;$setting = Utility::setting();
    $content = isset($setting->content) ? json_decode($setting->content) : '';
    echo "<pre>";
    print_r($content);
    echo "</pre>";die;
    ?>
    <title>{{$cat->name}}</title>
    <meta name="description" content="{{$cat->meta_description}}">
    <meta property="og:title" content="{{$cat->name}}">
    <meta name="keywords" content="{{$cat->name}}">
    <meta property="og:description" content="{{$cat->meta_description}}">
    <meta property="og:type" content="article">
    <meta property="og:image" content="{{Storage::disk('admin')->url($cat->image_og)}}"/>
@endsection
@section('content')
    <section id="body-content">
        <div id="breadcrumbs" xmlns:v="http://rdf.data-vocabulary.org/#">
            <span typeof="v:Breadcrumb"><a href="/" rel="v:url" property="v:title">Trang chủ</a></span>
            › <span typeof="v:Breadcrumb"><span class="breadcrumb_last" property="v:title">{{$title}}</span>
            </span>
        </div>
        <div class="info">
            <h1><a href="/noi-qui-va-dieu-khoan" rel="bookmark">{{$title}}</a></h1>
        </div>
        <div id="content-new">
            {!! $content->soicau !!}
        </div>
    </section>
@stop
@push('js')
@endpush

