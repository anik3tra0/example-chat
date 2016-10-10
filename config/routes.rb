Rails.application.routes.draw do
   root 'texts#send_text'
   resources :users
   resources :texts, only: :index
   post 'texts/send_message'
   get 'send_text' => 'texts#send_text'
end
