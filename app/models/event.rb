class Event < ApplicationRecord

  include SearchCop

  search_scope :search do
    attributes :id, :cid, :remote_ip, :query_string, :request_method, :request_path, :request_uri, :http_user_agent, :http_dnt, :http_referer, :http_accept, :http_accept_encoding, :http_accept_language, :params
  end

  def self.log(params, request)
    event = {
      cid: params[:cid],
      pid: params[:pid],
      fingerprint: params[:fingerprint],
      remote_ip: request.remote_ip,
      query_string: request.query_string,
      request_method: request.request_method,
      request_path: request.env['REQUEST_PATH'],
      request_uri: request.env['REQUEST_URI'],
      http_user_agent: request.user_agent,
      http_dnt: request.env['HTTP_DNT'],
      http_referer: request.env['HTTP_REFERER'],
      http_accept: request.accept,
      http_accept_encoding: request.accept_encoding,
      http_accept_language: request.accept_language,
      params: params.to_json,
    }
    Event.create(event)
  end

end
