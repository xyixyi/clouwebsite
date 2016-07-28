$ = jQuery
$(document).ready ->
  
  $('#product_Type_id').empty()
  $('#product_Type_id').append '<option value=""></option>'
  $('#product_Type_id').change()
  # $('#product_category_id_field').change ->
  $(document).on 'change', '#product_category_id', (event) ->
    category = $('#product_category_id').val()
    # window.alert category
    $.get("/categories/find_subtypes/" + category).done (values) ->
      # window.alert "aaa"+category
      # window.alert values[0][0]
      $('#product_Type_id').empty()
      $('#product_Type_id').append '<option value=""></option>'
      $('#product_Type_id').change()
      $.each values, (idx, value) ->
        # elements.push($("<option></option>").attr("value", idx).text(value))
        # v = value.split ','
        # window.alert value[0]
        $('#product_Type_id').append $('<option>',
          value: value[0]
          text: value[1])
  return
