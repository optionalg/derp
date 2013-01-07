# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register_alias "text/html", :iphone

Mime::Type.register "application/vnd.derp.api.v1+json", :api_v1

# Remove XML from default parsers for security reasons
ActionDispatch::ParamsParser::DEFAULT_PARSERS.delete(Mime::XML)
# Tell ActionDispatch to parse API_V1 post/put bodies as JSON
ActionDispatch::ParamsParser::DEFAULT_PARSERS[Mime::API_V1] = :json
