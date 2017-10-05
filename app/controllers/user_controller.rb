class UsersController < ApplicationController
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    user_changed_event
    head :no_content
  end

  private

  def user_params
    params.permit(:color, :gender, :size_ids, :styles)
  end

  def user_changed_event
    create_event(
      name: 'user changed',
      store_id: current_store.id,
      user_id: @user.id
    )
  end
end
