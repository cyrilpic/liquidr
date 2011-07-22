require "liquidr/version"

require "active_support"

module Liquidr
  extend ActiveSupport::Autoload
  
  autoload :LinkTo
  
end
Liquid::Template.register_tag('link_to', Liquidr::LinkTo)