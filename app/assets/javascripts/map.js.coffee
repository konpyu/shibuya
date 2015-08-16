class @Maps
  constructor: () ->
    @cleanBinding()
    @addBinding()
    # TODO refactor
    $('#sby-map-edit-modal').on 'show.bs.modal', (e) ->
      button = $(e.relatedTarget)
      map_id = button.data('map-id')
      name   = button.data('name')
      wtiles = button.data('width-tiles')
      htiles = button.data('height-tiles')

      $("input#sby-map-edit-name").attr("value", name)
      # ドイヒー
      $("form#sby-map-form").attr("action", "/maps/" + map_id)
      $("select#sby-map-width-tiles").val(wtiles)
      $("select#sby-map-height-tiles").val(htiles)

  addBinding: ->
    $(document).on "ajax:success", "#sby-map", @deleteSuccess
    return

  cleanBinding: ->
    $(document).off "ajax:success", "#sby-map"
    return

  deleteSuccess: (xhr, data, status, res) ->
    if res.status is 204
      $(this).parents('tr').remove()

