class FashionSetsController < ApplicationController
  def suggest
    fashion_set = FashionSet.search_for_user(current_user, current_store.id)
    json_response(fashion_set)
  end
end
