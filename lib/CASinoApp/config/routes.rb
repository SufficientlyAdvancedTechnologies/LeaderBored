CASinoApp::Application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'root'
  mount CASino::Engine => '/CAS', :as => 'CASino'
end
