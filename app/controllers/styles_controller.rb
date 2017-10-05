class StylesController < ApplicationController
  def index
    styles = Style.all
    json_response(styles)
  end
end
