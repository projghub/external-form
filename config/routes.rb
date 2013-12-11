ExternalForm::Application.routes.draw do
  match '/javascript_form' => 'static_pages#javascript_form'
  match '/javascript' => 'static_pages#javascript'
  match '/:token' => 'static_pages#token'
  root :to => 'static_pages#index'
end
