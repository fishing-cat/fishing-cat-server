module IconHelper

  def icon_save(options = {})
    font_awesome_icon('save', options)
  end
  def icon_error(options = {})
    font_awesome_icon('warning', options)
  end

  def icon_action_new(options = {})
    font_awesome_icon('plus', options)
  end

  def icon_action_edit(options = {})
    font_awesome_icon('pencil', options)
  end

  def icon_action_destroy(options = {})
    font_awesome_icon('remove', options)
  end

  def icon_campaigns(options = {})
    font_awesome_icon('bullhorn', options)
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
