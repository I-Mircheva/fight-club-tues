require 'csv'

class IntervalsController < ApplicationController
  def find_max_sum_between_intervals
    file = params[:file]

    rows_count = CSV.readlines(file.path).size

    max_sum = 0

    if rows_count < 30
      CSV.foreach(file.path) do |row|
        max_sum += row[0].to_f
      end
    end

    times = 0

    while times <= rows_count - 30 do
      sum = 0

      CSV.foreach(file.path).with_index(0) do |row, i|
        next if i < times

        sum += row[0].to_f

        if i == 29 + times
          break
        end
      end

      if max_sum < sum
        max_sum = sum
      end

      times += 1
    end

    render :html => "%.2f" % max_sum.ceil
  end
end
