require 'ascii_chart/version'

module AsciiChart
  class << self
    DEFAULTS = {
      offset: 3,
      format: '%8.2f ',
      height: nil
    }

    def plot(series, options = {})
      max, min = series.max, series.min
      interval = (max - min).abs
      
      options = DEFAULTS.merge(height: interval).merge(options)
      offset = options[:offset]
      radio = options[:height].to_f / interval
      
      intmax, intmin = (max * radio).floor, (min * radio).ceil
      rows = (intmax - intmin).abs
      width = series.length + offset

      result = (0..rows).map { [' '] * width }

      (intmin..intmax).each do |y|
        label = options[:format] % (max - (((y - intmin) * interval).to_f / rows))
        result[y - intmin][[offset - label.length, 0].max] = label
        result[y - intmin][offset - 1] = y == 0 ? '┼' : '┤'
      end

      highest = (series.first * radio - intmin).to_i
      result[rows - highest][offset - 1] = '┼'

      (0...series.length - 1).each do |x|
        _curr = ((series[x + 0] * radio).round - intmin).to_i
        _next = ((series[x + 1] * radio).round - intmin).to_i

        if _curr == _next
          result[rows - _curr][x + offset] = '-'
        else
          result[rows - _curr][x + offset] = _curr > _next ? '╮' : '╯'
          result[rows - _next][x + offset] = _curr > _next ? '╰' : '╭'

          ([_curr, _next].min + 1...[_curr, _next].max).each do |y|
            result[rows - y][x + offset] = '|'
          end
        end
      end

      result.map(&:join).join("\n")
    end
  end
end
