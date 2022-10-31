@extends('layout')

@section('document-title')Форма обратной связи@endsection

@section('content')

<div class="form">
	<a href="/" class="back">Главная</a>

	<h2 class="title">Форма обратной связи</h2>
	@if($errors->any())
	<div class="alert-message row justify-content-center ">
		<div class="col-md-11">
			<div class="alert alert-danger" role="alert">
				@foreach($errors->all() as $error)
				<p class="text">{{$error}}</p>
				@endforeach
			</div>
		</div>
	</div>
	@endif
	<form action="/form/submit" class="form-submit" method="post">
		@csrf

		<div class="form-group">
			<label for="name">Имя:</label>
			<input type="text" name="name" placeholder="Введите имя..." id="name" class="form-control"
				value="{{Cookie::get('name') ?? ''}}">
		</div>
		<div class="form-group">
			<label for="email">Email:</label>
			<input type="text" name="email" placeholder="Введите email..." id="email" class="form-control"
				value="{{Cookie::get('email') ?? ''}}">
		</div>
		<div class="form-group">
			<label for="birthday">Ваш день рождения:</label>
			<input type="date" name="birthday" id="birthday" value="{{Cookie::get('birthday') ?? ''}}"
				class="form-control">
		</div>
		<div class="form-group">
			<input type="radio" name="gender" id="men" value="men">
			<label for="men">Men</label>
			<input type="radio" name="gender" id="women" value="women">
			<label for="women">Women</label>
		</div>
		<div class="form-group">
			<label for="theme">Тема обращения:</label>
			<input type="text" name="theme" id="theme" placeholder="Введите тему обращения..." class="form-control"
				value="{{Cookie::get('theme') ?? ''}}">
		</div>
		<div class="form-group">
			<label for="question">Введите вопрос:</label>
			<textarea name="question" id="question" placeholder="Введите вопрос..." class="form-control"
				value="{{Cookie::get('question') ?? ''}}"></textarea>
		</div>
		<div class="form-group">
			<input type="checkbox" name="consent" id="consent">
			<label for="consent">C контрактом ознакомлен</label>
		</div>
		<button type="submit" class="btn">Отправить</button>
	</form>
	@if(session('success'))
	<div class=" alert alert-success" role="alert">
		Ваше сообщение было отправлено, ожидайте ответа!
	</div>
	@endif
</div>
@endsection