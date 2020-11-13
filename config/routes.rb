Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    collection do
      get 'cocktails', to: 'cocktails#_search', as: 'search_cocktail'
    end
    resources :doses
  end
end
