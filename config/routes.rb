Rails.application.routes.draw do
  root 'ftp_spy#index'

  post 'ftp_spy/go' => 'ftp_spy#go'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
