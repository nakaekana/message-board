class MessagesController < ApplicationController
  def index
    # Message を全て取得する
    @messages = Message.all
    @message = Message.new
  end
  
  ## ここから追記
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path , notice: 'メッセージを保存しました'
    else
      # メッセージが保存できなかったとき
      @messages = Message.all
      flash.now[:alert] = 'メッセージの保存に失敗しました'
      render 'index'
    end
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