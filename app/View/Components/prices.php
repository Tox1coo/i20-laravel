<?php

namespace App\View\Components;

use Illuminate\View\Component;

class prices extends Component
{
    public $price;
    public $priceDiscount;
    public $pricePromo;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($price, $priceDiscount, $pricePromo)
    {
        $this->price = $price;
        $this->priceDiscount = $priceDiscount;
        $this->pricePromo = $pricePromo;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.prices');
    }
}