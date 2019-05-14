class RecipesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'recipes_channel'
  end

  def speak
    ActionCable.server.broadcast('recipes_channel', message: 'You have been spoken to', data: Recipe.all.as_json)
  end

  def unsubscribed
  end
end
