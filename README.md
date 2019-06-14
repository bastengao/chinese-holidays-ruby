# Chinese::Holidays
[![Build Status](https://travis-ci.org/bastengao/chinese-holidays-ruby.svg?branch=master)](https://travis-ci.org/bastengao/chinese-holidays-ruby) [![Code Climate](https://codeclimate.com/github/bastengao/chinese-holidays-ruby/badges/gpa.svg)](https://codeclimate.com/github/bastengao/chinese-holidays-ruby)

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
# 是否休假(含正常的周六、周日)
Chinese::Holidays.is_holiday?(元旦)     # true
# 是否是工作日(含节假日的调休)
Chinese::Holidays.is_workdingday?(元旦) # fase


# 列出已知的特殊节假日
Chinese::Holidays.all.each do |holiday|
  puts "#{holiday.name} #{holiday.days.map {|date| date.strftime('%F')}}"
end
# 元旦 ["2016-01-01", "2016-01-02", "2016-01-03"]
# ...
```

## 支持

* [支持 2019 年](http://www.gov.cn/zhengce/content/2018-12/06/content_5346276.htm) [五一假期调整](http://www.gov.cn/zhengce/content/2019-03/22/content_5375877.htm)
* [支持 2018 年](http://www.gov.cn/zhengce/content/2017-11/30/content_5243579.htm)
* [支持 2017 年](http://www.gov.cn/zhengce/content/2016-12/01/content_5141603.htm)
* 支持 2016 年.

## 参考

* http://www.gov.cn/zhengce/content/2015-12/10/content_10394.htm

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chinese-holidays. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
