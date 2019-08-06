Rails.application.routes.draw do
    get 'ingredients' => 'ingredients#index'
    resources :ingredients
    get 'ingredient_families' => 'ingredient_families#index'
    resources :ingredient_families
end
