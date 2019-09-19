Rails.application.routes.draw do
  resources :projetos do
  	resources :tarefas do
  		member do
  			patch :complete
  		end
  	end
  end
end
