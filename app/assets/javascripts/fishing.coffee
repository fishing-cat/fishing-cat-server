#= require jquery
#= require jquery_ujs
#= require fingerprintjs2/dist/fingerprint2.min

$(document).ready ->
  new Fingerprint2().get (fingerprint) ->
    $('#fingerprint').val(fingerprint)
