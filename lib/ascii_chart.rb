# frozen_string_literal: true

require 'ascii_chart/version'
require 'ascii_chart/line'

module AsciiChart
  def self.plot(series, options = {})
    Line.new(series, options).plot
  end
end
