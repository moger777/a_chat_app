App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    $(document).on "submit.chat", ".chat-form", (evt) =>
      evt.preventDefault()

      message = $('input[name="message"]').val()
      @perform('send_chat', message: message)

  disconnected: -> $(document).off ".chat"

  received: (data) ->
    html = "<p>#{data.message}</p>"

    $('.message-container').append(html)
