Rails.application.routes.draw do
  get "/one_contact_url" => 'contacts#one_contact_method'
  get "/all_contacts" => 'contacts#all_contacts'
end
