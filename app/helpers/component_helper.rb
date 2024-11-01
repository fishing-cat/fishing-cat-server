module ComponentHelper
  def component_notice
    if notice
      tag.div(class: "alert alert-success alert-dismissible", role: "alert") do
        concat icon_info
        concat tag.span(notice, id: "notice")
        concat tag.button(type: "button", class: "btn-close", "data-bs-dismiss": "alert", "aria-label": "Close")
      end
    end
  end
end
