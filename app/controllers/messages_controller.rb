class MessagesController < ApplicationController
    before_action :require_user

    def create
        message = current_user.messages.build(message_params)
        if message.save
            flash[:success] = "Message sent"
            redirect_to root_path
        else
            flash[:danger] = "Message cannot be blank"
            redirect_to root_path
        end
    end

    private

    def message_params
        params.require(:message).permit(:body)
    end
end