class MessagesController < ApplicationController
  def index
  end
  
  ## ここから追記
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  end
end

  
  private
  def message_params
    params.require(:message).permit(:name, :body)
  end

class MessagesController < ApplicationController
  def index
    # Message をすべて取得する
    @messages = Message.all
  end
end