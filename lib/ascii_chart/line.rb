# frozen_string_literal: true

module AsciiChart
  class Line
    DEFAULTS = {
      offset: 3,
      format: '%8.2f ',
      height: nil
    }.freeze

    def initialize(series, options = {})
      @series = series
      @options = DEFAULTS.merge(options)
    end

    def plot
      max = @series.max
      min = @series.min
      interval = (max - min).abs

      @options[:height] ||= interval
      radio = @options[:height].to_f / interval
      radio = 1.0 if radio.nan? || radio == Float::INFINITY
      offset = @options[:offset]

      intmax = (max * radio).ceil
      intmin = (min * radio).floor
      rows = (intmax - intmin).abs
      width = @series.length + offset

      result = (0..rows).map { [' '] * width }

      (intmin..intmax).each do |y|
        label = @options[:format] % (max - (((y - intmin) * interval).to_f / rows))
        label = @options[:format] % y if rows == 0
        result[y - intmin][[offset - label.length, 0].max] = label
        result[y - intmin][offset - 1] = y == 0 ? '┼' : '┤'
      end

      highest = (@series.first * radio - intmin).to_i
      result[rows - highest][offset - 1] = '┼'

      (0...@series.length - 1).each do |x|
        _curr = (@series[x + 0] * radio).round - intmin
        _next = (@series[x + 1] * radio).round - intmin

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
