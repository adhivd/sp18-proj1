Rails.application.routes.draw do
    devise_for :trainers
    root to: "home#index"
    resources :trainers
    patch "capture", to: "pokemons#capture"
    patch "damage", to: "trainers#damage"
    get "/pokemons/new", to: "pokemons#new"
    post "/pokemons/new", to: "pokemons#createPok"
    get "link", to: "pokemons#new"
end
