#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require nivo
$(document).on 'turbolinks:load', ->
  $('#slider').nivoSlider({
    directionNav: false
  })
