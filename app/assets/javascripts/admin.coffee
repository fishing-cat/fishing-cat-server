#= require jquery
#= require jquery_ujs
#= require tableexport.jquery.plugin/tableExport
#= require bootstrap-sprockets
#= require bootstrap-table
#= require extensions/bootstrap-table-mobile
#= require extensions/bootstrap-table-export

@request_method_formatter = (value, row) ->
  if value == 'GET'
    return "<span class=\"label label-primary\">#{value}</span>"
  if value == 'POST'
    return "<span class=\"label label-danger\">#{value}</span>"
  return value

@action_formatter = (value, row) ->
  if value == 'opened_email'
    return "<span class=\"label label-primary\">Opened E-mail</span>"
  if value == 'clicked_link'
    return "<span class=\"label label-warning\">Clicked Link</span>"
  if value == 'submitted_data'
    return "<span class=\"label label-danger\">Submitted Data</span>"
  if value == 'viewed_result'
    return "<span class=\"label label-success\">Viewed Result</span>"
  return value
