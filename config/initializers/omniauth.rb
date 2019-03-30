Rails.application.config.middleware.use OmniAuth::Builder do
  provider OmniAuth::Strategies::GoogleOauth2, ENV["KEY"], ENV["SECRET"]
end
