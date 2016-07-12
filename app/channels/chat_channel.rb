class ChatChannel < ApplicationCable::Channel
  include ERB::Util

  STREAMED_FROM = "chat"

  def subscribed
    stream_from STREAMED_FROM
  end

  def send_chat(data)
    sanitized_message = h(data["message"])
    summarized_message = "#{username} at #{Time.now}: #{sanitized_message}"
    ActionCable.server.broadcast STREAMED_FROM,
      message: summarized_message
  end
end
