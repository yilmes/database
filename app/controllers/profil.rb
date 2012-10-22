#encoding: utf-8
DatabasePrj.controllers :profil do
  get '/' do
    render 'profile'
  end
  get '/goster/:name' do
    @users = User.all(:userName=>params[:name])
    render 'profile'
  end

end