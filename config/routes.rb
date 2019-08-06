Rails.application.routes.draw do
    get 'ingredients' => 'ingredients#index'
    resources :ingredients
end
