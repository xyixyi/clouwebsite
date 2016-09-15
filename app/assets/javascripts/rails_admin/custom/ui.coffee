#= require ./nav_bar.js
$ = jQuery
$(document).ready ->
  
  # if $('#user_role').val() == 'user' or $('#user_role').val() == 'superadmin'
  #   $('#user_authority_field').css('display', 'none')
  # else
  #   $('#user_authority_field').css('display', 'block')
  
  $('#product_Type_id').empty()
  $('#product_Type_id').append "<option value='' selected='selected'></option>"
  $('#product_Type_id').change()
  $(document).on 'change', '#product_category_id', (event) ->
    # window.alert "aaa"
    category = $('#product_category_id').val()
    # window.alert category
    $.get("/categories/find_subtypes/" + category).done (values) ->
      $('#product_Type_id').empty()
      $('#product_Type_id').append '<option value=""></option>'
      $.each values, (idx, value) ->
        $('#product_Type_id').append $('<option>',
          value: value[0]
          text: value[1]
        )
        
  $('#pop_product_type_id').empty()
  $('#pop_product_type_id').append "<option value='' selected='selected'></option>"
  $('#pop_product_type_id').change()
  $(document).on 'change', '#pop_product_category_id', (event) ->
    # window.alert "aaa"
    category = $('#pop_product_category_id').val()
    # window.alert category
    $.get("/categories/find_subtypes/" + category).done (values) ->
      $('#pop_product_type_id').empty()
      $('#pop_product_type_id').append '<option value=""></option>'
      $.each values, (idx, value) ->
        $('#pop_product_type_id').append $('<option>',
          value: value[0]
          text: value[1]
        )
        
  $(document).on 'change', '#user_role', (event) ->
    if $('#user_role').val() == 'user' or $('#user_role').val() == 'superadmin'
      $('#user_authority_field').css('display', 'none')
    else
      $('#user_authority_field').css('display', 'block')
      
  return
