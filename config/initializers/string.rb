class String
  def is_valid_url?
    uri = URI.parse self
    uri.kind_of? URI::HTTP || URI::HTTPS
  rescue URI::InvalidURIError
    false
  end
end