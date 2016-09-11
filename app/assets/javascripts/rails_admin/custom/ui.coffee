#= require ./nav_bar.js
$ = jQuery
$(document).ready ->
  
  if $('#user_role').val() == 'user' or $('#user_role').val() == 'superadmin'
    $('#user_authority_field').css('display', 'none')
  else
    $('#user_authority_field').css('display', 'block')
  
  $('#product_Type_id').empty()
  $('#product_Type_id').append "<option value='' selected='selected'></option>"
  $('#product_Type_id').change()
  $(document).on 'change', '#product_category_id', (event) ->
    category = $('#product_category_id').val()
    $.get("/categories/find_subtypes/" + category).done (values) ->
      $('#product_Type_id').empty()
      $('#product_Type_id').append '<option value=""></option>'
      $.each values, (idx, value) ->
        $('#product_Type_id').append $('<option> ',
          value: value[0]
          text: value[1]
        )
        
  
  
  # $(document).on 'click', '#authorized', (event) ->
  #   checkbox = document.getElementById('authorized')
  #   #
  #   alert checkbox.value
  #   #是否被选中
  #   if checkbox.checked
  #     #选中了
  #     checkbox.value = 1
  #   else
  #     #没选中
  #     checkbox.value = 0
  #   return

  $('#pop_product_type_id').empty()
  $('#pop_product_type_id').append "<option value='' selected='selected'></option>"
  $('#pop_product_type_id').change()
  $(document).on 'change', '#pop_product_category_id', (event) ->
    # window.alert "aaa"
    category = $('#pop_product_category_id').val()
    # window.alert category
    $.get("/categories/find_subtypes/" + category).done (values) ->
      # window.alert "aaa"
      $('#pop_product_type_id').empty()
      $('#pop_product_type_id').append '<option value=""></option>'
      $.each values, (idx, value) ->
        # window.alert  value[1]
        $('#pop_product_type_id').append $('<option>',
          value: value[0]
          text: value[1]
        )
        
  $(document).on 'change', '#user_role', (event) ->
    if $('#user_role').val() == 'user' or $('#user_role').val() == 'superadmin'
      $('#user_authority_field').css('display', 'none')
    else
      $('#user_authority_field').css('display', 'block')
      
  $(document).on 'click', "#current_user_authorities", (event)->
    currentval = $('#user_authorities_field').val()
    addval = $(this).val()
    if currentval != ''
      if currentval.indexOf(addval) >= 0
        if currentval.indexOf(addval) == 0
          newval = currentval.replace(addval, '')
        else
          newval = currentval.replace(','+addval, '')
      else
        newval = currentval+','+addval
    else
      newval = addval
    while newval.charAt(0) == ','
      newval = newval.slice( 1 )
    while newval.slice(-1) == ','
      newval = newval.substring(0, newval.length-1)
    $("#user_authorities_field").val(null)
    #if you want array
    $('#user_authorities_field').val(newval.split(','))
    #if you want string
    $('#user_authorities_field').val(newval)
    #comment if dont want alert
    # window.alert $(this).val()
  
  return
