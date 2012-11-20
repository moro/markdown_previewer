# MarkdownPreviewer

Simple rack app to give your app 'Preview Markdown' functionality.

## Installation

Add this line to your application's Gemfile:

    gem 'markdown_previewer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install markdown_previewer

## Usage

1st app on config/routes.rb.

```
Your::Application.routes.draw do
  mount MarkdownPreviewer::App.new => '/md_preview', as: 'md_preview'
end
```

2nd, include loader javascript. (or include into precompiled asset).

```
%head
  = javascript_include_tag('markdown_previewer')
```

3rd, prepare textarea with valid data-attribute.

```
= form.text_area :body, data: {preview_url: md_preview_path, preview_target: '#preview'}
...

div#preview
```

Finally, call preview script below.

```
$('#obj_body').mdPreview()
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
