@extends('layout')

@section('document-title')Категории@endsection

@section('content')
<div class="category">
	<h2 class="title ">Товары</h2>
	<x-product.product :products="$products" :category="$category"></x-product.product>
	{{$products->onEachSide(1)->links()}}
</div>
@endsection

@section('aside')
<aside class="category-info">
	<a href="/" class="back">Главная</a>
	@foreach($categories as $item)
	@if($item->id == $category->id)
	<div class="category-info__title">Категория: <span> {{$category->title}}</span></div>
	<div class="category-info__count">Количество товаров: <span>{{$item->countProducts}}</span></div>
	<div class="category-info__description"> <span>Описание: </span> {{$category->description}}</div>
	@endif
	@endforeach
</aside>
@endsection