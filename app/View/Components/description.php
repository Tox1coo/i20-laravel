<?php

namespace App\View\Components;

use Illuminate\View\Component;

class description extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $product;
    public $category;

    public function __construct($product, $category)
    {
        $this->product = $product;
        $this->category = $category;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.description');
    }
}