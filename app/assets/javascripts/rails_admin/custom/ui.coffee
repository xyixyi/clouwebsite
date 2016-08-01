#= require ./nav_bar.js
$ = jQuery
$(document).ready ->
  
  $('#product_Type_id').empty()
  $('#product_Type_id').append "<option value='' selected='selected'></option>"
  $('#product_Type_id').change()
  $(document).on 'change', '#product_category_id', (event) ->
    category = $('#product_category_id').val()
    $.get("/categories/find_subtypes/" + category).done (values) ->
      $('#product_Type_id').empty()
      $('#product_Type_id').append '<option value=""></option>'
      $.each values, (idx, value) ->
        $('#product_Type_id').append $('<option selected="selected"> ',
          value: value[0]
          text: value[1]
        )
  # return

  $('#pop_product_type_id').empty()
  $('#pop_product_type_id').append "<option value='' selected='selected'></option>"
  $('#pop_product_type_id').change()
  $(document).on 'change', '#pop_product_category_id', (event) ->
    window.alert "aaa"
    category = $('#pop_product_category_id').val()
    $.get("/categories/find_subtypes/" + category).done (values) ->
      $('#pop_product_type_id').empty()
      $('#pop_product_type_id').append '<option value=""></option>'
      $.each values, (idx, value) ->
        $('#pop_product_type_id').append $('<option selected="selected"> ',
          value: value[0]
          text: value[1]
        )
  return
