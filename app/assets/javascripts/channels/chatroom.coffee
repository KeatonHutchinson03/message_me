App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    console.log("Connected to ChatroomChannel")

  disconnected: ->
    console.log("Disconnected to Chatroom Channel")

  received: (data) ->
    $('#message-container').append(data.mod_message)
    scroll_bottom()
