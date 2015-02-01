Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cas, host: 'sso.sas.dev'
end
