@update = (element) ->
  element.style.backgroundColor = "#9BC01C"
  para = $(element).find 'p'
  para.replaceWith("<p>Done Today</p>")
    
$ ->
  $("li").click (e) ->
    e.preventDefault()
    update(this)


