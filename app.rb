require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @reversed = @name.reverse
    "#{@reversed}"
  end

  get "/square/:number" do
    @number = params[:number]
    @squared = @number.to_i * @number.to_i
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    @phrase * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @array = [@word1, @word2, @word3, @word4, @word5]
    "#{@array.join(" ")}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      @added = @number1 + @number2
      "#{@added}"
    elsif @operation == "subtract"
      @subtracted = @number1 - @number2
      "#{@subtracted}"
    elsif @operation == "multiply"
      @multiplied = @number1 * @number2
      "#{@multiplied}"
    elsif @operation == "divide"
      @divided = @number1/@number2
      "#{@divided}"
    end
  end
end
