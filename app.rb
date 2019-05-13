require_relative 'config/environment'

class App < Sinatra::Base
   get "/reversename/:name" do
     @name = params[:name]
     @reverse = "#{@name.reverse}"
   end

   get "/square/:number" do
       @num = (params[:number].to_i * params[:number].to_i)
      "#{@num}"
   end

   get '/say/:number/:phrase' do
       @number = params[:number].to_i
       @phrase = params[:phrase]
       @phrase * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
        @word1 = params[:word1]
         @word2 = params[:word2]
         @word3 = params[:word3]
         @word4 = params[:word4]
         @word5 = params[:word5]

 "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      @operation = params[:operation]


      if @operation == "add"
          @sum = (params[:number1].to_i + params[:number2].to_i)
                    "#{@sum}"
      elsif @operation == "subtract"
          @subs = (params[:number1].to_i - params[:number2].to_i)
                "#{@subs}"
    elsif @operation == "multiply"
        @mult = (params[:number1].to_i * params[:number2].to_i)
                "#{@mult}"
    else  @operation == "divide"
        @div = (params[:number1].to_i / params[:number2].to_i)
                "#{@div}"

        end

  end

end
