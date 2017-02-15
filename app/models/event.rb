class Event < ApplicationRecord

  def self.log(params, request)
    event = {
      fid: params[:fid],
      remote_ip: request.remote_ip,
      request_method: request.request_method,
      request_path: request.env['REQUEST_PATH'],
      query_string: request.query_string,
      request_uri: request.env['REQUEST_URI'],
      http_user_agent: request.user_agent,
      http_dnt: request.env['HTTP_DNT'],
      http_accept: request.accept,
      http_accept_encoding: request.accept_encoding,
      http_accept_language: request.accept_language,
      params: params.to_json,
    }
    Event.create(event)

    p 'www'
    p params
    # p request
    # p request



      # @event = Event.new(event_params)


      # GET /events
      # GET /events.json

    # HTTP_ACCEPT_LANGUAGE
    # HTTP_ACCEPT_LANGUAGE
    # HTTP_DNT
    # REMOTE_ADDR

    # t.string :fid
    # t.string :remote_ip
    # t.string :request_method
    # t.text :request_path
    # t.text :query_string
    # t.text :request_uri
    # t.text :http_user_agent
    # t.text :http_dnt
    # t.text :http_accept
    # t.text :http_accept_encoding
    # t.text :http_accept_language
    # t.text :params

    # request.user_agent
  end

end
