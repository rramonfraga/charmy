class EventCreatorJob < ApplicationJob
  queue_as :default

  def perform(name, product_id, user_id, store_id)
    Event.create!(
      name: name,
      product_id: product_id,
      user_id: user_id,
      store_id: store_id
    )
  end
end
