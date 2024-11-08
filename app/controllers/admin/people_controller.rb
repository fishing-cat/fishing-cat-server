class Admin::PeopleController < Admin::ApplicationController
  def index
    relation = Event.search(search)
    @entries = relation.where.not(cid: [ nil, "" ], pid: [ nil, "" ]).distinct.pluck(:cid, :pid).compact
    @events = relation.order(sort => order).limit(limit).offset(offset)
    @records = []
    @entries.each do |cid, pid|
      record = {}
      record[:cid] = cid
      record[:pid] = pid
      %i[opened_email clicked_link submitted_data viewed_result].each do |action|
        record[action] = @events.select{ |e|
          e.cid == cid && e.pid == pid && e.action == action.to_s
        }.size
      end
      @records << record
    end
    # @records.sort!{ |a, b|
    #   a[sort.to_sym] <=> b[sort.to_sym]
    # }
    respond_to do |format|
      format.html { render }
      format.json {
        render json: {
          total: @records.size,
          rows: @records,
        }
      }
    end
  end

  private

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
