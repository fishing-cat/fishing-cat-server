#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require bootstrap-table
#= require extensions/bootstrap-table-mobile

@request_method = (value, row) ->
  if value == 'GET'
    return "<span class=\"label label-primary\">#{value}</span>"
  if value == 'POST'
    return "<span class=\"label label-danger\">#{value}</span>"
  return value
