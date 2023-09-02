module ComponentHelper

  def component_notice
    if notice
      content_tag(:div, class:"alert alert-success alert-dismissible", role:"alert") do
        content_tag(:button, type:"button", class:"close", "data-dismiss":"alert", "aria-label":"Clonse"){
          content_tag(:span, "&times;".html_safe, "aria-hidden":true)
        } + content_tag(:p, notice, id:"notice")
      end
    end
  end

end
