Rails.application.routes.draw do
  get 'scientists/1' => "user#einstein"
  get 'scientists/2' => "user#marie"
  get 'scientists/new'=>"user#new"
  get 'scientists/:id'=> "user#show"
  get '/scientists'=> "user#create"
  get '/scientists/:id/edit' => 'user#edit'
  get 'scientists'=> 'application#index'
 
end
