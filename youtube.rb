# With this plugin you can embed a youtube video using a simple Liquid tag, ie: {% youtube zlLElqiXS74 %}.
# Written by Andrea Margiovanni (https://www.margiovanni.com), hosted on Github:
# https://github.com/stramargio/jekyll-youtube-embed

module Jekyll
  class Youtube < Liquid::Tag
    @@width = 500
    @@height = 281

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
      %(<div class="videoWrapper"><iframe width="560" height="315" src="https://www.youtube.com/embed/#{@id}" frameborder="0" allowfullscreen></iframe></div>)
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::Youtube)