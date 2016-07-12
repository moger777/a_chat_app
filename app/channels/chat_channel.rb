# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ChatChannel < ApplicationCable::Channel
  STREAMED_FROM = "chat"

  def subscribed
    stream_from STREAMED_FROM
  end

  def send_chat(data)
    message = "#{username} at #{Time.now}: #{data["message"]}"

    ActionCable.server.broadcast STREAMED_FROM,
      message: message
  end
end
