# Yahoojp::Api

Yahoo jp API Client, written by Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yahoojp-api', github: 'haman29/yahoojp-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yahoojp-api

## Usage

```
require 'yahoojp'
client = Yahoojp::Auction::Client.new(
           app_id: '[your app id]',
           affiliate_id: '[your affiliate id]', # not impremented
         )

res = client.category_leafs(category: 22748, page: 2)
res.has_error? # => false
res.total_count # => 30232
res.count # => 20
res.offset # => 21
res.next_page # => 3
res.items # => Array[Hash, Hash, ...]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/yahoojp-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
