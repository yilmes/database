#encoding: utf-8
DatabasePrj.controllers :kayit do
	post '/new' do
		sonuc = User.first(:userName=>params[:name])
		if sonuc
			flash.next[:info] = "Böyle bir kayıt var."
			redirect '/'
		else
			User.create(:userName=>params[:name],:mail=>params[:mail],:mama=>"deneme")
			flash.next[:info] = "Kayıt başarılı."
			redirect '/'
		end	
	end
	post '/search' do
		sonuc = User.first(:userName=>params[:name])
		if sonuc
			flash.next[:info] =  sonuc.mail
			redirect '/'
		else
			flash.next[:error] = "Kayıt bulunamadı"
			redirect '/'
		end
	end
	post '/addTopic' do
		Topics.create(:subject=>params[:konuB],:message=>params[:mesaj])
	    redirect '/topics'
	end
	post '/addComment/:topic' do
		Comments.create(:nick=>params[:nick],:message=>params[:message],:konuId=>params[:topic])
	    redirect '/topicDetay/detay/'+params[:topic]
	end
end