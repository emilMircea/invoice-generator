Rails.application.routes.draw do
  resources :invoices do
    match 'search' => 'invoices#search', via: [:get, :post], as: :search
  end

  root to: 'invoices#index'

end
