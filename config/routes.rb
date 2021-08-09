Rails.application.routes.draw do
  # get '/', to: "pages#home", as: :root
  root to: "pages#home"
  get 'flats/:id', to: 'pages#show', as: :flat

end
