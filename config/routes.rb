Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope path: :rio do
    root 'landing#index'

    get '/:locale' => 'landing#index'

    scope "(:locale)", locale: /es|en/ do
      get 'landing/index'
      get 'static_pages/about'
      get 'static_pages/contact'
      get 'static_pages/sponsors'

      get 'static_pages/cfp'
      get 'static_pages/download_cpf'
      get 'static_pages/accepted_paper'
      get 'static_pages/download_accepted_paper'
      get 'static_pages/schedule'



      get 'static_pages/inscription'
      get 'static_pages/school'
      get 'static_pages/talks'
     
      get 'static_pages/accommodation'
      get 'static_pages/transport'


      get 'workshops/:slug', to: 'workshops#show'


    end
  end
end

