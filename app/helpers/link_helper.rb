module LinkHelper

  def link_to_image(cid:, pid:)
    link = "#{request.base_url}/images/#{cid}/#{pid}.png"
    link_to(link, link)
  end

  def link_to_form(cid:, pid:)
    link = "#{request.base_url}/forms/#{cid}/#{pid}"
    link_to(link, link)
  end

  def link_to_result(cid:, pid:)
    link = "#{request.base_url}/results/#{cid}/#{pid}"
    link_to(link, link)
  end

end
