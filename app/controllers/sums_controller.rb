require 'csv'

class SumsController < ApplicationController
  def find_sum
    sum = 0

    file = params[:file]

    CSV.foreach(file.path) do |row|
      sum += row[0].to_f
    end

    render :html => "%.2f" % sum.ceil
  end
end
