Rails.application.routes.draw do
  root 'chat#name_form'

  post 'chat/name_login'

  get 'chat/chat'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
