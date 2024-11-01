module IconHelper
  def icon_load(options = {})
    icon_bootstrap("download", options)
  end

  def icon_download(options = {})
    icon_bootstrap("cloud-arrow-down-fill", options)
  end

  def icon_info(options = {})
    icon_bootstrap("info-circle-fill", options)
  end

  def icon_error(options = {})
    icon_bootstrap("warning", options)
  end

  def icon_action_new(options = {})
    icon_bootstrap("plus-lg", options)
  end

  def icon_action_edit(options = {})
    icon_bootstrap("pencil-fill", options)
  end

  def icon_action_destroy(options = {})
    icon_bootstrap("trash-fill", options)
  end

  def icon_action_save(options = {})
    icon_bootstrap("floppy-fill", options)
  end

  def icon_campaigns(options = {})
    icon_bootstrap("megaphone-fill", options)
  end

  def icon_events(options = {})
    icon_bootstrap("calendar-event-fill", options)
  end

  def icon_people(options = {})
    icon_bootstrap("people-fill", options)
  end

  private

  def icon_bootstrap(name, options)
    if options[:text]
      capture do
        concat bootstrap_icon(name, class: " me-1 mb-1")
        concat options[:text]
      end
    else
      bootstrap_icon(name, class: " me-1 mb-1")
    end
  end
end
