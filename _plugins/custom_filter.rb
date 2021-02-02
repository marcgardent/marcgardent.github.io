# Declare module of your plugin under Jekyll module
module Jekyll::CustomFilter
    def inline(input)
      if input.match(/^<p>/)
        input=input.sub!(/^<p>/, '').sub!(/<\/p>$/, '')
      end
      input
    end
  end
  
  Liquid::Template.register_filter(Jekyll::CustomFilter)