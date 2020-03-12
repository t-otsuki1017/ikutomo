Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}
  devise_for :members, controllers: {
  sessions: 'members/sessions',
  registrations: 'members/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "homes#top"
  get "home/about" => "homes#about"
  get'admin/top' => 'admin#top'
    resources :posts
end
