module Liquidr
  class UrlFor < Liquid::Tag
    
    def initialize(tag_name, markup, tokens)
      super
      m = markup.split(",").map(&:strip)
      @method = m.shift
      @options = m.join(", ")
    end
    
    def render(context)
      if context.registers.key? :mailer
        klass = context.registers[:mailer]
      else
        klass = ActionView::Base.new(ActionController::Base.view_paths, {})
        @method = "Rails.application.routes.url_helpers." + @method
      end
      inline = "<%= #{@method}(#{@options}) %>"
      klass.render :inline => inline, :locals => context.environments.first.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
    end
    
  end
end