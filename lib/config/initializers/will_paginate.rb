# frozen_string_literal: true

require 'will_paginate/view_helpers/action_view'
require 'will_paginate_bootstrap/renderer'

module WillPaginate
  module ActionView
    def will_paginate(collection = nil, options = {}) #:nodoc:
      options, collection = collection, nil if collection.is_a? Hash
      collection ||= infer_collection_from_controller

      options = options.symbolize_keys
      options[:renderer] ||= WillPaginateBootstrap::Renderer
      options[:list_classes] ||= ['pagination']
      options[:previous_label] ||= WillPaginateBootstrap::Renderer::PREVIOUS_LABEL
      options[:next_label] ||= WillPaginateBootstrap::Renderer::NEXT_LABEL

      super(collection, options)
    end
  end
end