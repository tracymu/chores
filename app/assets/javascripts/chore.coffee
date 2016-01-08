@paintIt = (element, backgroundColor) ->
  element.style.backgroundColor = "#9BC01C"
    
$ ->
  $("li").click (e) ->
    e.preventDefault()
    paintIt(this)