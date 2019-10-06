module HeimdallLogbook
  def log_request
    data = {requested_at: Time.zone.now}
    request_fields.map{ |f| data[f] = request.send(f) }
    HeimdallLogbook::Request.create(data)
    true
  end


  def log_response
    data = {responded_at: Time.zone.now}
    response_fields.map{ |f| data[f] = response.send(f) }
    HeimdallLogbook::Response.create(data)
    true
  end

  private

  def request_fields
    [
      :request_method, :ip, :original_url, :remote_ip, :uuid,
      :authorization, :format, :headers, :port, :protocol, :query_string,
      :domain, :host
    ]
  end

  def response_fields
    [
      :body, :response_code, :headers, :content_type, :status,
      :location, :message, :charset, :status
    ]
  end
end