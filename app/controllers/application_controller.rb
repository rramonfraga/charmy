class ApplicationController < ActionController::API
  include ExceptionHandler
  include Response

  def create_event(name:, product_id:, user_id:)
    Event.delay.create(
      name: name,
      product_id: product_id,
      user_id: user_id,
      store_id: current_store.id
    )
  end

  def current_store
    @current_store ||= Store.take_config_store
  end
end
