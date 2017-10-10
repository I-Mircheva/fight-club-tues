class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_sessions
  require 'csv'; #csv gem to parse file

  def sums
    content = params["file"].read #file contents string #params e masiv sys vsichki elementi koito idvat sys zaqvkata, kazvame sys file vyv kavichki da vzima file podaden s route
    arr = CSV.parse(content, converters: :numeric) #parse file into an array of arrays and convert them to numbers

    sum = 0
    for i in 0..arr.length - 1
          sum += arr[i][0] #for each row add the first element
       end
    render plain: "%.2f" % sum.ceil #ceil and format to 2 decimal places # render plain prosto renderva plain text # sega s curl zaqvka to vzima i dava plain text koito e readable ot curl
  end

  col = 0
      def calc
          arr = CSV.parse(params["file"].read, converters: :numeric)
          sum2 = 0;
          arr.each do |n|
              sum2 += n[col];
          end
          render plain: "%.2f" % (sum2).ceil
      end

end
