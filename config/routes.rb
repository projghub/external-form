ExternalForm::Application.routes.draw do
  match '/javascript_form' => 'static_pages#javascript_form'
  match '/javascript' => 'static_pages#javascript'
  root :to => 'static_pages#index'
end
