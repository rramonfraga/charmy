class FashionSetsController < ApplicationController
  def suggest
    user = fake_or_not_user
    if user.valid?
      fashion_set = FashionSet.search_for_user(user, current_store.id)
      json_response(fashion_set)
    else
      json_error(400, "User not be valid: #{user.errors}")
    end
  end

  private

  def fake_or_not_user
    @user ||= begin
      user_params.present? ? FakeUser.new(user_params) : current_user
    end
  end

  def user_params
    permit.permit(:gender, :color, :size_ids, :style_ids)
  end
end
