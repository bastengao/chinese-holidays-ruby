# Chinese::Holidays

提供具有中国特色的休假安排或者工作日查询。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chinese-holidays'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chinese-holidays

## Usage

```ruby
元旦 = Date.new(2016, 1, 1)
Chinese::Holidays.is_holiday?(元旦) # true
Chinese::Holidays.is_workdingday?(元旦) # fase
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chinese-holidays. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
