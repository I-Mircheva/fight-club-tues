require 'csv'

class FiltersController < ApplicationController
  def find_filtered_sum
    sum = 0

    file = params[:file]

    CSV.foreach(file.path) do |row|
      sum += row[1].to_f if row[2].to_f % 2 != 0
    end

    render :html => "%.2f" % sum.ceil
  end
end
