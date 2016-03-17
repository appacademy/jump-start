require 'byebug'

def company_performance(quarterly_projections, quarterly_profits)
  times_we_beat_projection = 0

  quarterly_projections.each_with_index do |projection, quarter|
    profit = quarterly_profits[quarter]

    if profit > projection
      times_we_beat_projection += 1
    end
  end

  return times_we_beat_projection

end


apple_projections = [10000, 25000, 8000, 30000]
apple_profits = [5000, 26000, 3000, 50000]

p company_performance(apple_projections, apple_profits)
