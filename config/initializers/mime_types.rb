# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register_alias "text/html", :iphone

Mime::Type.register "application/vnd.derp.api.v1+json", :api_v1

# Tell ActionDispatch to parse API_V1 post/put bodies as JSON
Derp::Application.config.middleware.delete "ActionDispatch::ParamsParser"
Derp::Application.config.middleware.use ActionDispatch::ParamsParser, { Mime::API_V1 => :json }
