# AsciiChart

[![Travis](https://img.shields.io/travis/zhustec/ascii_chart/master.svg?style=flat-square)](https://travis-ci.com/zhustec/ascii_chart)
[![Coveralls github](https://img.shields.io/coveralls/github/zhustec/ascii_chart/master.svg?style=flat-square)](https://coveralls.io/github/zhustec/ascii_chart)
[![Gem](https://img.shields.io/gem/v/ascii_chart.svg?style=flat-square)](https://rubygems.org/gems/ascii_chart)
[![license](https://img.shields.io/github/license/zhustec/ascii_chart.svg?style=flat-square)](https://github.com/zhustec/ascii_chart/blob/master/LICENSE)

Nice-looking lightweight console ASCII line charts ╭┈╯. Port of kroitor/asciichart.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ascii_chart'
```

And then execute:

```ruby
$ bundle
```

Or install it yourself as:

``` ruby
$ gem install ascii_chart
```

## Usage

```ruby
require 'ascii_chart'

puts AsciiChart.plot(50.times.map { '%.2f' % (Random.rand * 10) })
```

Some sample cases are provided, to see them, execute:

```bash
$ rake -T sample
rake sample:1       # Output the first case
rake sample:2       # Output the second case
rake sample:3       # Output the third case
rake sample:random  # Out put a random case
```

e.g. For an random case, execute:

```bash
$ rake sample:random
```

```text
    5.00  ┼---╮                                     ╭------╮                                     ╭--
    4.00  ┤   ╰-╮                                 ╭-╯      ╰-╮                                 ╭-╯  
    3.00  ┤     ╰-╮                             ╭-╯          ╰-╮                             ╭-╯    
    2.00  ┤       ╰-╮                         ╭-╯              ╰-╮                         ╭-╯      
    1.00  ┤         ╰╮                       ╭╯                  ╰╮                       ╭╯        
    0.00  ┼          ╰╮                     ╭╯                    ╰╮                     ╭╯         
   -1.00  ┤           ╰-╮                 ╭-╯                      ╰-╮                 ╭-╯          
   -2.00  ┤             ╰╮               ╭╯                          ╰╮               ╭╯            
   -3.00  ┤              ╰-╮           ╭-╯                            ╰-╮           ╭-╯             
   -4.00  ┤                ╰--╮     ╭--╯                                ╰--╮     ╭--╯               
   -5.00  ┤                   ╰-----╯                                      ╰-----╯                  
```



```text
    9.00  ┤        ╭╮                   ╭╮                   ╭╮          ╭╮   ╭╮
    8.00  ┤  ╭╮    ||                   ||       ╭-╮  ╭╮     || ╭╮       ||   ||                ╭╮
    7.00  ┤  ||    ||                   ||   ╭╮╭╮| |  ||╭╮  ╭╯| ||  ╭╮   ||   ||                ||
    6.00  ┤  ||    ||                   ||╭╮ ||||| |  ||||  | | ||  ||╭╮ |╰-╮ ||   ╭╮           ||
    5.00  ┤╭╮||    ||                   |||| ||||| | ╭╯|||  | | || ╭╯||| |  | |╰╮  ||         ╭╮||
    4.00  ┤||||    ||                   |||╰╮||||| | | |||  | | || | ||| |  | | |  ||         ||||
    3.00  ┤||||    ||                   ||| |||||| | | |||  | | || | ||╰╮|  | | |  || ╭╮      ||||
    2.00  ┤||||    ||                 ╭╮||| |||||| | | ||| ╭╯ | || | ╰╯ ||  | | ╰╮ || ||      ||||
    1.00  ┼╯||╰-╮  ||      ╭╮         ||||| |||||| |╭╯ ||╰╮|  |╭╯| |    ||  | |  | || ||      ||||
    0.00  ┼ ╰╯  |  ||╭╮    || ╭-╮     |||╰╯ ||╰╯|| ||  || ╰╯  ╰╯ | |    ||  | |  | || ||  ╭╮  |||| ╭
   -1.00  ┤     |  ||||    || | |     |||   ||  || ||  ||        ╰╮|    ||  | |  | || ||  |╰╮ |||| |
   -2.00  ┤     |  ||||    || | |     |||   ╰╯  || ||  ||         ||    ||  | |  | ||╭╯|  | | |╰╯| |
   -3.00  ┤     |╭╮||||    || | |     |||       || ||  ||         ╰╯    ||  | |  | |╰╯ ╰-╮| | |  | |
   -4.00  ┤     |||||||╭╮  || | |     |||       || ||  ||               ╰╯  | |  | |     || | |  | |
   -5.00  ┤     ╰╯|||||||╭-╯|╭╯ |    ╭╯||       || ||  ╰╯                   | |  | |     || ╰-╯  | |
   -6.00  ┤       ||||╰╯╰╯  ||  |    | ||       ╰╯ ||                       ╰-╯  | |     ||      | |
   -7.00  ┤       ||||      ||  |╭-╮ | ╰╯          ╰╯                            | |     ||      | |
   -8.00  ┤       ╰╯╰╯      ╰╯  ╰╯ | |                                           |╭╯     ||      | |
   -9.00  ┤                        ╰-╯                                           ╰╯      ╰╯      ╰-╯
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zhustec/ascii_chart. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).