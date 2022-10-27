@php
$categoryTitle;
foreach($categories as $item){
if($item->query == $category) {
$categoryTitle = $item->title;
}
}
@endphp

<div class="product__description">
	<!-- Order your soul. Reduce your wants. - Augustine -->
	<h2 class="subtitle">
		{{$product->title}}
	</h2>
	<div class="product__tags">
		<a href="#" class="product__tag">
			{{$categoryTitle}}
			{{$product->brand}}</a>
		<a href="#" class="product__tag">
			Все модели
			{{$product->brand}}</a>
		<a href="#" class="product__tag">
			{{$categoryTitle}}</a>
	</div>
	<div class="product__prices prices">
		<x-prices :price="$product->price" :price-discount="$product->price_discount"
			:price-promo="$product->price_promo"></x-prices>
	</div>
	<div class="product__availability">
		<div class="product__availability-item">
			<img width="17"
				src="https://images.vexels.com/media/users/3/157932/isolated/lists/951a617272553f49e75548e212ed947f-curved-check-mark-icon.png">
			<div>В наличии в магазине <span>Lamoda</span></div>`
		</div>
		<div class="product__availability-item">
			<img width="17" src="https://cdn-icons-png.flaticon.com/256/7748/7748977.png">
			<div>Бесплатная доствка</div>
		</div>
	</div>
	<div class="product__counter counter">
		<button data-minus class="counter__button">-</button>
		<input class="counter__input" type="number" value="1" />

		<button data-plus class="counter__button">+</button>
	</div>
	<div class="product__buttons">
		<button data-buy class="btn btn--accent">Купить</button>
		<button class="btn">В избранное</button>
	</div>
	<div class="product__text">
		<p class="text">{{$product->description}}</p>
	</div>
	<div class="product__share share">
		<div class="share__text">Поделиться:</div>
	</div>
	`
</div>