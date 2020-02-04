Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope path: :rio do
    root 'landing#index'

    get '/:locale' => 'landing#index'

    scope "(:locale)", locale: /es|en/ do
      get 'landing/index'
      get 'about', to: 'static_pages#about'
      get 'contact', to: 'static_pages#contact'
      get 'sponsors', to: 'static_pages#sponsors'

      get 'cfp', to: 'static_pages#cfp'
      get 'download_cpf', to: 'static_pages#download_cpf'
      get 'accepted_paper', to: 'static_pages#accepted_paper'
      get 'download_accepted_paper', to: 'static_pages#download_accepted_paper'
      get 'schedule', to: 'static_pages#schedule'


      get 'accommodation_rio', to: 'static_pages#accommodation_rio'

      get 'inscription', to: 'static_pages#inscription'
      get 'school', to: 'static_pages#school'

      get 'talks', to: 'static_pages#talks'
     
      get 'accommodation', to: 'static_pages#accommodation'
      get 'transport', to: 'static_pages#transport'
      get 'scholarships', to: 'static_pages#scholarships'



      # get 'materials_course2', to: 'static_pages#materials_course2'



      get 'workshops/:slug', to: 'workshops#show'


    end
  end
end

