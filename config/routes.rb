Rails.application.routes.draw do
 root 'courses#index'
 resources :courses 
 post 'courses/:id/edit' , to:'courses#edit'
 resources :students
 post 'students/:id/edit' , to:'students#edit'

end
