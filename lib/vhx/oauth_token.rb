class OAuthToken < Struct.new(:access_token, :refresh_token, :expires_at, :expires_in, :refreshed)
  def initialize(params = {}, refreshed = false)
    self.access_token  = params[:token]
    self.refresh_token = params[:refresh_token]
    self.expires_at    = params[:expires_at] || Time.now.to_i + params[:expires_in]
    self.expires_in    = params[:expires_in]
    self.refreshed     = refreshed
  end
end
