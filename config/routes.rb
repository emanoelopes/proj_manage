Rails.application.routes.draw do
  resources :projetos do
  	resources :tarefas
  end
end
