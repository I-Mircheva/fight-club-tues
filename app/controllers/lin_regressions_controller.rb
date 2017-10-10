require 'csv'
require 'linefit'

class LinRegressionsController < ApplicationController
  def find_slope_and_intercept
    x = []
    y = []

    file = params[:file]

    CSV.foreach(file.path) do |row|
      x.push($INPUT_LINE_NUMBER)
      y.push(row[0].to_f)
    end

    lineFit = LineFit.new

    lineFit.setData(x, y)

    intercept, slope = lineFit.coefficients

    render :html => '%.6f,%.6f' % [slope, intercept]
  end
end
