class FashionSetsController < ApplicationController
  def suggest
    user = fake_or_not_user
    if user.valid?
      fashion_set = FashionSet.search_for_user(user, current_store)
      json_response(fashion_set)
    else
      json_error(400, "User not be valid: #{user.errors.messages}")
    end
  end

  private

  def fake_or_not_user
    @user ||= begin
      return current_user if current_user.present?
      FakeUser.new(user_params)
    end
  end

  def user_params
    params.permit(:gender, :color, size_ids: [], style_ids: [])
  end
end
