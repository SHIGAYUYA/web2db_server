Rails.application.routes.draw do
  get 'url2html/get'
  post 'url2html/get' => "url2html#post"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
