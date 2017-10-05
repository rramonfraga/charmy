module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def json_error(code, message)
    render json: { status: "error", code: code, message: message }
  end
end
