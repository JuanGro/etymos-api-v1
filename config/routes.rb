Rails.application.routes.draw do
  resources :word_etymologies
  resources :etymologies
  resources :options
  resources :tests
  resources :words

  # Detail Endpoints
  # Lite version
  resources :lite_random_words
  resources :lite_random_tests
  resources :lite_random_etymologies
  # Pro version
  resources :pro_random_words
  resources :pro_random_tests
  resources :pro_random_etymologies
  # Medical version
  resources :med_random_words
  resources :med_random_tests
  resources :med_random_etymologies

  post '/complete_words', to: 'complete_words#get_complete_words'
  post '/find_etymologies', to: 'find_etymologies#find_etymology'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
