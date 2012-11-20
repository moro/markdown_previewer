require 'redcarpet'
require 'markdown_previewer/version'
require 'markdown_previewer/engine'

module MarkdownPreviewer
  class << self
    def renderer=(renderer)
      @renderer = normalize_renderer(renderer)
    end

    def renderer
      @renderer
    end

    private

    def normalize_renderer(r)
      return r if r.respond_to?(:call)
      return lambda {|src| r.render(src) } if r.respond_to?(:render)

      raise ArgumentError, 'renderer should respond to either call or render'
    end
  end

  self.renderer ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML)

  class App
    def call(env)
      req = Rack::Request.new(env)

      [200, {'Content-Type' => 'text/html'}, [render(req.params['src'])]]
    end

    private

    def render(src)
      ::MarkdownPreviewer.renderer.call(src)
    end
  end
end
