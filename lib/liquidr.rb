require "liquidr/version"

require "active_support"

module Liquidr
  extend ActiveSupport::Autoload
  
  autoload :LinkTo
  autoload :UrlFor
  
end
Liquid::Template.register_tag('link_to', Liquidr::LinkTo)
Liquid::Template.register_tag('url_for', Liquidr::UrlFor)