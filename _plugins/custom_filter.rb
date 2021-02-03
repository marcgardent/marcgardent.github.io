# Declare module of your plugin under Jekyll module
require 'date'
module Jekyll::CustomFilter
    def inline(input)
      if input.match(/^<p>/)
        input=input.sub!(/^<p>/, '').sub!(/<\/p>$/, '')
      end
      input
    end

    def duration(from, to )
      start_date = case from
        when String then Date.strptime(from, '%Y-%m-%d')
        when Date then from
        else raise "Unable to parse date, must be Date or String of format '%Y-%m-%d'"
      end

      end_date = case to
        when String then Date.strptime(to, '%Y-%m-%d')
        when Date then to
        else raise "Unable to parse date, must be Date or String of format '%Y-%m-%d'"
      end

      days = end_date - start_date
      years=(days/365).truncate
      mounths=((days%365)/30.5).round
      ret = ""
      if years > 0 
        ret += years.to_s + " ans"
      end
      if mounths > 0 and years > 0 
        ret += " et "
      end
      if mounths > 0
        ret += mounths.to_s  + " mois" 
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::CustomFilter)
