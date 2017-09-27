#= require jquery
#= require jquery_ujs
#= require tableexport.jquery.plugin/tableExport
#= require bootstrap-sprockets
#= require bootstrap-table/dist/bootstrap-table
#= require bootstrap-table/dist/extensions/mobile/bootstrap-table-mobile
#= require bootstrap-table/dist/extensions/export/bootstrap-table-export

@action_formatter = (value, row) ->
  if value == 'opened_email'
    return "<span class=\"label label-info\">Opened E-mail</span>"
  if value == 'clicked_link'
    return "<span class=\"label label-warning\">Clicked Link</span>"
  if value == 'submitted_data'
    return "<span class=\"label label-danger\">Submitted Data</span>"
  if value == 'viewed_result'
    return "<span class=\"label label-success\">Viewed Result</span>"
  return value

styles = {
  opened_email: 'info',
  clicked_link: 'warning',
  submitted_data: 'danger',
  viewed_result: 'success',
}

@action_cell_style = (value, row, index, field) ->
  classes = ['active', 'success', 'info', 'warning', 'danger']
  if value > 0
    return {
      classes: styles[field]
    }
  else
    return {}

@action_count_formatter = (value, row) ->
  if value > 0
    return "<strong>#{value}</strong>"
  else
    return value

$(document).ready ->
  $('#show_admin_campaigns_template_form').on 'ajax:success', (event, data) ->
    $('#campaign_form_template').val(data)
  $('#show_admin_campaigns_template_result').on 'ajax:success', (event, data) ->
    $('#campaign_result_template').val(data)
