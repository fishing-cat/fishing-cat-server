module IconHelper

  def icon_events(options = {})
    font_awesome_icon('calendar', options)
  end

  def icon_reports(options = {})
    font_awesome_icon('file-text-o', options)
  end

  private

    def font_awesome_icon(names, options)
      if options[:text]
        fa_icon(names, text:options[:text])
      else
        fa_icon(names)
      end
    end

end
