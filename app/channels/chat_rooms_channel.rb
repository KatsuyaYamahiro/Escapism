# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ChatRoomsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatrooms_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def post(message)
    Message.create!(body: message['body'], user_id: current_user.id)
    ActionCable.server.broadcast 'chatrooms_channel', body: message['body']
  rescue ActiveRecord::RecordInvalid => e
    #TODO: error hanling
    logger.error(e.record.errors)
  end
end
