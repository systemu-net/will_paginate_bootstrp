# frozen_string_literal: true

require 'will_paginate/view_helpers/action_view'
require 'will_paginate_bootstrp/renderer'

module WillPaginate
  module ActionView
    def will_paginate(collection = nil, options = {})
      options, collection = collection, nil if collection.is_a? Hash
      collection ||= infer_collection_from_controller

      options = options.symbolize_keys
      options[:renderer] ||= WillPaginateBootstrp::Renderer
      options[:list_classes] ||= ['pagination']
      options[:previous_label] ||= WillPaginateBootstrp::Renderer::PREVIOUS_LABEL
      options[:next_label] ||= WillPaginateBootstrp::Renderer::NEXT_LABEL

      super(collection, options)
    end
  end
end
