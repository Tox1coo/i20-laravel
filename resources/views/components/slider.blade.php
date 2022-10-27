<div class="slider">
	<div class="slider__list">
		@foreach($images as $image)
		<img class="slider__item " src="{{$image->link}}" alt="{{$image->alt}}">
		@endforeach
		<div class="slider__scroll"></div>
	</div>
	<div class="slider__preview preview">
		<img src="{{$images[0]->link}}" alt="{{$images[0]->alt}}" class="preview__item">
	</div>
</div>