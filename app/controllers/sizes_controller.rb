class SizesController < ApplicationController
  def index
    sizes = Size.all
    json_response(sizes)
  end
end
