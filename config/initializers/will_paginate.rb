# frozen_string_literal: true

require 'will_paginate/view_helpers/action_view'

module WillPaginate
  module ActionView
    def will_paginate(collection = nil, options = {})
      options, collection = collection, nil if collection.is_a? Hash
      collection ||= infer_collection_from_controller

      options = options.symbolize_keys
      options[:renderer] ||= WillPaginateBootstrpRenderer
      options[:list_classes] ||= ['pagination']
      options[:previous_label] ||= WillPaginateBootstrp::Renderer::PREVIOUS_LABEL
      options[:next_label] ||= WillPaginateBootstrp::Renderer::NEXT_LABEL

      super(collection, options)
    end

    class WillPaginateBootstrpRenderer < LinkRenderer
      ELLIPSIS = "&hellip;" # hellip means horizontal ellipsis and is used to denote … (i.e. three dots)
      NEXT_LABEL = "&rarr;" # →
      PREVIOUS_LABEL = "&larr;" # ←

      def to_html
        html = pagination.map do |item|
          item.is_a?(Integer) ?
            page_number(item) :
            send(item)
        end.join(@options[:link_separator])

        tag(:nav, tag(:ul, html, class: @options[:list_classes].join(' ')))
      end

      def container_attributes
        super.except(*[:link_options])
      end

      protected

      def page_number(page)
        if page == current_page
          tag(:li, tag(:span, page, class: 'page-link'), class: 'page-item active')
        else
          tag(:li, link(page, page, link_options.merge(class: 'page-link', rel: rel_value(page))), class: 'page-item')
        end
      end

      def previous_or_next_page(page, text, classname)
        if page
          tag(:li, link(text, page, link_options.merge(class: classname)), class: 'page-item')
        else
          tag(:li, tag(:span, text, class: classname), class: 'page-item disabled')
        end
      end

      def gap
        tag(:li, tag(:i, ELLIPSIS, class: 'page-link'), class: 'page-item disabled')
      end

      def previous_page
        num = @collection.current_page > 1 && @collection.current_page - 1
        previous_or_next_page(num, @options[:previous_label], 'page-link')
      end

      def next_page
        num = @collection.current_page < @collection.total_pages && @collection.current_page + 1
        previous_or_next_page(num, @options[:next_label], 'page-link')
      end

      def link_options
        @options[:link_options] || {}
      end
    end
  end
end
