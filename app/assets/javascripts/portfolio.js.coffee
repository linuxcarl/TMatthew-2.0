jQuery ->
  
  $('.slider_button').click ->
    $employer = $(@).closest '.employer'
    count = $employer.data 'project-count'
    index = $employer.data 'project-index'
    direction = $(@).attr 'data-direction'
    if direction == 'next'
      index++
      index = 0 if index >= count
    else
      index--
      index = count-1 if index < 0
    goToPage $employer, index
    false

  $('.page').click ->
    $employer = $(@).closest '.employer'
    page = $(@).data 'page'
    goToPage $employer, page
    false

  $('.screenshots a').colorbox
    current: false, previous: false, next: false

goToPage = (employer, page) ->
  employer.data 'project-index', page
  employer.find('.projects').animate {left: (page * -1 * 860)}, 'fast'
  employer.find('.page[data-selected="true"]').attr 'data-selected', false
  employer.find(".page[data-page='#{page}']").attr 'data-selected', true
