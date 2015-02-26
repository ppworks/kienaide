# Kienaide

Protect your record.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kienaide'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kienaide

## Usage

Add protected boolean column.

```
class AddProtectedToPost< ActiveRecord::Migration
  def change
    change_column :posts, :protected, :boolean, null: false, default: false
  end
end
```

Add 'kienaide' to your class.

```
class Post < ActiveRecord::Base
  kienaide
end
```

```
post.protected = true
post.save

post.destroy
post.destroyed? # false
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/kienaide/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
