#encoding: utf-8
DatabasePrj.controllers :topicDetay do
  get '/' do
    render 'topicDetay'
  end
  get '/detay/:topic' do
    @topics = Topics.all(:id=>params[:topic])
    @comments = Comments.all(:konuId=>params[:topic],:order=>[:id.desc])
    render 'topicDetay'
  end
end