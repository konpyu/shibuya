class @Mapobjects
  constructor: () ->
    @cleanBinding()
    @addBinding()
    $('#sby-mapobject-edit-modal').on 'show.bs.modal', (e) ->
      button = $(e.relatedTarget)
      mapobject_id = button.data('mapobject-id')
      movable  = if button.data('movable')  is true then "true" else "false"
      talkable = if button.data('talkable') is true then "true" else "false"
      name = button.data('name')
      $("form#sby-mapobject-form").attr("action", "/mapobjects/" + mapobject_id)
      $("input#sby-mapobject-edit-name").attr("value", name)
      $("#sby-mapobject-movable").val(movable)
      $("#sby-mapobject-talkable").val(talkable)
      console.log $("#sby-mapobject-talkable")

  addBinding: ->
    $(document).on "ajax:success", "#sby-mapobject", @deleteSuccess
    return

  cleanBinding: ->
    $(document).off "ajax:success", "#sby-mapobject"
    return

  deleteSuccess: (xhr, data, status, res) ->
    if res.status is 204
      $(this).parents('tr').remove()

