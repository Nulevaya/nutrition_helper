Rails.application.routes.draw do
    resources :ingredients

    resources :ingredient_families, only: [:index, :show]
end
