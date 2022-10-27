<div class="prices">
	<div class="prices__current">
		@if($priceDiscount)
		<del>{{$price}} ₽</del>
		@else
		{{$price}} ₽
		@endif
	</div>
	<div class="prices__discount">{{$priceDiscount}} ₽</div>
	@if($pricePromo)
	<div class="prices__promo"><span>{{$pricePromo}} ₽</span> — с промокодом</div>
	@endif
</div>