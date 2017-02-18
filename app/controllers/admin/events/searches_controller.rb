class Admin::Events::SearchesController < Admin::ApplicationController

  def index
    relation = Event.search(search)
    @events_count = relation.count
    @events = relation.order([sort, order].join(' ')).limit(limit).offset(offset)
    render json:{
      total:@events_count,
      rows:@events,
    }
  end

  def search
    params[:search]
  end

  def sort
    Event.attribute_names.include?(params[:sort]) ? params[:sort] : 'id'
  end

  def order
    %w(asc desc).include?(params[:order]&.downcase) ? params[:order].downcase : 'asc'
  end

  def limit
    params[:limit]
  end

  def offset
    params[:offset]
  end

end
