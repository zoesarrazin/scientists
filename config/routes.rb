Rails.application.routes.draw do
  get 'scientists/1' => "application#einstein"
  get 'scientists/2' => "application#marie"
  get 'scientists/new'=>"application#new"
  get 'scientists/:id'=> "application#show"
  get'/create_gif'=> "application#create"
 
end
