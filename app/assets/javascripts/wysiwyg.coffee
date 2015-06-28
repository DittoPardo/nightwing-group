$(document).on "page:change", ->
  $('#project_description').editable(
    {
      inlineMode: false,
      height: '300'
    }
  )
