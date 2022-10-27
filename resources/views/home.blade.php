@extends('layout')

@section('document-title')Категории@endsection

@section('content')
<div class="home">
	<div class="container">

		<div class="home__inner">

			<h1 class="title">
				Представленные категории
			</h1>
			<div class="home__categories categories">
				@foreach($categories as $category)
				<div class="categories__item">
					@if($category->countProducts)
					<span class="categories__item-count">{{$category->countProducts}}</span>
					@else
					<span class="categories__item-count">0</span>
					@endif
					<a href="/categories/{{$category->query}}" class="categories__item-title">{{$category->title}}</a>
				</div>
				@endforeach
			</div>
		</div>
	</div>
</div>
@endsection