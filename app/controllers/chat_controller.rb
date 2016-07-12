class ChatController < ApplicationController
  def name_form
  end

  def name_login
    cookies.signed[:username] = params[:username]

    redirect_to action: :chat
  end

  def chat
  end
end
