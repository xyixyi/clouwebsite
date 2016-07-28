$ = jQuery
$(document).ready ->
  
  $('#category').empty()
  $('#category').append '<option value=""></option>'
  $('#ui-id-2').empty()
  # $('#product_category_id_field').change ->
  $(document).on 'change', '#product_category_id', (event) ->
    category = $('#product_category_id').val()
    $('#ui-id-2').empty()
    # window.alert category
    $.get("/categories/find_subtypes/" + category).done (values) ->
      # window.alert "aaa"+category
      # window.alert values[0][0]
      $('#category').empty()
      $('#category').append '<option value=""></option>'
      $.each values, (idx, value) ->
        # elements.push($("<option></option>").attr("value", idx).text(value))
        # v = value.split ','
        # window.alert value[0]
        $('#category').append $('<option>',
          value: value[0]
          text: value[1])
  return
