module IconHelper

  def icon_save(options = {})
    font_awesome_icon("save", options)
  end

  def icon_download(options = {})
    font_awesome_icon("download", options)
  end

  def icon_error(options = {})
    font_awesome_icon("warning", options)
  end

  def icon_action_new(options = {})
    font_awesome_icon("plus", options)
  end

  def icon_action_edit(options = {})
    font_awesome_icon("pencil", options)
  end

  def icon_action_destroy(options = {})
    font_awesome_icon("remove", options)
  end

  def icon_campaigns(options = {})
    font_awesome_icon("bullhorn", options)
  end

  def icon_events(options = {})
    font_awesome_icon("calendar", options)
  end

  def icon_people(options = {})
    font_awesome_icon("user-o", options)
  end

  private

    def font_awesome_icon(names, options)
      names = [names]
      names << "fw" if options[:fw]
      if options[:text]
        fa_icon(names, text:options[:text])
      else
        fa_icon(names)
      end
    end

end
