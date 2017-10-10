Rails.application.routes.draw do
  get 'lin_regressions/find_slope_and_intercept'

  post "/lin_regressions" => "lin_regressions#find_slope_and_intercept"

  get 'intervals/find_max_sum_between_intervals'

  post "/intervals" => "intervals#find_max_sum_between_intervals"

  get 'filters/find_filtered_sum'

  post "/filters" => "filters#find_filtered_sum"

  get 'sums/find_sum'

  post "/sums" => "sums#find_sum"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
