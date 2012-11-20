$.fn.mdPreview = ()->

  class MarkdownPreviewer
    constructor: (textarea) ->
      @textarea = $(textarea)

    preview: ->
      $.post(
        @textarea.data('preview-url'),
        {src: @textarea.val()},
        @replacePreview
      )
      this

    replacePreview: (data) =>
      $(@textarea.data('preview-target')).html(data)

  (new MarkdownPreviewer this).preview()
