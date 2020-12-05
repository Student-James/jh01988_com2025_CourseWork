Rails.application.routes.draw do
  #Adding the route to the home page.
  root 'home#home'

  #adding the route to contact.
  get 'contact', to: 'home#contact'

  #adding the request_contact routes
  post 'request_contact', to: 'home#request_contact'

end
