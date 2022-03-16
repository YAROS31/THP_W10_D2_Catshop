Rails.application.routes.draw do
  
  # JBV 15.03.2022 - Default route / root pointed to the 'home' static page
  root to: 'static_pages#home'

  # JBV 15.03.2022 - Devise autogenerated routes (sign-in, sign-up...)
  devise_for :users
  
  # JBV 15.03.2022 - Route to 'index' method of the 'items' controller created with the latter
  get 'items/index'

  # JBV 15.03.2022 - Other routes for specific static pages
  get 'static_pages/about'
  get 'static_pages/contact'
  
end
