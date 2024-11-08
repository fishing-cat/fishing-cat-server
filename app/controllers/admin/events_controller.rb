require "csv"

class Admin::EventsController < Admin::ApplicationController
  def index
    relation = Event.search(search)
    @events_count = relation.count
    @events = relation.order(sort => order).limit(limit).offset(offset)

    respond_to do |format|
      format.html { render }
      format.csv { send_events_csv(@events) }
      format.json {
        render json: {
          total: @events_count,
          rows: @events,
        }
      }
    end

  end

  def send_events_csv(events)
    csv_data = CSV.generate do |csv|
      column_names = %w[id cid pid action updated_at created_at fingerprint remote_ip query_string request_method request_path request_uri http_user_agent http_dnt http_referer http_accept http_accept_encoding http_accept_language params]
      csv << column_names
      events.each do |event|
        column_values = [
          event.id,
          event.cid,
          event.pid,
          event.action,
          event.updated_at,
          event.created_at,
          event.fingerprint,
          event.remote_ip,
          event.query_string,
          event.request_method,
          event.request_path,
          event.request_uri,
          event.http_user_agent,
          event.http_dnt,
          event.http_referer,
          event.http_accept,
          event.http_accept_encoding,
          event.http_accept_language,
          event.params,
        ]
        csv << column_values
      end
    end
    send_data(csv_data, filename: "events-#{Time.now.iso8601}.csv", type: "text/csv", disposition: "inline")
  end

  def search
    params[:search]
  end

  def sort
    Event.attribute_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def order
    %w[asc desc].include?(params[:order]&.downcase) ? params[:order].downcase : "asc"
  end

  def limit
    params[:limit]
  end

  def offset
    params[:offset]
  end
end
