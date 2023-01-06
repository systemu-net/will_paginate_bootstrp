# will_paginate_bootstrp

[![Maintainability](https://api.codeclimate.com/v1/badges/46f6fac9a7f4b8a1ef0d/maintainability)](https://codeclimate.com/github/systemu-net/will_paginate_bootstrp/maintainability)

![Bootstrap Pagination Component](https://raw.githubusercontent.com/systemu-net/will_paginate_bootstrp/develop/pagination.png)

This gem integrates the [Twitter Bootstrap pagination component][bs] with the [will_paginate][wp] pagination gem.

## Installation

Add to your Gemfile:  

    gem 'will_paginate_bootstrp'

## Usage

```ruby
<%= will_paginate @collection %>
```

The following options are available (in addition to the options available in will_paginate):

    :list_classes = ['pagination']   # Array of classes
    :previous_label = '&larr;'       # Previous page label
    :next_label = '&rarr;'           # Next page label

For example, to place the navigation section to the center of the page, use this in your view:

    <%= will_paginate @collection, list_classes: %w(pagination justify-content-center) %>

Just like you would in the regular [will_paginate][wp].
If you've got a need to use the default will_paginate stylings, pass an option like so:

    <%= will_paginate @collection, renderer: WillPaginate::ActionView::LinkRenderer %>

This is it :rocket:

[wp]: http://github.com/mislav/will_paginate
[bs]: https://getbootstrap.com/docs/4.0/components/pagination/
