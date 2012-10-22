#encoding: utf-8
DatabasePrj.controllers :topics do
	get '/' do
		@topics = Topics.all()
		render 'topics'
	end
end