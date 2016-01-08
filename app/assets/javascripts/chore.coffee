@update = (element) ->
  element.style.backgroundColor = "#9BC01C"
  para = $(element).find 'p'
  para.replaceWith("<p>Done!</p>")
  id = $(element).data("id")
  url = '/chores/' + id
  
  $.ajax({
    url: url,
    type: 'put'
  });
    
$ ->
  $("li").click (e) ->
    e.preventDefault()
    update(this)


