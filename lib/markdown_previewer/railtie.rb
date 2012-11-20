module MarkdownPreviewer
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'Markodwn Previewer' do |app|
       app.config.assets.precompile += ['markdown_previewer.js']
    end
  end
end

