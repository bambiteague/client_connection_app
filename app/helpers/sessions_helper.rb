module SessionsHelper
  def omniauth
    user = Globaluser.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:globaluser_id] = user.id
      redirect_to globaluser_path(user)
    else
      redirect_to '/login'
    end
  end

end