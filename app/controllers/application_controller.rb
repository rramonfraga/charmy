class ApplicationController < ActionController::API
  include ExceptionHandler
  include Response

  def create_event(name:, product_id:, user_attributes:)
    user = User.find_or_create_fake(user_attributes)
    Event.delay.create(
      name: name,
      product_id: product_id,
      user_id: check_real(user),
      fake_user_id: check_fake(user),
      store_id: current_store.id
    )
  end

  def current_store
    @current_store ||= Store.take_config_store
  end

  def current_user
    return if session[:user_id].blank?
    @current_user ||= User.find(session[:user_id])
  end

  private

  def check_real(user)
    return nil if user.class.to_s == 'FakeUser'
    user
  end

  def check_fake(user)
    return nil if user.class.to_s == 'User'
    user
  end
end
