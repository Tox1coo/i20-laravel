@props(['products', 'category'])

<div class="category-body card-product">
	@foreach($products as $key => $product)
	@if($product->availability)
	<div class="card-product__item">
		<a href="/categories/{{$category->query}}/{{$product->id}}">
			<img class="card-product__item-preview" src="{{$product->previewPhoto}}" alt="{{$product->imageDescription}}">
		</a>
		<div class="card-product__body">

			<div class="card-product__category">
				@foreach($allCategories as $categoryName)
				@if($categoryName->id == $product->main)
				Главная категория:
				<a href="/categories/{{$categoryName->query}}"> {{$categoryName->title}}</a>
				@endif
				@endforeach
			</div>
			<h3 class="card-product__name subtitle subtitle--small">{{$product->title}}</h3>
			<x-prices :price="$product->price" :price-discount="$product->price_discount" :price-promo="null">
			</x-prices>
		</div>
	</div>
	@endif
	@endforeach
</div>