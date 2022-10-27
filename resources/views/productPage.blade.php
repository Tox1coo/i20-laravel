@extends('layout')

@section('document-title'){{$product->title}}@endsection

@section('content')
<div class="product">
	<a href="{{url()->previous()}}" class="back">Назад</a>

	<x-slider :images="$images"></x-slider>
	<x-description.description :product="$product" :category="$category"></x-description.description>
</div>
@endsection