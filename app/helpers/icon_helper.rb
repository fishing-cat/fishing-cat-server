module IconHelper

  def icon_people(options = {})
    font_awesome_icon('users', options)
  end

  def icon_events(options = {})
    font_awesome_icon('calendar', options)
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
