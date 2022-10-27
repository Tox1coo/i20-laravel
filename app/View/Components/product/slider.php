<?php

namespace App\View\Components\product;

use Illuminate\View\Component;

class slider extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $images;
    public function __construct($images)
    {
        $this->images = $images;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.product.slider');
    }
}