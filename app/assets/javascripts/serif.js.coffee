class @Serifs
  constructor: () ->
    @cleanBinding()
    @addBinding()
    $('#sby-serif-edit-modal').on 'show.bs.modal', (e) ->
      button = $(e.relatedTarget)
      text = button.data('text')
      serif_id = button.data('serif-id')
      $("form#sby-serif-form").attr("action", "/serifs/" + serif_id)
      $("input#sby-serif-edit-text").attr("value", text)

  addBinding: ->
    $(document).on "ajax:success", "#sby-serif", @deleteSuccess
    return

  cleanBinding: ->
    $(document).off "ajax:success", "#sby-serif"
    return

  deleteSuccess: (xhr, data, status, res) ->
    if res.status is 204
      $(this).parents('tr').remove()

