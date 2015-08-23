Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['SBY_FB_APP_ID'] , ENV['SBY_FB_APP_SECRET'] , {
    image_size: 'large'
  }
end

OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}
