Rails.application.routes.draw do
  get 'url2html/get'
  post 'url2html/get' => "url2html#post"
  root 'url2html#get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
