# will_paginate_bootstrp

![Bootstrap Pagination Component](https://raw.githubusercontent.com/systemu-net/will_paginate_bootstrp/develop/pagination.png)

This gem integrates the [Twitter Bootstrap pagination component](https://getbootstrap.com/docs/4.0/components/pagination/) with the [will_paginate](https://github.com/mislav/will_paginate) pagination gem.

Right now only Rails is supported.
## Install

  * `gem install will_paginate-bootstrp`, *or*
  * For projects using Bundler, add `gem 'will_paginate-bootstrp', '~> 0.3.1'` to your `Gemfile` (and then run `bundle install`).

## Usage

### Rails

  1. Load the Bootstrap CSS in your template:

  2. In your view, use the `renderer: BootstrapPagination::Rails` option with the `will_paginate` helper, for example:

```ruby
<%= will_paginate @collection, renderer: WillPaginateBootstrp::Renderer %>
```

or just simply, because it is implicitly assumed to use `WillPaginateBootstrp::Renderer` by default.

```ruby
<%= will_paginate @collection %>
```

On the other hand, if You still would like to use Renderer from the [will_paginate](https://github.com/mislav/will_paginate) pagination gem, You can do so by:

```ruby
<%= will_paginate @collection, renderer: WillPaginate::ActionView::LinkRenderer %>
```

This is it :rocket:
